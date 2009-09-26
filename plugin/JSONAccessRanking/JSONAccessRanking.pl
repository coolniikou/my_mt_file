package MT::Plugin::JSONAccessRanking;
use strict;
use base qw(MT::Plugin);
use MT;
use MT::Util qw( start_end_day epoch2ts format_ts );
use XML::Simple;
use JSON;

our $VERSION = '1.0';

my $plugin; $plugin = new MT::Plugin::JSONAccessRanking({
    id => 'JSONAccessRanking',
    key => 'jsonaccessranking',
    name => 'JSONAccessRanking',
    version => $VERSION,
    description => '<MT_TRANS phrase="as_DESCRIPTION">',
    doc_link => 'http://weblibrary.s224.xrea.com/mt4plugins/jsonaccessranking/',
    author_name => '<MT_TRANS phrase="as_AUTHOR_NAME">',
    author_link => 'http://weblibrary.s224.xrea.com/',
    l10n_class => 'JSONAccessRanking::L10N',
    blog_config_template => 'analytics_config.tmpl',
    settings => new MT::PluginSettings([
        [ 'analytics_username', { Default => undef, Scope => 'blog' } ],
        [ 'analytics_password', { Default => undef, Scope => 'blog' } ],
        [ 'analytics_profile_id', { Default => undef, Scope => 'blog' } ],
        [ 'analytics_maxresult', { Default => undef, Scope => 'blog' } ],
    ]),
    registry => {
        tags => {
            function => {
                JSONAccessRanking => \&_hdlr_analyticjson,
            },
        },
    },
});
MT->add_plugin($plugin);

sub doLog {
    my ($msg) = @_; 
    return unless defined($msg);

    use MT::Log;
    my $log = MT::Log->new;
    $log->message($msg) ;
    $log->save or die $log->errstr;
}

sub _hdlr_analyticjson {
	my ($ctx, $args) = @_;
	my $blog =  $ctx->stash('blog');
	my $blog_id =  $ctx->stash('blog_id');
	my $span = $args->{span};
	my $user = $plugin->get_config_value('analytics_username', "blog:" . $blog_id);
	my $pass = $plugin->get_config_value('analytics_password', "blog:" . $blog_id);
	my $profileid = $plugin->get_config_value('analytics_profile_id', "blog:" . $blog_id);
	my $maxresult = $plugin->get_config_value('analytics_maxresult', "blog:" . $blog_id);
	my $token = get_token($user, $pass);
	
	my $now = time;
	my $today = start_end_day( epoch2ts( $blog, $now ) );
	   $today = format_ts( '%Y-%m-%d', $today, $blog );
	my $week_ago = start_end_day( epoch2ts( $blog, $now - ( 60 * 60 * 24 * 7 ) ) );
	   $week_ago = format_ts( '%Y-%m-%d', $week_ago, $blog );
	my $month_ago = start_end_day( epoch2ts( $blog, $now - ( 60 * 60 * 24 * 30 ) ) );
	   $month_ago = format_ts( '%Y-%m-%d', $month_ago, $blog );
	my $data;	
	if ( $span eq 'month' ){
		$data = get_data($token, $profileid, $month_ago, $today, $maxresult);
	doLog($data);
	} else { 
		$data = get_data($token, $profileid, $week_ago, $today, $maxresult);
	doLog($data);
       	}
	my $parser = XML::Simple->new(Forcearray => 1);
	my $xml = $parser->XMLin($data);
	my $json = to_json($xml->{entry});
	return $json;
}

sub get_token{
	my ($user, $pass) = @_;
	my $token;
	my $ua = MT->new_ua({ agent => join("/", $plugin->name, $plugin->version) });
	my $token_url = 'https://www.google.com/accounts/ClientLogin';
	my $tk_con = {
      	accountType => 'GOOGLE',
		Email => $user,
		Passwd => $pass,
		service => 'analytics',
		source => 'companyName-applicationName-versionID',
	};
	my $res = $ua->post($token_url, Content => $tk_con);
	if ($res->is_success) {
		if ( $res->content =~ /Auth\=(.+)/i ){
			return $1;
 		}
	} else {
		MT->log({
			message => $plugin->translate('Cannot get token, please confirm your settigs of Google Analytics login (as of login account or password).'). $res->status_line,
			class => 'system',
			level => MT::Log::ERROR(), 
		});
		die $plugin->translate('Cannot get token, please confirm your settigs of Google Analytics login (as of login account or password).'). $res->status_line;
	}
}

sub get_data{
	my ($token, $profileid, $start, $end, $maxresult) = @_;
	my $ua = MT->new_ua({ agent => join("/", $plugin->name, $plugin->version) });
	my $url = "https://www.google.com/analytics/feeds/data?"
		."ids=ga%3A$profileid&"
		."dimensions=ga%3ApagePath%2Cga%3ApageTitle&"
		."metrics=ga%3AuniquePageviews&"
		."sort=-ga%3AuniquePageviews&"
		."start-date=$start&"
		."end-date=$end&"
		."max-results=$maxresult";
	my @headers = (Authorization => "GoogleLogin Auth=$token");
	my $res = $ua->get($url, @headers);
	if ($res->is_success) {
		return $res->content;
	} else {
		MT->log({
			message => $plugin->translate('Cannot get contents, please confirm your settigs of Google Analytics login (as of profileID).'). $res->status_line,
			class => 'system',
			level => MT::Log::ERROR(),
		});
		die $plugin->translate('Cannot get contents, please confirm your settigs of Google Analytics login (as of profileID).'). $res->status_line;
	}
}

1;


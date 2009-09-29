package MT::Plugin::Koneta;

use strict;
use MT;
use MT::Blog;
use MT::Entry;
use MT::Log;
use MT::I18N;
use MT::Util qw( start_end_day epoch2ts format_ts );
use MT::Placement;
use MT::WeblogPublisher;
use JSON;
use MIME::Base64;
use Data::Dumper;
our $VERSION = '0.01';
our $NAME = 'Koneta';
use base qw( MT::Plugin );


my $plugin; $plugin = new MT::Plugin::Twilog({
    id => 'Koneta',
    key => 'koneta',
    description => 'FriendFeedプライベートフィードから1日のクリップ情報を抽出し、エントリとして自動で公開します。',
    name => 'Koneta',
    doc_link => 'http://weblibrary.s224.xrea.com/mt4plugins/koneta/',
    author_name => 'cool_ni_ikou',
    author_link => 'http://weblibrary.s224.xrea.com/',
    blog_config_template => 'koneta_config.tmpl',
    settings => new MT::PluginSettings([
        ['blogid',{ Default => '1' }],
        ['friendfeed_username',{ Scope => 'blog' }],
        ['friendfeed_remotekey',{ Scope => 'blog' }],
        ['friendfeed_group',{ Scope => 'blog' }],
        ['author_id',{ Default => '1', Scope => 'blog' }],
        ['category_id',{ Default => '1', Scope => 'blog' }],
        ['status', { Default => '1', Scope => 'blog' }],
        ['title', { Default => 'today tweet', Scope => 'blog' }],
    ]),
    registry => {
        tasks => {
            $NAME => {
                name        => $NAME,
                frequency   => 30, 
                code        => \&_hdlr_auto_koneta_entry,
            },
        },
    },
});
MT->add_plugin( $plugin );

sub doLog {
    my ($msg) = @_; 
    return unless defined($msg);

    use MT::Log;
    my $log = MT::Log->new;
    $log->message($msg) ;
    $log->save or die $log->errstr;
}

sub _hdlr_auto_koneta_entry {
	my $blog_id = $plugin->get_config_value('blogid');
	my $username = $plugin->get_config_value('friendfeed_username', 'blog:'.$blog_id);
	my $password = $plugin->get_config_value('friendfeed_remotekey', 'blog:'.$blog_id);
	my $group = $plugin->get_config_value('friendfeed_group', 'blog:'.$blog_id);
	my $author_id = $plugin->get_config_value('author_id', 'blog:'.$blog_id);
	my $category_id = $plugin->get_config_value('category_id', 'blog:'.$blog_id);
	my $status = $plugin->get_config_value('status', 'blog:'.$blog_id);
	my $title = $plugin->get_config_value('title', 'blog:'.$blog_id);
	my $blog;
	if ($blog_id) {
		$blog = MT::Blog->load($blog_id);
	} else {
		$blog = MT::Blog->load( undef, { limit => 1 } );
	}

	my $start = start_end_day( epoch2ts( $blog, time - ( 60 * 60 * 24 * 2) ) );
	my $ep = epoch2ts( $blog, time - ( 60 * 60 * 24));
	   $start = format_ts( '%Y-%m-%dT%H:%M:%S', $start, $blog );
	my $ago = start_end_day( epoch2ts( $blog, time - ( 60 * 60 * 24 ) ) );
	my $end = format_ts( '%Y%m%d', $ago, $blog );
	   $end =~ s/\d{2}//;
	my $date = format_ts( '%Y-%m-%d', $ago, $blog );
	   $title .= " ".$date;
	my $json = get_data($username, $password, $group);
	my @loop;
	foreach my $tex ( @{$json->{entries} } ){
		my %koneta;
		my $ts = $tex->{date};
		   $ts =~ s/(.*?)T.*?Z/$1/;
		my $com = $tex->{comments}[0]->{body};
		next unless ( $ts eq $date && defined $com ) ;
		my $b = $tex->{body};
		   $b =~ s/(.*?)\s-\s<(.*?)>.*?a>$/<p>via:<$2>$1<\/a><\/p>/o;
		   $com = '<blockquote>'. $com .'</blockquote>';
		   $koneta{LINK} = $b;
		   $koneta{QUOTE} = $com;
		push (@loop, \%koneta);
	}
	my $tmpl = $plugin->load_tmpl('koneta_body.tmpl',{ KONETA => \@loop });
	my $body = $tmpl->output();
	   $body = MT::I18N::utf8_off($body);
	unless ($body){
		
		MT->log({
			message => $NAME.'None Contents, not publish',
			blog_id => $blog->id,
			level => MT::Log::INFO(),
		});
		die;
	};
	my $entry = MT::Entry->new;
	   $entry->blog_id($blog_id);
	   $entry->author_id($author_id);
	   $entry->status($status);
	   $entry->class('entry');
	   $entry->allow_comments($blog->allow_comments_default);
	   $entry->allow_pings($blog->allow_pings_default);
	   $entry->title($title);
	   $entry->text($body);
	   $entry->save
		or die 'Error saving entry', $entry->errstr;
	my $entry_id = $entry->id;
	my $place = MT::Placement->new;
	   $place->entry_id($entry_id);
	   $place->blog_id($blog_id);
	   $place->category_id($category_id);
	   $place->is_primary(1);
	   $place->save
		or die 'Error saving placement',$place->errstr;

	my $pub = MT::WeblogPublisher->new();
	   $pub->rebuild_entry( Entry => $entry,
	    			BuildDependencies => 1,
	    			NoIndexes => 1
	    		      );
	   $pub->rebuild_indexes( Blog => $blog );

	MT->log({
		message => $NAME.': EntryID-'.$entry_id.':'. $title.' published',
		blog_id => $blog->id,
		level => MT::Log::INFO(),
	});
}

sub get_data{
	my ($username, $password, $group ) = @_;
	my $ua = MT->new_ua({ agent => join("/", $NAME, $VERSION) });
	my $url = 'http://friendfeed-api.com/v2/feed/' . $group;
	my @headers = ( Authorization => "Basic " . MIME::Base64::encode("$username:$password", ""));
	my $res = $ua->get($url, @headers);
	if ($res->is_success) {
		my $html = $res->content;
		my $json = decode_json($html);
		return $json;
	} else {
		MT->log({
			message => '情報を取得することができません。プラグイン設定画面にて、各種設定を確認してください。'. $res->status_line,
			class => 'system',
			level => MT::Log::ERROR(),
		});
		die '情報を取得することができません。プラグイン設定画面にて、各種設定を確認してください。'. $res->status_line;
	}
}
1;
__END__

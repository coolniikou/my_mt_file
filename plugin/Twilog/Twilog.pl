package MT::Plugin::Twilog;

use strict;
use MT;
use MT::Blog;
use MT::Entry;
use MT::Log;
use MT::I18N;
use MT::Util qw( start_end_day epoch2ts format_ts encode_xml);
use MT::Placement;
use MT::WeblogPublisher;

our $VERSION = '0.0.1';
our $NAME = 'Twitlog';
use base qw( MT::Plugin );


my $plugin; $plugin = new MT::Plugin::Twilog({
    id => 'Twilog',
    key => 'twilog',
    description => 'Twitlog.comから1日のtweet情報を抽出し、エントリとして自動で公開します。',
    name => 'Twilog',
    doc_link => 'http://weblibrary.s224.xrea.com/mt4plugins/jsonaccessranking/',
    author_name => 'cool_ni_ikou',
    author_link => 'http://weblibrary.s224.xrea.com/',
    l10n_class => 'Twitlog::L10N',
    blog_config_template => 'twilog_config.tmpl',
    settings => new MT::PluginSettings([
        ['twitter_username',{ Scope => 'blog' }],
        ['blogid',{ Default => '1' }],
        ['author_id',{ Default => '1', Scope => 'blog' }],
        ['category_id',{ Default => '1', Scope => 'blog' }],
        ['status', { Default => '1', Scope => 'blog' }],
        ['title', { Default => 'today tweet', Scope => 'blog' }],
    ]),
    registry => {
        tasks => {
            $NAME => {
                name        => $NAME,
                frequency   => 1, 
                code        => \&_hdlr_auto_twilog_entry,
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

sub _hdlr_auto_twilog_entry {
	my $blog_id = $plugin->get_config_value('blogid');
	my $username = $plugin->get_config_value('twitter_username', 'blog:'.$blog_id);
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
	   $start = format_ts( '%Y%m%d', $start, $blog );
	   $start =~ s/\d{2}//;
	my $ago = start_end_day( epoch2ts( $blog, time - ( 60 * 60 * 24 ) ) );
	my $end = format_ts( '%Y%m%d', $ago, $blog );
	   $end =~ s/\d{2}//;
	my $date = format_ts( '%Y-%m-%d', $ago, $blog );
	   $title .= " ".$date;
	my $body = get_data($username, $start, $end);
	   $body .= '<p>via <a href="http://twilog.org/" title="Twilog - Twitterのつぶやきをブログ形式で保存">Twilog - Twitterのつぶやきをブログ形式で保存</a></p>';

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
		or die i'Error saving placement',$place->errstr;

	my $pub = MT::WeblogPublisher->new();
	   $pub->rebuild_entry( Entry => $entry,
	    			BuildDependencies => 1,
	    			NoIndexes => 1
	    		      );
	   $pub->rebuild_indexes( Blog => $blog );

	my $log = new MT::Log;
	   $log->message ("$NAME: EntryID-$entry_id: $title published.");
            $log->blog_id ($blog->id);
            $log->level (MT::Log::INFO());
            $log->save;
}

sub get_data{
	my ($username, $start, $end ) = @_;
	my $pattern = qq/"d$end">(.*?)<a name="$start"><\/a>/;
	doLog($pattern);
	my $ua = MT->new_ua({ agent => join("/", $NAME, $VERSION) });
	my $url = 'http://twilog.org/' . $username;
		doLog($url);
	my $res = $ua->get($url);
	if ($res->is_success) {
		my $html = $res->content;
		$html =~ s/\n//g;
		if ( $html =~ /$pattern/g ){
			return $1;
		}
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

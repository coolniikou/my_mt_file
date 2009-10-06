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


my $plugin; $plugin = new MT::Plugin::Koneta({
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
                frequency   => 1, 
                code        => \&_hdlr_auto_koneta_entry,
            },
        },
    },
});
MT->add_plugin( $plugin );

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

	my $ago = start_end_day( epoch2ts( $blog, time - ( 60 * 60 * 24 ) ) );
	my $date = format_ts( '%Y-%m-%d', $ago, $blog );
	my $json = get_data($username, $password, $group);
	my $body = body_out($json, $date);
	   $title .= " ".$date;

	unless ($body){
		MT->log({
			message => $NAME.':None Contents, not publish',
			blog_id => $blog->id,
			level => MT::Log::INFO(),
		});
		die'None Contents: $!';
	};

	my @entries = overlap($blog_id, $category_id, $status, $title);
	if (@entries){
	 	MT->log({
			message => $NAME.':overlapped, not publish',
			blog_id => $blog->id,
			level => MT::Log::INFO(),
		});
		die 'overlapped, not publish: $!';
	}

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

sub body_out{
	my ($json, $date) = @_;

	my @loop;
	foreach my $item ( @{$json->{entries} } ){
		my %koneta;
		my $ts = $item->{date};
		   $ts =~ s/(.*?)T.*?Z/$1/;
		next unless ( $ts eq $date && defined ($item->{comments}) );#$ts eq $date && defined $com ) ;
		my $b = $item->{body};
		   $b =~ s/(.*?)(?:\s<(?:(?:(?!<>).)*)>|)\s-\s\<(.*?)>.*?>/<$2>$1<\/a>/g;
		if ( $item->{thumbnails} ){
			my @image;
			foreach my $p ( @{ $item->{thumbnails} } ){
				my %picture;
				   $picture{URL} = $p->{url};
				   $picture{WIDTH} = $p->{width};
				   $picture{HEIGHT} = $p->{height};
				push (@image, \%picture);
			}
			$koneta{PIC} = \@image;
		}

		if ( $item->{comments} ){
			my @quote;
			foreach my $c ( @{ $item->{comments} } ){
				my %comments;
				   $comments{BODY} = $c->{body};
				push (@quote, \%comments);
			}
			$koneta{QUOTE} = \@quote;
		}
	
		   $koneta{LINK} = $b;
		push (@loop, \%koneta);
	}
	my $tmpl = $plugin->load_tmpl('koneta_body.tmpl',{ KONETA => \@loop });
	my $body = $tmpl->output();
	   $body = MT::I18N::utf8_off($body);
	return $body;
}

sub overlap{
	my ($blog_id, $category_id, $status, $title) = @_;
	my @entries = MT::Entry->load({ 
				blog_id => $blog_id,
				status => $status,
				title => { like => $title },
				}, {
				join => [ 'MT::Placement', 'entry_id',
					{ category_id => $category_id },
					{ unique => 1 }
                                        ],
                              });
	return @entries;
}
1;
__END__

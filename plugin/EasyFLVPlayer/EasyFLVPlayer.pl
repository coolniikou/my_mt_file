package MT::Plugin::EasyFLVPlayer;

use MT;
use strict;
use base qw( MT::Plugin );
use Data::Dumper;
our $VERSION = '0.01';
our $NAME = 'EasyFLVPlayer';
 
my $plugin; $plugin =  MT::Plugin::EasyFLVPlayer->new({
    name => $NAME,
    version => $VERSION,
    description => 'EasyFLVPlyaer make it easy to embed FLV file attached JW Player in the body of articles.',
    doc_link => 'http://weblibrary.s224.xrea.com/mt4plugins/easyflv/',
    author_name => 'cool_ni_ikou',
    author_link => 'http://weblibrary.s224.xrea.com/',
	registry => {
        object_types => {
            'asset.flv'     => 'MT::Asset::FLV',
        },
        callbacks => {
            'MT::App::CMS::template_param.asset_insert'
                => \&_asset_insert,
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

sub _asset_insert {
    my ( $cb, $app, $param, $tmpl ) = @_;
    my $static_path = $app->{cfg}{__var}{staticwebpath};
        $static_path .= '/plugins/EasyFLVPlayer'; 
    my $site_url = $app->{_blog}{column_values}{site_url};
    my $upload_html = $param->{ upload_html };
    my $asset_id = $1 if ( $upload_html =~ /<form.*?mt:asset\-id="([0-9]{1,})".*?>/ );
    if ( $asset_id ) {
    	require MT::Asset;
  	my $asset = MT::Asset->load( $asset_id );
    	my $asset_class = $asset->{column_values}->{class};
    	my $asset_ext = $asset->{column_values}->{file_ext};
    	if ( $asset_class eq 'video' && $asset_ext eq 'flv' ) {
    		my $asset_label = $asset->{column_values}->{label};
    		(my $asset_url = $asset->{column_values}->{url} ) =~ s/%r\///;
    		    $asset_url = $site_url.$asset_url;
    		my $text = '';
    		   $text = sprintf(
    			'<div class="flv_movie">
    				<div class="flv_player">
    				<form mt:asset-id="%s" class="mt-enclosure mt-enclosure-video" style="display: inline;">
    				<object id="player" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" name="player" width="400" height="315">
    					<param name="movie" value="%s/player-viral.swf" />
					<param name="allowfullscreen" value="true" />
					<param name="allowscriptaccess" value="always" />
					<param name="flashvars" value="file=%s&image=%s/preview.jpg" />
					<embed 
						type="application/x-shockwave-flash"
						id="player2" 
						name="player2" 
						src="%s/player-viral.swf" 
						width="400" 
						height="315" 
						allowscriptaccess="always" 
						allowfullscreen="true" 
						flashvars="file=%s&image=%s/preview.jpg" 
					/>
				</object>
				</form>
				</div>
				<div class="flv_link>
					<a href="%s" class="link_flv" title="%s">%s</a>
				</div>
			</div>',
				$asset_id,
				$static_path,
				$asset_url,
				$static_path,
				$static_path,
				$asset_url,
				$static_path,
				$asset_url,
				$asset_label,
				$asset_label,
			);
		$upload_html = $text;					
    	}
    }
    $param->{ upload_html } = $upload_html;
}

1;
__END__


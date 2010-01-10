package MT::Asset::FLV;

use strict;
use base qw( MT::Asset );

__PACKAGE__->install_properties( { class_type => 'flv', } );

sub extensions { [ qr/flv/i ] }
sub class_label { MT->translate('FLV'); }
sub class_label_plural { MT->translate('FLV'); }

sub as_html {
    my $asset = shift;
    my ($param) = @_;
    #$param->{enclose} = 1 unless exists $param->{enclose};
    my $url = $asset->url;
    my $blog = $asset->blog;
    my $title = $asset->label;
    my $path = MT->instance->static_path;
    $path .= '/' unless $path =~ m!/$!;
    $path .= 'plugins/EasyFLVPlayer';
	my $text = '';
	$text = sprintf(
			'<div class="flv_movie">
    				<div class="flv_player">
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
			</object>',
				$path,
				$asset->url,
				$path,
				$path,
				$asset->url,
				$path,
			);
    return $param->{enclose} ? $asset->enclose($text) : $text;
}

1;

package MT::Plugin::GetEXIF;
use strict;
use MT::Plugin;
use base qw(MT::Plugin);
our $VERSION = '0.1';
use Image::ExifTool;
use MT::Template::Context;
use MT::Asset;

my $plugin = new MT::Plugin::GetEXIF({
    id => 'GetEXIF',
    key => 'exifall',
    name => 'GetEXIF',
    version => $VERSION,
    description => 'GetEXIF',
    author_name => 'apstar',
    author_link => 'http://www.mtde.info/',
});
MT->add_plugin($plugin);

sub init_registry{
    my $plugin = shift;
    $plugin->registry({
        tags => {
            function => {
                'GetEXIF' => \&_hdlr_getexif,
            },
        },
    });
    
}

my %trans;
init_trans();
sub _hdlr_getexif {
my ($ctx, $args) = @_;
my $file = $args->{filepath};
my $exif_tool = new Image::ExifTool;
my @transtag = keys %trans;
my $exif_info = $exif_tool->ImageInfo( $file, @transtag, {Duplicates => 0} );
my $out;
foreach my $key ( sort keys %$exif_info ){
	$out .= $trans{$key} . "(:" . $key . ") => " . $$exif_info{$key} . "<br/>\n";
}
return $out;
}

sub init_trans {
	open my $fh, '<', './plugins/tagtranslate.txt' or die $!;
	while ( my $tag = <$fh> ) {
	chomp ( $tag );
	my $trans_ja = <$fh>;
	chomp ( $trans_ja );
	$trans{$tag} = $trans_ja;
	}
	close ( $fh );
}
1;



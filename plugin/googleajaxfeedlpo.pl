package MT::Plusin::GoogleAjaxFeedLPO;
use strict;
use base qw( MT::Plugin );
my $DEFAULT_KEY = '*********';
my $plugin = MT::Plugin::GoogleAjaxFeedLPO->new({
	id		=> 'GoogleAjaxFeedLPO',
	key		=> 'googleajaxfeed_lpo',
	name		=> 'GoogleAjaxFeedLPO',
	blog_config_template => \&_blog_config_template,
	settings = new MT::PluginSetting([
		['google_api_key', { Default => $DEFAULT_KEY }]
	]},
});
MT->add_plugin($plugin);
sub init_registry{
	my $plugin = shift;
	$plugin->registry({
		callback => {
			'BuildPage'
				=> \&_build_page.
		},
	});
}
sub _blog_config_template{
	my $tml = <<'EOF';
	<mtapp:setting
		id="google_api_key"
		label="google_api_key">
		<input type="text" name="google_api_key" id="google_api_key"
		value="<mt:var name="google_api_key" escape="html">" />
	</mtapp:setting>
EOT
}
sub google_api_key{
	my $plugin = shift;
	my ($blog_id) = @_;
	my %plugin_param;
	$plugin->load_config(\%plugin_param, 'blog:'.$blog_id);
	my $key = $plugin_param{google_api_key};
	$key;
}
sub _build_page{
	my ($eh, %args) = @_;

	my $key = $plugin->google_api_key($args{Blog}->id);
	return if $key eq $DEFALUT_KEY;
	my $html = << "HTML";
<script type


# Mou application config
#
class mou::config($theme = '', $css = '') {
  require boxen::config

  $dir       = "/Users/${::boxen_user}/Library/Application Support/Mou"
  $cssdir    = "${dir}/CSS"
  $themesdir = "${dir}/Themes"
  $mouplist   = "/Users/${::boxen_user}/Library/Preferences/com.mouapp.Mou.plist"

  property_list_key { 'Mou Theme':
    ensure     => present,
    path       => $mouplist,
    key        => 'selectedThemeKeyString',
    value      => $theme,
    value_type => 'string',
  }
  property_list_key { 'Mou CSS':
    ensure     => present,
    path       => $mouplist,
    key        => 'selectedCSSKeyString',
    value      => $css,
    value_type => 'string',
  }
}

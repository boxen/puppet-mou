# Mou application preferences
#
class mou::preferences($theme = '', $css = '') {
  include mou::config

  property_list_key { 'Mou Theme':
    ensure     => present,
    path       => $mou::config::mouplist,
    key        => 'selectedThemeKeyString',
    value      => $theme,
    value_type => 'string',
  }
  property_list_key { 'Mou CSS':
    ensure     => present,
    path       => $mou::config::mouplist,
    key        => 'selectedCSSKeyString',
    value      => $css,
    value_type => 'string',
  }
}

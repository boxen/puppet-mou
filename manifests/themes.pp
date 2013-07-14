# Public: Themes for Mou application
#
#
# Examples
#
#   include mou::themes
class mou::themes {
  include mou::config

  file { $mou::config::dir:
    ensure => directory,
  }

  file { $mou::config::cssdir:
    ensure => directory,
    source => 'puppet:///modules/mou/CSS',
    purge  => false
  }
  file { $mou::config::themesdir:
    ensure => directory,
    source => 'puppet:///modules/mou/Themes',
    purge  => false
  }
}
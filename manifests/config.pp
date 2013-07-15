# Mou application config
#
class mou::config {
  include boxen::config

  $dir       = "/Users/${::boxen_user}/Library/Application Support/Mou"
  $cssdir    = "${dir}/CSS"
  $themesdir = "${dir}/Themes"
  $mouplist   = "/Users/${::boxen_user}/Library/Preferences/com.mouapp.Mou.plist"
}

# Mou application config
#
class mou::config {
  require boxen::config

  $dir       = "/Users/${::boxen_user}/Library/Application Support/Mou"
  $cssdir    = "${dir}/CSS"
  $themesdir = "${dir}/Themes"
}

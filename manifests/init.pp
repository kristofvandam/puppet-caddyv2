# Main class to install caddyv2
class caddyv2 (
  Stdlib::HTTPSUrl $download_path = $caddyv2::params::download_path,
  Stdlib::Unixpath $install_path  = $caddyv2::params::install_path
) inherits caddyv2::params {
  contain 'caddyv2::package'

  Class['caddyv2::package'] # -> Class['caddyv2::config'] ~> Class['caddyv2::service']
}
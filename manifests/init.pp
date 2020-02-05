# Main class to install caddyv2
class caddyv2 (
  Stdlib::HTTPSUrl $download_path
) {
  contain 'caddyv2::package'

  Class['caddyv2::package'] # -> Class['caddyv2::config'] ~> Class['caddyv2::service']
}
# Install caddyv2
class caddyv2::package (
  Stdlib::HTTPSUrl $download_path = $caddyv2::params::download_path
  Stdlib::Unixpath $install_path  = $caddyv2::params::install_path
) {
  archive { $install_path:
    source => $download_path,
    user   => 0,
    group  => 0,
  }
}
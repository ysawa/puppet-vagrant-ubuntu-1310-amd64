class mosh::install {

  $packages = ['mosh']
  package { $packages:
    ensure => installed,
  }
}

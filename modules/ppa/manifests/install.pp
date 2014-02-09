class ppa::install {

  $packages = [
    'python-software-properties',
    'software-properties-common',
  ]
  package { $packages:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

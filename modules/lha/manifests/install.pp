class lha::install {

  $lha = [
    'lha',
  ]
  package { $lha:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

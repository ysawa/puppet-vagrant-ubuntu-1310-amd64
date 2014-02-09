class ghc::install {

  $ghc = [
    'ghc',
    'ghc-prof',
    'ghc-doc',
  ]
  package { $ghc:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

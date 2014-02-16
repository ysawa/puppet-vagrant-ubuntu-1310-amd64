class ghc::install {

  $ghc = [
    'ghc',
    'ghc-prof',
    'ghc-doc',
    'cabal-install',
  ]
  package { $ghc:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

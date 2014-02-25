class ghc::install {

  $ghc = [
    'ghc',
    'ghc-prof',
    'ghc-doc',
    'cabal-install',
    'haskell-platform',
  ]
  package { $ghc:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

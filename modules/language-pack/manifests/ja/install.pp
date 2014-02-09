class language-pack::ja::install {

  $packages = [
    'language-pack-ja',
  ]
  package { $packages:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

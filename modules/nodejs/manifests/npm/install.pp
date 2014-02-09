class nodejs::npm::install {

  $packages = [
    'npm',
  ]
  package { $packages:
    require => [
      # in order to install node.js
      Class['nodejs::install'],
    ],
    ensure => installed,
  }
}

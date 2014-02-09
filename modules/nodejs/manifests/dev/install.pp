class nodejs::dev::install {

  $packages = [
    'nodejs-dev',
  ]
  package { $packages:
    require => [
      # in order to install node.js
      Class['nodejs::install'],
    ],
    ensure => installed,
  }
}

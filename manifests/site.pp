
node default {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update -y',
  }
  exec { 'apt-get upgrade':
    require => [
      Exec['apt-get update'],
    ],
    command => '/usr/bin/apt-get upgrade -y',
  }
  include hosts
  include fonts
  include ppa
  include essentials
  include logrotate
  include ssl
  include php5
  include nginx::install
  include graphicsmagick
  include redis
  include mongodb::install
  include vim
  include emacs
  # include nagios
  include munin::node
  include dovecot
  include postfix
  include rvm
  include mosh
  include nodejs
  include munin::install
  include nginx::config::default
  # include ptetex3 # TODO
  # include lha # TODO
  include language-pack::ja::install
  include ghc
  include ufw
  include security

  ssl::cert { 'server':
  }
}

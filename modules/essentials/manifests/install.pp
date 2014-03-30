class essentials::install {

  $essentials = [
    'build-essential', 'automake', 'autoconf',
    'curl', 'bash',
    'gettext', 'gettext-base',
    'libxslt1.1', 'libxslt-dev', 'libxml2', 'libxml2-dev', 'libssl-dev', 'libffi-dev', 'libsqlite3-dev', 'libreadline6-dev', 'libgd2-xpm-dev',
#    'libiconv', 'libiconv-dev',
    'libyaml-dev', 'sqlite3', 'libgdbm-dev', 'libncurses5-dev', 'libtool',
    'git-core', 'subversion', 'mercurial'
    'lv',
    'unzip',
    'flex', 'bison',
    'default-jdk',
    'default-jdk-doc',
    'default-jre',
    'zlibc',
  ]
  package { $essentials:
    require => [
      Exec['apt-get update'],
    ],
    ensure => installed,
  }
}

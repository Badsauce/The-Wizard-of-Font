class { 'nodejs':
  version => 'stable',
  make_install => false,
}

package { 'sails':
  ensure   => present,
  provider => 'npm',
  require  => Class['nodejs']
}

exec { 'sails-depends' :
      cwd => '/vagrant',
      command => 'npm install',
      require => Package['sails'],
      path => ['/usr/local/node/node-default/bin/','/usr/bin/',"/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"],
  }

package { 'ruby-dev':
        ensure => installed,
}

package { 'compass':
  ensure => 'installed',
  provider => 'gem',
  require => Package['ruby-dev'],
}

package { 'autoprefixer-rails':
  ensure => 'installed',
  provider => 'gem',
  require => Package['ruby-dev'],
}

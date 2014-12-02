Exec{
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
 }

include nodejs

exec { "sym-link-node" :
      cwd => "/vagrant",
      command => "sudo ln -s /usr/bin/nodejs /usr/bin/node",
      require => Package['nodejs'],
  }

package { 'sails':
  ensure   => present,
  provider => 'npm',
  require => Package['nodejs'],
}

exec { 'sails-depends' :
      cwd => '/vagrant',
      command => 'sudo npm install',
      require => Package['sails'],
  }

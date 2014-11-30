include nodejs

package { 'sails':
  ensure   => present,
  provider => 'npm',
}

# Raise Nginx open file limit and restart service cleanly
exec { 'fix--for-nginx':
  command => '/bin/bash -c "sed -i \"s/#* *ULIMIT=.*/ULIMIT=\\\"-n 4096\\\"/\" /etc/default/nginx; service nginx restart"',
  path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
}

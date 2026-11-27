# Increase OS open file limits and restart Nginx so high-concurrency ab requests succeed
exec { 'fix--for-nginx':
  command => '/bin/bash -c "sed -i \"s/ulimit -n .*/ulimit -n 4096/\" /etc/default/nginx && service nginx restart"',
  path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
}

# Raise Nginx open file limit and restart service cleanly
exec { 'fix--for-nginx':
  command => '/bin/bash -c "sed -i \"s/#* *ULIMIT=.*/ULIMIT=\\\"-n 4096\\\"/\" /etc/default/nginx; ' +
             'grep -q \"ulimit -n\" /etc/default/nginx || echo \"ulimit -n 4096\" >> /etc/default/nginx; ' +
             'service nginx stop; pkill -9 nginx || true; service nginx start"',
  path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
}

# Manifest that increases traffic to test an Nginx server

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

-> exec { 'nginx-restart':
  command => 'service nginx restart',
  path    => '/etc/init.d/'
}

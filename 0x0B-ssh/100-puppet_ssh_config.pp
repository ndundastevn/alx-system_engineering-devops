# config file .io

include stdlib

file_line { 'Resuse authentication using passwords':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Only use Private key for passwordless authentication':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school'
}
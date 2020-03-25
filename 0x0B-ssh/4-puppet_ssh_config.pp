# make changes to our SSH client configuration file

file_line {'Identity_File':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/holberton',
}

file_line {'Password_Authentication':
  ensure => present,
  path   => '/etc/ssh/config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication yes',
}

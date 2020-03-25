# make changes to our SSH client configuration file

file_line {'IdentityFile':
  ensure => present,
  path   => '~/.ssh/config',
  line   => 'IdentityFile ~/.ssh/holberton',
}

file_line {'PasswordAuthentication':
  ensure => present,
  path   => '~/.ssh/config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication yes',
}

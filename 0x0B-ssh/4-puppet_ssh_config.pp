# make changes to our SSH client configuration file

file_line {'SSH_conf_file':
  ensure => present,
  path   => '~/.ssh/config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication yes',
}

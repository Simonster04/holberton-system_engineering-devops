# make changes to our SSH client configuration file

file_line {'SSH_conf_file':
  ensure => absent,
  path => '~/.ssh/config',
  line => 'PasswordAuthentication no',
  match_for_absence => true,
}

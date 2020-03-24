# make changes to our SSH client configuration file

exec {'SSH_conf_file':
  command => 'echo "    PasswordAuthentication no" >> ~/.ssh/config',
}

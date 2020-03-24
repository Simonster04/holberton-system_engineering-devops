# make changes to our SSH client configuration file

ssh::sshd_config_match:
  'User Ubuntu':
    - 'AllowTcpForwarding yes'
  'Address 104.196.213.138':
    - 'PasswordAuthentication no'


#Change the OS configuration so that it is possible to login
#with the holberton user and open a file without any error message

exec {'change-os-configuration-for-holberton-user':
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  command => "sed -i 's/hard nofile 4/hard nofile 999999/g' /etc/security/limits.conf && sed -i 's/soft nofile /soft nofile 999999/g' /etc/security/limits.conf",
}

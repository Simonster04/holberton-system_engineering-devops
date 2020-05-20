#Fixing a 500 error in a server after using 'strace' command
#'curl' and 'tmux' were really helpful

exec {'fixing_500':
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
}

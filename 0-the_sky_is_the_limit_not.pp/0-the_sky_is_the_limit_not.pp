#Fixing failed requests when ab
#by adding more worker processes

exec {'adding_more_worker_processes':
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  command => "sed -i 's/worker_processes 4/worker_processes 40/g' /etc/nginx/nginx.conf && service nginx restart",
}

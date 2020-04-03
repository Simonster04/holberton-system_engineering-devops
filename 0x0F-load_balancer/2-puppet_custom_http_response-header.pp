#Puppet: creating a custom HTTP header response
#   The name of the custom HTTP header must be
#   Value of the header is the hostname of the server Nginx running on

exec {'http_header':
  command  => "apt-get -y update && apt-get -y install nginx && sed -i '19i add_header X-Served-By $HOSTNAME;' /etc/nginx/nginx.conf && service nginx restart && service nginx reload",
  provider => 'shell',
}

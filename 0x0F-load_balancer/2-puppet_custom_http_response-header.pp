#Puppet: creating a custom HTTP header response
#   The name of the custom HTTP header must be
#   Value of the header is the hostname of the server Nginx running on

exec {'http_header':
  command  => "apt-get -y update && apt-get -y install nginx && echo 'Holberton School' | sudo tee /var/www/html/index.nginx-debian.html && sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-available/default && sed -i '19i $\\\tadd_header X-Served-By $HOSTNAME;' /etc/nginx/sites-available/default && service nginx restart && service nginx reload",
  provider => 'shell',
}

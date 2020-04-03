#Puppet: creating a custom HTTP header response
#   The name of the custom HTTP header must be
#   Value of the header is the hostname of the server Nginx running on

exec {'http_header':
  command  => "sudo apt-get -y update && sudo apt-get -y install nginx && echo 'Holberton School' | sudo tee /var/www/html/index.nginx-debian.html && sudo sed -i '/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-available/default && sudo sed -i '19i $\\\tadd_header X-Served-By $HOSTNAME;' /etc/nginx/sites-available/default && sudo service nginx restart && sudo service nginx reload",
  provider => 'shell',
}

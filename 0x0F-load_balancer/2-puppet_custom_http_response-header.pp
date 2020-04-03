#Puppet: creating a custom HTTP header response
#   The name of the custom HTTP header must be
#   Value of the header is the hostname of the server Nginx running on

exec {'http_header':
  command  => 'sudo apt-get -y update && sudo apt-get -y install nginx && echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html && sudo sed -i "19i $\\\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default && echo "Ceci n'est pas une page" | sudo tee /usr/share/nginx/html/custom_404.html && sudo sed -i "/server_name _;/a $\\\terror_page 404 /custom_404.html;\n\tlocation = /custom_404.html {\n\t\troot /usr/share/nginx/html;\n\t\tinternal;\n\t}" /etc/nginx/sites-available/default && sudo sed -i "19i $\\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default && sudo service nginx restart && sudo service nginx reload',
  provider => 'shell',
}

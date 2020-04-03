#Puppet: creating a custom HTTP header response
#   The name of the custom HTTP header must be
#   Value of the header is the hostname of the server Nginx running on

exec {'http_header':
  command  => "sudo apt-get -y update && sudo apt-get -y install nginx && sudo service nginx start && sudo sed -i '19i \\\tadd_header X-Served-By $hostname;' /etc/nginx/sites-available/default && sudo service nginx restart && sudo service nginx reload",
  provider => 'shell',
}

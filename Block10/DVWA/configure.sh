#!/usr/bin/bash

docker exec dvwa sed -i 's/allow_url_include = Off/allow_url_include = On/g' /etc/php/7.0/apache2/php.ini 
docker exec dvwa /etc/init.d/apache2 reload
docker exec dvwa apt-get update
docker exec dvwa apt-get install netcat -y
#! /usr/bin/env bash

sudo cat /etc/nginx/sites-available/default | head -n 21 > /home/luca/default

echo "  listen 8081 default_server;" >> /home/luca/default
echo "  listen [::]:8081 default_server;" >> /home/luca/default

sudo cat /etc/nginx/sites-available/default | tail -n $((91 - 24)) >> /home/luca/default

sudo cp /home/luca/default /etc/nginx/sites-available/default 

rm -rf /home/luca/default 

sudo systemctl start nginx 
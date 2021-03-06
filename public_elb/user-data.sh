#!/bin/bash
sudo amazon-linux-extras install nginx1
sudo mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index-orig.html
echo "hello chinmoy" > /usr/share/nginx/html/index.html
sudo service nginx start

#!/bin/bash
sudo su
yum install update -y
yum install -y httpd
cd /var/www/html
wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip
unzip neogym.zip download
cp -r /var/www/html/neogym.zip
rm -rf neogym.zip 
systemctl enable httpd
system start httpd
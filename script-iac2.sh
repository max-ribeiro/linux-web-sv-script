#!/bin/bash
echo "Web Server Setup"

echo "updating... 1/5"

apt-get update
apt-get upgrade -y

echo "installing applications... 2/5"
apt-get install apache2 -y
apt-get install unzip -y

echo "downloading site content... 3/5"
cd /tmp
wget 'https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip'

echo "unpacking file... 4/5"
unzip main.zip

echo "moving files... 5/5"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Done."

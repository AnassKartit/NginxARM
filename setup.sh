#!/bin/bash

#setup
sudo -s
yum -y install update
yum -y update
yum -y install epel-release


# install nginx, update config file
sudo yum -y install nginx
#sudo wget <config file path> -O /etc/nginx
systemctl start nginx
systemctl enable nginx
systemctl status nginx



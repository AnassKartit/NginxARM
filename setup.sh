#!/bin/bash

#setup
sudo -s
yum install update
yum -y update
yum install epel-release


# install nginx, update config file
sudo yum install nginx
#sudo wget <config file path> -O /etc/nginx
systemctl start nginx
systemctl enable nginx
systemctl status nginx



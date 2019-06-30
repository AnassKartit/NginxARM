#!/bin/bash

#setup
yum -y install update
yum -y update
yum -y install epel-release


# install nginx, update config file
yum -y install nginx
#sudo wget <config file path> -O /etc/nginx
systemctl start nginx
systemctl enable nginx
systemctl status nginx
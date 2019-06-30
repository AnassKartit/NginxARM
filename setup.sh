#!/bin/bash

#setup
sudo -s
yum install update
yum -y update
yum install epel-release


# install nginx, update config file
sudo yum install nginx
chmod 0777 nginx
sudo wget <config file path> -O /etc/nginx
chmod 0755 nginx
systemctl start nginx
systemctl enable nginx
systemctl status nginx


#https://docs.microsoft.com/en-us/azure/storage/blobs/storage-how-to-mount-container-linux

# mount blob storage
sudo rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm
sudo yum install blobfuse fuse
sudo mkdir /mnt/resource/blobfusetmp -p
sudo chown localadmin /mnt/resource/blobfusetmp

sudo blobfuse /etc/nginx/share --tmp-path=/mnt/resource/blobfusetmp  --config-file=/root/fuse_connection.cfg -o attr_timeout=240 -o entry_timeout=240 -o negative_timeout=120

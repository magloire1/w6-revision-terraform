#!/bin/bash

echo "Severs update please wait ..."

sudo yum update -y
echo "Installing packages these might take some time please be patient ..."
sudo yum install wget -y
sudo yum install tar -y
sudo yum install git -y
sudo yum install samba -y
sudo groupeadd ansible
sudo useradd -g ansible ansdeploy
sudo mkdir /opt/deploy/*.xz
sudo wget -P /opt/deploy http://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.tar.xz
sudo tar -xvf /opt/deploy/*.xz
sudo rm -rf /opt/deploy/*.xz
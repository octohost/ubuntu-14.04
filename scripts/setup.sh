#!/bin/bash

# Update all packages.
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update
sudo apt-get -y upgrade

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
sudo touch /root/.locale-fixed
sudo /usr/sbin/update-locale

sudo apt-get install -y curl

# Install Chef
curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -v 11.16.4

# Install Ansible
sudo apt-get install -y ansible

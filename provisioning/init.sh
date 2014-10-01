#!/bin/sh
sudo apt-get -yq install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -yq update
sudo apt-get -yq install ansible
sudo apt-get -yq install python-mysqldb
sudo apt-get -yq install libnotify-bin

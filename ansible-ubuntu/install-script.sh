#!/bin/bash

echo "Making sure old ansible is removed"
sudo apt -y remove ansible

echo "installing python"
sudo apt -y install python python3-pip

echo "installing ansible"
sudo pip3 install ansible


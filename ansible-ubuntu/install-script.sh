#!/bin/bash

## currently works for Ubuntu 16.04 -- maybe adapt for Arch in the future
  echo "Making sure old ansible is removed"
  sudo apt -y remove ansible
  echo "installing some python dependencies"
  sudo apt -y install python-setuptools python-dev build-essential libssl-dev libffi-dev
  echo "installing pip"
  sudo easy_install pip
  echo "installing ansible"
  sudo pip install ansible


#!/bin/bash

## currently works for Ubuntu 16.04 -- maybe adapt for Arch in the future
cat /etc/*-release | grep Xenial;
IS_XENIAL=$?;

if [ $IS_XENIAL -eq 0 ]
then
  echo "Making sure old ansible is removed"
  sudo apt -y remove ansible
  echo "installing some python dependencies"
  sudo apt -y install python-setuptools python-dev build-essential libssl-dev libffi-dev
  echo "installing pip"
  sudo easy_install pip
  echo "installing ansible"
  sudo pip install ansible
else
  echo "Ubuntu Xenial (16.04) required"
fi


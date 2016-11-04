#!/bin/bash

## currently works for Ubuntu 16.04 -- maybe adapt for Arch in the future
cat /etc/*-release | grep Xenial;
IS_XENIAL=$?;

if [ $IS_XENIAL -eq 0 ]
then
  sudo apt -y remove ansible
  sudo apt -y install python-setuptools python-dev build-essential
  sudo easy_install pip
  sudo pip install ansible
else
  echo "Ubuntu Xenial (16.04) required"
fi


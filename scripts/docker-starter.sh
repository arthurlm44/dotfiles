#!/bin/bash

REPO_NAME="$1"

if [ "$2" == "start" ]
then
  cd /home/arthur/workspace/$REPO_NAME/
  docker-compose up
elif [ "$2" == "stop" ]
then
  cd /home/arthur/workspace/$REPO_NAME/
  docker-compose stop
else
  echo "error"
  exit 1
fi

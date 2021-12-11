#!/usr/bin/env bash

cd `dirname $BASH_SOURCE`

sudo docker-compose stop
sudo docker-compose rm -f
sudo docker-compose pull
sudo docker-compose up -d

cd - > /dev/null
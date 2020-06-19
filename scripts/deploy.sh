#!/bin/sh

docker-compose stop
git pull https://github.com/Arceoavs/camunda.git master
docker-compose up
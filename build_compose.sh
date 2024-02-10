#!/bin/bash

docker-compose down
docker rm -fv $(docker ps -aq)
docker rmi nginx:latest
docker rmi mysite:latest
docker compose up

#! /bin/bash

# Removes all images
docker rmi -f $(docker images -aq)

# Removing all containers
docker rm -vf $(docker ps -aq)

docker build -t flask-app /Jenkins/003-Basic_pipeline 
docker run -d --network task-1 --name flask-app flask-app
docker run -d -p 80:80 --network --mount type=bind,source=$(pwd)/Jenkins/003-Basic_pipeline/nginx.conf,target=/etc/nginx/nginx.conf task-1 nginx
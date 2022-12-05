#! /bin/bash

# Create my Docker network
# docker network create new-network

# Create my docker volume
# docker volume create db_data

# Make Dockerfiles (Flask-app, MySQL) and change files

# docker build -t db-layer ./db
# docker build -t app-layer ./flask-app

# Run our containers
docker run -d --network new-network --mount type=volume,source=db_data,target=/var/lib/mysql --name mysql db-layer
docker run -d --network new-network --name flask-app app-layer
docker run -d --network new-network --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf -p 80:80 --name nginx-layer nginx
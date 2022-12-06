#! /bin/bash

cd task1
docker-compose up -d 
sleep 6
curl localhost
docker-compose down
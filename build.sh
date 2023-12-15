#!/bin/bash
#login into dockerhub:
docker login -u $DOCKER_USER -p $DOCKER_PASS

#building the image:
docker build -t nodejs:web .
docker images

#stopping the already running container:
docker stop nodejs
docker rm nodejs

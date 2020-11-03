#!/bin/bash
# Connexion à Docker
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
# Build
docker build -t $DOCKER_USERNAME/tp-devops:tp2_simple_api simple-api
docker build -t $DOCKER_USERNAME/tp-devops:tp2_httpd httpd
docker build -t $DOCKER_USERNAME/tp-devops:tp2_database database
# Publication des images
docker push $DOCKER_USERNAME/tp-devops:tp2_simple_api
docker push $DOCKER_USERNAME/tp-devops:tp2_httpd
docker push $DOCKER_USERNAME/tp-devops:tp2_database
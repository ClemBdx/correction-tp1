#!/bin/bash
# Connexion à Docker
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
# Build
docker build -t $DOCKER_USERNAME/tp-devops .
# Publication des images
docker push $DOCKER_USERNAME/tp-devops
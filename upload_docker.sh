#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
#dockerpath=<your docker ID/path>
dockerpath=jainprg/udacity-microservices
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="jainprg"
docker login
docker tag udacity-microservices $DOCKER_ID_USER/udacity-microservices
docker push $DOCKER_ID_USER/udacity-microservices

# Step 3:
# Push image to a docker repository
docker push jainprg/udacity-microservices

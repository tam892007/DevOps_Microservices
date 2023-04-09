#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tam892007/ml-prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag ml-prediction "$dockerpath:latest"

# Step 3:
# Push image to a docker repository
docker push tam892007/ml-prediction:latest

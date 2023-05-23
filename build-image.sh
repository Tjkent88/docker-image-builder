#!/bin/bash

# Variables
REPO_URL="$1"
IMAGE_NAME="$2"
DOCKERHUB_USERNAME="tjkent88"

# Clone the repository
git clone $REPO_URL ~tkent/tmp/
cd ~tkent/tmp/

# Get the current date and time
DATE=$(date +%Y%m%d%H%M%S)

# Confirm docker is logged in
docker login

# Build the Docker image
docker build -t $DOCKERHUB_USERNAME/$IMAGE_NAME:$DATE .

# Push the Docker image with the date tag
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:$DATE

# Tag the Docker image as latest
docker tag $IMAGE_NAME:$DATE $DOCKERHUB_USERNAME/$IMAGE_NAME:latest

# Push the Docker image to Docker Hub
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:latest

# Clean up
cd ..
rm -rf ~tkent/tmp

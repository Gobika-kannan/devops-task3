#!/bin/bash

IMAGE_NAME=gobikaka/react-dev:latest

echo "Stopping old container..."
docker stop react-app || true
docker rm react-app || true

echo "Running new container..."
docker run -d \
--name react-app \
-p 80:80 \
$IMAGE_NAME

echo "Deployment Completed"

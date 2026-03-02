#!/bin/bash

IMAGE_NAME=gobikaka/react-dev:latest

echo "Building Docker Image..."
docker build -t $IMAGE_NAME .

echo "Build Completed"

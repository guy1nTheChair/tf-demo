#!/bin/bash

# Update repo
sudo apt-get update -y

# Install docker
sudo apt-get install docker.io -y

# Add ubuntu to docker users group
sudo usermod -aG docker ubuntu

# Start docker service
sudo service docker start

#Download and run API as docker container
docker run -d -p 8080:8080 guyinthechair/sb-terraform-demo:latest
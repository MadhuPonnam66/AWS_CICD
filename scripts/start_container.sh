#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull madhudev66/pythonapp

# Run the Docker image as a container
docker run -d -p 5000:5000 madhudev66/pythonapp

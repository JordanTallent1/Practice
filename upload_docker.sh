#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=project5

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./my_password.txt| docker login --username jtallent2019 --password-stdin
docker tag project5 jtallent2019/project5:version1.0

# Step 3:
docker push jtallent2019/project5

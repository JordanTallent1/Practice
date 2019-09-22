#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=project5

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat $var_docker_password| docker login --username jtallent2019 --password-stdin
docker tag capstone jtallent2019/capstone:version1.0

# Step 3:
docker push jtallent2019/capstone

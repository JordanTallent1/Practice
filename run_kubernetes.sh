#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jtallent2019/capstone

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run test3 --image=jtallent2019/capstone:trying_again --port=80 


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/test3-8555b66597-sqrm5 8000:80

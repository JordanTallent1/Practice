#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
echo"hello world"

# Step 1:
docker build --tag=capstone .

# Step 2: 
echo"$(docker image ls)"

# Step 3: 
# docker run -it -p 8000:80 capstone

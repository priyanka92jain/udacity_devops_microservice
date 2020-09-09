#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

# Step 2: 
# List docker images

# Step 3: 
# Run flask app
#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f Dockerfile . -t udacity-microservices --label udacity-microservices
# Step 2:
# List docker images
docker image ls --filter label=udacity-microservices
# Step 3:
# Run flask app
docker run -it -p 8000:80 udacity-microservices

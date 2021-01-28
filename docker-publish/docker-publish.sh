#!/bin/sh -e

DOCKER_REGISTRY=$1
DOCKER_USERNAME=$2

# Prepare image identifier
image_identifier="$DOCKER_REGISTRY/$DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_VERSION"

docker build -t "$image_identifier" . || {
  echo "Failed to build"
  exit 1
}

docker push "$image_identifier" || {
  echo "Failed to push"
  exit 1
}

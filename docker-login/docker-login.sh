#!/bin/sh -e

DOCKER_REGISTRY=$1
DOCKER_USERNAME=$2
DOCKER_PASSWORD=$3

echo "$DOCKER_PASSWORD" | docker login "$DOCKER_REGISTRY" --username "$DOCKER_USERNAME" --password-stdin

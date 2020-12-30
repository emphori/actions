#!/bin/bash

set -x

SSH_PRIVATE_KEY=$1
SSH_KNOWN_HOSTS=$2

mkdir -p ~/.ssh

# Write the private key to disk
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa

# If supplied, setup the known hosts
if [ ! -z "$SSH_KNOWN_HOSTS" ]; then
  echo "$SSH_KNOWN_HOSTS" >> ~/.ssh/known_hosts
fi

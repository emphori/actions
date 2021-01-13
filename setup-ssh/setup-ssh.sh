#!/bin/sh -e

SSH_PRIVATE_KEY=$1
SSH_KNOWN_HOSTS=$2

mkdir -p ~/.ssh

# Write the private key to disk with correct permissions
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

# If supplied, setup the known hosts
if [ -n "$SSH_KNOWN_HOSTS" ]; then
  echo "$SSH_KNOWN_HOSTS" >> ~/.ssh/known_hosts
fi

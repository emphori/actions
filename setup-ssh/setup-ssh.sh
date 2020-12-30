#!/bin/bash

SSH_PRIVATE_KEY=$0
SSH_KNOWN_HOSTS=$1

# Add the key to the SSH agent
ssh-add - <<< $SSH_PRIVATE_KEY

# If supplied, setup the known hosts
if [ ! -z "$SSH_KNOWN_HOSTS" ]; then
  mkdir -p ~/.ssh
  echo $SSH_KNOWN_HOSTS >> ~/.ssh/known_hosts
fi

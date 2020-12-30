#!/bin/bash

SSH_PRIVATE_KEY=$1
SSH_KNOWN_HOSTS=$2

mkdir -p ~/.ssh

# Start the SSH agent and expose SSH_AUTH_SOCK and SSH_AGENT_PID
eval `ssh-agent -s`

# Add the key to the SSH agent
ssh-add - <<< $SSH_PRIVATE_KEY

# If supplied, setup the known hosts
if [ ! -z "$SSH_KNOWN_HOSTS" ]; then
  echo $SSH_KNOWN_HOSTS >> ~/.ssh/known_hosts
fi

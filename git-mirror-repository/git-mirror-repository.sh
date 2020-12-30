#!/bin/bash

set -x

GIT_MIRROR_SOURCE_URL=$1
GIT_MIRROR_REMOTE_URL=$2

git clone --mirror ${GIT_MIRROR_SOURCE_URL} target_dir

if [ $? -ne 0 ]; then
  echo "Failed to checkout source repository"
  exit 1
fi

cd target_dir
git push --mirror ${GIT_MIRROR_REMOTE_URL}

if [ $? -ne 0 ]; then
  echo "Failed to push mirror repository"
  exit 1
fi

#!/bin/sh -e

GIT_MIRROR_SOURCE_URL=$1
GIT_MIRROR_REMOTE_URL=$2

if ! git clone --mirror "$GIT_MIRROR_SOURCE_URL" target_dir; then
  echo "Failed to checkout source repository"
  exit 1
fi

cd target_dir || {
  echo "Failed to enter cloned repository"
  exit 1
}

if ! git push --mirror "$GIT_MIRROR_REMOTE_URL"; then
  echo "Failed to push mirror repository"
  exit 1
fi

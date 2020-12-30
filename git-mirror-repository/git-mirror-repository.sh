#!/bin/bash

set -x

GIT_MIRROR_SOURCE_URL=$1
GIT_MIRROR_REMOTE_URL=$2

git clone --mirror ${GIT_MIRROR_SOURCE_URL}
git push --mirror ${GIT_MIRROR_REMOTE_URL}

#!/bin/bash

set -x

GIT_MIRROR_REMOTE_URL=$1

git push --mirror ${GIT_MIRROR_REMOTE_URL}

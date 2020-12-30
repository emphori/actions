#!/bin/bash

set -x

GIT_MIRROR_REMOTE_URL=$1

# Strip out GitHub specific refs
git for-each-ref --format 'delete %(refname)' refs/pull | git update-ref --stdin

git push --mirror ${GIT_MIRROR_REMOTE_URL}

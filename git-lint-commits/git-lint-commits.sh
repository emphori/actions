#!/bin/sh -e

GIT_COMMIT_GREP=${1:-"^(fix|feat|chore)(\(#[0-9]*\))?\!?: .*"}
GIT_TARGET_BRANCH=${2:-"master"}

# Validate commit subjects
commits=$(git log --no-merges --grep="$GIT_COMMIT_GREP" -E --invert-grep "$GIT_TARGET_BRANCH"..);

[ -z "$commits" ] || {
  printf "Invalid commit messages found!\n\n%s\n" "$commits"
  exit 1
}

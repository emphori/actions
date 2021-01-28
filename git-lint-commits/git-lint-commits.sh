#!/bin/sh -e

GIT_COMMIT_GREP=${1:-"^(fix|feat|chore)(\(#[0-9]*\))?\!?: .*"}
GIT_TARGET_BRANCH=${2:-"master"}
GIT_SOURCE_BRANCH=${2:-"HEAD"}

revision="origin/$GIT_TARGET_BRANCH..$GIT_SOURCE_BRANCH"

# Log the number of incoming commits
printf "%s new commit(s)\n" "$(git rev-list --count "$revision")" || {
  echo "Unable to count incoming commits, is the target branch or revision available?"
  exit 1
}

# Validate commit subjects
commits=$(git log --no-merges --grep="$GIT_COMMIT_GREP" -E --invert-grep "$revision") || {
  echo "Unable to view logs, is the target branch or revision available?"
  exit 1
}

[ -z "$commits" ] || {
  printf "Invalid commit messages found!\n\n%s\n" "$commits"
  exit 1
}

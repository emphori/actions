# Lint incoming Git commits

## Example using in a GitHub Action

```yaml
steps:
  ...
- name: Lint commits
  uses: emphori/actions/git-commits-lint@master
  with:
    git-commit-grep: ${{ "^(fix|feat|chore)(\(#[0-9]*\))?\!?: .*" }} # (default)
```

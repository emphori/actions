# Mirror a Git repository 

## Example using in a GitHub Action

```yaml
steps:
  ...
- name: Mirror repository
  uses: emphori/actions/git-mirror-repository@master
  with:
    git-mirror-remote-url: ${{ secrets.GIT_MIRROR_REMOTE_URL }}
```

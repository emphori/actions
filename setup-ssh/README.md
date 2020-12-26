# Setup SSH agent

## Example using in a GitHub Action

```yaml
steps:
  ...
- name: Setup SSH
  uses: emphori/actions/setup-ssh@master
  with:
    ssh-private-key: ${{ secrets.SSH_PRIVATE_KEY }}
    ssh-known-hosts: ${{ secrets.SSH_KNOWN_HOSTS }} # (optional)
```

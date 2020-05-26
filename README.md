# GitHub Actions

This is a collection of GitHub Actions written to, hopefully, improve our
workflows here at Emphori. To use them, simply reference the action that you
wish to use with `Emphori/actions/<name>` in your workflow, and pass the
environment variables or arguments where noted in the documentation below.

They're not listed on the GitHub Actions Marketplace, so please drop a _star_,
or Tweet your successes if you find them useful! Happy hacking!

## Semantic Release

An action to quickly incorporate the wonderful Semantic Release version
management and publishing package into your workflow. 

<!--
Whilst there are a couple of other actions implementing the Semantic Release
package, ours has a little edge that you can read about [here].
-->

### Usage

To use the Semantic Release action, add the following step at the end of your
workflow (it should be placed after your build and any tests have been run).

```yaml
steps:
  ...
- name: Release
  uses: Emphori/actions/semantic-release@c1bc665
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    NPM_TOKEN: ${{ secrets.NPM_TOKEN }}
```

The table below will explain the environment variable used.

| Name           | Description                                                             |
| ---            | ---                                                                     |
| `GITHUB_TOKEN` | GitHub authentication token (only personal access tokens are supported) |
| `NPM_TOKEN`    | NPM token (only the `auth-only` level of NPM's 2FA is supported)        |


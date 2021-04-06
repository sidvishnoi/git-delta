# git-delta

GitHub action to install [git-delta](https://github.com/dandavison/delta/) from a pre-compiled binary and add `delta` to the system path.

## Why?

`cargo install git-delta` is too slow to be used in GitHub Actions (takes around 4min).

## Usage

```yml
jobs:
  diff:
    runs-on: ubuntu-latest
    steps:
      - uses: sidvishnoi/git-delta@v1
      - run: git diff | delta
```

# Overview

This is the Paul Scherrer Institute specific anaconda build recipe for bitshuffle - https://github.com/kiyo-masui/bitshuffle

Due to performance implications we disable OpenMP for this libary.

To build a new version go to the [meta.yaml] file and adapt following two lines:

```json
version: 0.3.6.1

git_rev: cc6c11216b88863f5c1958ebfd99175eea82bac7
```

Update the version and update the respective commit hash of the version you want to take as a basis.

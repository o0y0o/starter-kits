---
to: <%= h.getProjectName(repoName) %>/.github/workflows/package.yml
---
name: Package

on:
  push:
    branches:
      - master

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
        with:
          node-version: 15
      - run: yarn install --frozen-lockfile
      - run: yarn lint && yarn test
      - run: yarn build
      - run: yarn pkg
        env:
          NODE_AUTH_TOKEN: ${{secrets.npm_token}}

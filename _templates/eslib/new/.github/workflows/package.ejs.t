---
to: <%= h.getProjectName(name) %>/.github/workflows/package.yml
---
name: Package

on:
  release:
    types: [created]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v1
        with:
          node-version: 14
          registry-url: https://registry.npmjs.org/
      - run: yarn install --frozen-lockfile
      - run: yarn lint && yarn test
      - run: yarn build
      - run: yarn pkg
        env:
          NODE_AUTH_TOKEN: ${{secrets.npm_token}}

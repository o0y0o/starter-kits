---
to: <%= h.getProjectName(repoName) %>/package.json
---
{
  "name": "<%= h.getProjectName(repoName) %>",
  "version": "1.0.0",
  "description": "<%= repoDescription %>",
  "repository": "https://github.com/<%= repoName %>",
  "author": "<%= authorName %>",
  "license": "MIT",
  "private": true,
  "scripts": {
    "ncu": "ncu && lerna exec ncu",
    "format": "lerna run format",
    "lint": "lerna run lint",
    "test": "lerna run test",
    "build": "lerna run build",
    "ver": "lerna version --no-push && git tag | xargs git tag -d",
    "pkg": "lerna publish from-package --yes"
  },
  "devDependencies": {
    "@0y0/babel-preset-vanilla": "^1.0.1",
    "@0y0/eslint-config-vanilla": "^1.1.2",
    "@babel/core": "^7.12.10",
    "@rollup/plugin-babel": "^5.2.2",
    "babel-eslint": "^10.1.0",
    "babel-jest": "^26.3.3",
    "eslint": "^7.17.0",
    "jest": "^26.6.3",
    "lerna": "^3.22.1",
    "prettier": "^2.2.1",
    "rollup": "^2.36.1"
  }
}

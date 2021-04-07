---
to: <%= h.getProjectName(repoName) %>/package.json
---
{
  "name": "<%= pkgName %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "src": "src/index.js",
  "main": "dist/index.cjs.js",
  "module": "dist/index.esm.js",
  "repository": "https://github.com/<%= repoName %>",
  "author": "<%= authorName %>",
  "license": "MIT",
  "publishConfig": {
    "access": "public"
  },
  "files": [
    "/dist"
  ],
  "keywords": [],
  "scripts": {
    "format": "prettier --write src/**/*.js",
    "lint": "eslint src/**/*.js",
    "test": "jest",
    "build": "rollup -c",
    "pkg": "[ $(yarn info $npm_package_name version) != $npm_package_version ] && yarn publish || echo Skip publishing due to v$npm_package_version exist"
  },
  "dependencies": {},
  "peerDependencies": {
    "@babel/runtime": "^7.11.2"
  },
  "devDependencies": {
    "@0y0/babel-preset-vanilla": "^1.1.1",
    "@0y0/eslint-config-vanilla": "^1.2.2",
    "@rollup/plugin-babel": "^5.2.2",
    "babel-jest": "^26.3.3",
    "eslint": "^7.17.0",
    "jest": "^26.6.3",
    "prettier": "^2.2.1",
    "rollup": "^2.36.1"
  }
}

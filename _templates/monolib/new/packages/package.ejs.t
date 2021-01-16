---
to: <%= h.getProjectName(repoName) %>/packages/<%= h.getProjectName(pkgName) %>/package.json
---
{
  "name": "<%= pkgName %>",
  "version": "1.0.0",
  "description": "<%= pkgDescription %>",
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
    "format": "prettier --write src/**/*.js'",
    "lint": "eslint src/**/*.js'",
    "test": "jest",
    "build": "rollup -c",
    "pkg": "[ $(yarn info $npm_package_name version) != $npm_package_version ] && yarn publish || echo Skip publishing due to v$npm_package_version exist"
  },
  "dependencies": {},
  "peerDependencies": {
    "@babel/runtime": "^7.11.2"
  }
}

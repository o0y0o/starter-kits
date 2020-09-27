---
to: <%= h.getProjectName(name) %>/package.json
---
{
  "name": "<%= name %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "src": "src/index.js",
  "main": "dist/index.cjs.js",
  "module": "dist/index.es.js",
  "iife": "dist/index.min.js",
  "repository": "https://github.com/<%= repoName %>",
  "author": "<%= authorName %>",
  "license": "MIT",
  "publishConfig": {
    "access": "public"
  },
  "keywords": [],
  "scripts": {
    "format": "prettier --write '{*,src/**/*}.js'",
    "lint": "eslint '{*,src/**/*}.js'",
    "test": "jest",
    "build": "rollup -c",
    "pkg": "[ $(yarn info $npm_package_name version) != $npm_package_version ] && yarn publish || echo Skip publishing due to v$npm_package_version exist"
  },
  "dependencies": {},
  "peerDependencies": {
    "@babel/runtime": "^7.11.2"
  },
  "devDependencies": {
    "@0y0/eslint-config-vanilla": "^1.0.0",
    "@babel/core": "^7.11.6",
    "@babel/plugin-transform-runtime": "^7.11.5",
    "@babel/preset-env": "^7.11.5",
    "@rollup/plugin-babel": "^5.2.1",
    "babel-eslint": "^10.1.0",
    "babel-jest": "^26.3.0",
    "eslint": "^7.9.0",
    "jest": "^26.4.2",
    "prettier": "^2.1.2",
    "rollup": "^2.28.1",
    "rollup-plugin-terser": "^7.0.2"
  }
}

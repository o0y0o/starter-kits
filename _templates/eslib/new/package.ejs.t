---
to: <%= h.getProjectName(name) %>/package.json
---
{
  "name": "<%= name %>",
  "version": "1.0.0",
  "description": "<%= description %>",
  "src": "src/index.js"
  "main": "dist/index.cjs.js",
  "module": "dist/index.es.js",
  "browser": "dist/index.min.js",
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
    "build": "rollup -c"
  },
  "dependencies": {},
  "devDependencies": {
    "@0y0/eslint-config-vanilla": "^1.0.0",
    "@babel/core": "^7.11.4",
    "@babel/plugin-transform-runtime": "^7.11.0",
    "@babel/preset-env": "^7.11.0",
    "@rollup/plugin-babel": "^5.2.0",
    "babel-eslint": "^10.1.0",
    "babel-jest": "^26.3.0",
    "eslint": "^7.7.0",
    "jest": "^26.4.2",
    "prettier": "^2.1.1",
    "rollup": "^2.26.8",
    "rollup-plugin-terser": "^7.0.1"
  }
}

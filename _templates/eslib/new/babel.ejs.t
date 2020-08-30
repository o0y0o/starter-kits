---
to: <%= h.getProjectName(name) %>/.babelrc
---
{
  "presets": ["@babel/env"],
  "plugins": ["@babel/transform-runtime"]
}

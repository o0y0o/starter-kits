---
to: <%= h.getProjectName(name) %>/.eslintrc
---
{
  "parser": "babel-eslint",
  "extends": ["standard", "prettier"],
  "plugins": ["import"],
  "rules": {
    "import/order": "error",
    "no-console": "error",
    "no-unused-vars": ["error", { "ignoreRestSiblings": true }],
    "no-var": "error",
    "quotes": ["error", "single", { "avoidEscape": true }]
  },
  "overrides": [
    {
      "files": "**/*.test.js",
      "env": { "jest": true }
    }
  ]
}

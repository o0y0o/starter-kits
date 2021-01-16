---
to: <%= h.getProjectName(repoName) %>/README.md
---
# <%= repoName %> · [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/<%= repoName %>/blob/master/LICENSE) ![Package Status](https://github.com/<%= repoName %>/workflows/Package/badge.svg) ![Test Status](https://github.com/<%= repoName %>/workflows/Test/badge.svg)

<%= repoDescription %>

## Packages

Check out the following links to see more detail.

| Package | Version |
| ------- | ------- |
| [<%= pkgName %>](https://github.com/<%= repoName %>/tree/master/packages/<%= h.getProjectName(pkgName) %>) | [![npm](https://img.shields.io/npm/v/<%= pkgName %>.svg)](https://www.npmjs.com/package/<%= pkgName %>) |

## License

[MIT](https://github.com/<%= repoName %>/blob/master/LICENSE)

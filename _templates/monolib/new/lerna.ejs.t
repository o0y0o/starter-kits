---
to: <%= h.getProjectName(repoName) %>/lerna.json
---
{
  "version": "independent",
  "packages": ["packages/*"],
  "npmClient": "yarn"
}

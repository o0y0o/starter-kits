---
to: <%= h.getProjectName(repoName) %>/packages/<%= h.getProjectName(pkgName) %>/src/index.test.js
---
import index from './index'

describe('<%= pkgName %>', () => {
  it('should be success', async () => {
    expect(index).toEqual('Hello World')
  })
})

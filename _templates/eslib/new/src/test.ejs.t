---
to: <%= h.getProjectName(repoName) %>/src/index.test.js
---
import index from './index'

describe('<%= pkgName %>', () => {
  it('should be success', async () => {
    expect(index).toEqual('Hello World')
  })
})

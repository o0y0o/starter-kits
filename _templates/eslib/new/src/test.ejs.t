---
to: <%= h.getProjectName(name) %>/src/index.test.js
---
import index from './index'

describe('<%= name %>', () => {
  it('should be success', async () => {
    expect(index).toEqual('Hello World')
  })
})

const path = require('path')

import path from 'path'
import Logger from 'hygen/dist/logger'
import { runner } from 'hygen/dist/index'

runner(process.argv.slice(2), {
  templates: path.join(__dirname, '../__templates'),
  cwd: process.cwd(),
  logger: new Logger(console.log.bind(console)),
  debug: !!process.env.DEBUG,
  exec: (action, body) => {
    const opts = body && body.length > 0 ? { input: body } : {}
    return require('execa').command(action, { ...opts, shell: true })
  },
  createPrompter: () => require('enquirer'),
  helpers: {
    getProjectName: pkgName => /([^\/]+)$/.exec(pkgName)[1],
    getFullYear: () => new Date().getFullYear()
  }
}).then(({ success }) => process.exit(success ? 0 : 1))

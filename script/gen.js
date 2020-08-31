#!/usr/bin/env node

const path = require('path')
const { runner } = require('hygen/dist/index')
const Logger = require('hygen/dist/logger').default

runner(process.argv.slice(2), {
  templates: path.join(__dirname, '../_templates'),
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

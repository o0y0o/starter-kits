---
to: <%= h.getProjectName(name) %>/rollup.config.js
---
import path from 'path'
import babel from '@rollup/plugin-babel'
import { terser } from 'rollup-plugin-terser'
import pkg from './package.json'

export default {
  input: path.join(__dirname, 'src/index.js'),
  plugins: [babel({ exclude: 'node_modules/**', babelHelpers: 'runtime' })],
  output: [
    {
      file: path.join(__dirname, pkg.main),
      format: 'cjs',
      exports: 'default'
    },
    {
      file: path.join(__dirname, pkg.module),
      format: 'es'
    },
    {
      file: path.join(__dirname, pkg.browser),
      format: 'iife',
      name: '<%= h.changeCase.pascalCase(h.getProjectName(name)) %>',
      plugins: [terser()]
    }
  ]
}

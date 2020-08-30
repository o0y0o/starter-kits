module.exports = {
  helpers: {
    getProjectName: pkgName => /([^\/]+)$/.exec(pkgName)[1],
    getFullYear: () => new Date().getFullYear()
  }
}

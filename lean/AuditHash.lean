import Lake

/-- Reproduce Lake's text-file hash cache on an isolated lockfile copy. -/
#eval Lake.cacheFileHash "package-lock.json" true
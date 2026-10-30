#!/usr/bin/env python3
"""Read-only audit of unpacked dependency worktrees against their Git trees."""
import hashlib
import os
from pathlib import Path
import stat
import subprocess
import sys

root = Path(sys.argv[1])
failed = False
for repo in sorted(root.iterdir()):
    if not repo.is_dir() or not (repo / ".git").exists():
        continue
    raw = subprocess.check_output(["git", "-C", str(repo), "ls-tree", "-rz", "--full-tree", "HEAD"])
    expected = {}
    for entry in raw.split(b"\0"):
        if not entry:
            continue
        meta, path = entry.split(b"\t", 1)
        mode, kind, oid = meta.decode("ascii").split()
        if kind != "blob":
            raise SystemExit(f"unsupported tree entry: {repo.name} {os.fsdecode(path)}")
        expected[os.fsdecode(path)] = (mode, oid)
    actual = {}
    for directory, dirs, files in os.walk(repo, followlinks=False):
        dirs[:] = [d for d in dirs if d not in (".git", ".lake")]
        for name in list(dirs):
            path = Path(directory) / name
            if path.is_symlink():
                dirs.remove(name)
                files.append(name)
        for name in files:
            path = Path(directory) / name
            relative = path.relative_to(repo).as_posix()
            info = path.lstat()
            if stat.S_ISLNK(info.st_mode):
                mode, data = "120000", os.fsencode(os.readlink(path))
            elif stat.S_ISREG(info.st_mode):
                mode = "100755" if info.st_mode & 0o111 else "100644"
                data = path.read_bytes()
            else:
                raise SystemExit(f"unsupported worktree entry: {repo.name} {relative}")
            oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            actual[relative] = (mode, oid)
    missing = sorted(expected.keys() - actual.keys())
    extra = sorted(actual.keys() - expected.keys())
    different = sorted(p for p in expected.keys() & actual.keys() if expected[p] != actual[p])
    index = subprocess.check_output(["git", "-C", str(repo), "ls-files", "-z"]).count(b"\0")
    print(f"{repo.name}: tree={len(expected)} worktree={len(actual)} index={index} "
          f"missing={len(missing)} extra={len(extra)} different={len(different)}")
    for label, paths in (("missing", missing), ("extra", extra), ("different", different)):
        for path in paths[:10]:
            print(f"  {label}: {path}")
    failed |= bool(missing or extra or different)
if failed:
    raise SystemExit(1)
print("PASS: tracked trees match worktrees outside excluded .git and .lake directories")
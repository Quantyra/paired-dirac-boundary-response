#!/usr/bin/env python3
"""Compare an extracted zstd tar with archive contents, ignoring ownership."""
import hashlib
import os
from pathlib import Path, PurePosixPath
import stat
import subprocess
import sys
import tarfile

archive, target = sys.argv[1], Path(sys.argv[2])
proc = subprocess.Popen(["zstd", "-dc", archive], stdout=subprocess.PIPE)
counts = {"files": 0, "dirs": 0, "symlinks": 0, "hardlinks": 0}
problems = []
expected = set()

def safe_path(name):
    p = PurePosixPath(name)
    if p.is_absolute() or ".." in p.parts:
        raise ValueError(f"unsafe archive name: {name}")
    return target.joinpath(*p.parts)

def digest(stream):
    h = hashlib.sha256()
    for chunk in iter(lambda: stream.read(1024 * 1024), b""):
        h.update(chunk)
    return h.digest()

with tarfile.open(fileobj=proc.stdout, mode="r|") as tf:
    for m in tf:
        path = safe_path(m.name)
        expected.add(path.relative_to(target).as_posix())
        if not path.exists() and not path.is_symlink():
            problems.append(f"missing {m.name}")
            continue
        st = path.lstat()
        if m.isdir():
            counts["dirs"] += 1
            if not stat.S_ISDIR(st.st_mode):
                problems.append(f"type {m.name}")
        elif m.issym():
            counts["symlinks"] += 1
            if not stat.S_ISLNK(st.st_mode) or os.readlink(path) != m.linkname:
                problems.append(f"symlink {m.name}")
        elif m.isfile() or m.islnk():
            counts["files" if m.isfile() else "hardlinks"] += 1
            if not stat.S_ISREG(st.st_mode):
                problems.append(f"type {m.name}")
                continue
            if bool(st.st_mode & 0o111) != bool(m.mode & 0o111):
                problems.append(f"executable mode {m.name}")
            if m.isfile():
                src = tf.extractfile(m)
                with path.open("rb") as actual:
                    if digest(src) != digest(actual):
                        problems.append(f"bytes {m.name}")
            else:
                linked = safe_path(m.linkname)
                with path.open("rb") as actual, linked.open("rb") as source:
                    if digest(source) != digest(actual):
                        problems.append(f"hardlink bytes {m.name}")
        else:
            problems.append(f"unsupported archive type {m.name}")
if proc.wait() != 0:
    raise SystemExit("zstd decompression failed")
extra = []
for directory, dirs, files in os.walk(target, followlinks=False):
    for name in dirs + files:
        path = Path(directory) / name
        rel = path.relative_to(target).as_posix()
        if rel not in expected:
            extra.append(rel)
print("archive entries:", counts)
print(f"problems={len(problems)} extra={len(extra)}")
for item in problems[:20]:
    print(item)
for item in extra[:20]:
    print(f"extra {item}")
if problems or extra:
    raise SystemExit(1)
print("PASS: bytes, types, link targets and executable modes match; ownership ignored")
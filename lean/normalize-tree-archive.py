#!/usr/bin/env python3
"""Reconstruct a flat tar from a Git tree, permitting only CRLF normalization.

Usage: python3 normalize-tree-archive.py GIT_REPOSITORY COMMIT INPUT_TAR OUTPUT_TAR
The output must not exist. Every input path, Git mode, and blob must match the
tree exactly after at most CRLF-to-LF conversion. No Lean invocation is made.
Authenticate the tree independently before treating the result as pinned.
"""
import hashlib
import io
import os
import subprocess
import sys
import tarfile


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def main():
    if len(sys.argv) != 5:
        raise SystemExit(__doc__)
    repo, commit, source, destination = sys.argv[1:]
    tree = subprocess.check_output(["git", "-C", repo, "ls-tree", "-rz", "--full-tree", commit])
    expected = {}
    for item in tree.split(b"\0"):
        if item:
            meta, path = item.split(b"\t", 1)
            mode, kind, blob = meta.decode("ascii").split()
            if kind != "blob":
                raise SystemExit("unsupported tree entry: " + os.fsdecode(path))
            expected[os.fsdecode(path)] = (mode, blob)

    files = {}
    normalized = 0
    with tarfile.open(source, "r:*") as archive:
        for entry in archive:
            if entry.isdir():
                continue
            path = entry.name.removeprefix("./")
            if path not in expected or path in files or ".." in path.split("/"):
                raise SystemExit("unexpected or duplicate path: " + path)
            if entry.issym():
                mode, data = "120000", os.fsencode(entry.linkname)
            elif entry.isfile():
                mode = "100755" if entry.mode & 0o111 else "100644"
                data = archive.extractfile(entry).read()
            else:
                raise SystemExit("unsupported archive entry: " + path)
            expected_mode, expected_oid = expected[path]
            if mode != expected_mode:
                raise SystemExit("mode mismatch: " + path)
            if oid(data) != expected_oid:
                candidate = data.replace(b"\r\n", b"\n")
                if oid(candidate) != expected_oid:
                    raise SystemExit("content mismatch beyond CRLF: " + path)
                data = candidate
                normalized += 1
            files[path] = (mode, data)
    if files.keys() != expected.keys():
        missing = sorted(expected.keys() - files.keys())
        raise SystemExit("missing paths: " + ", ".join(missing[:20]))

    with open(destination, "xb") as out:
        with tarfile.open(fileobj=out, mode="w") as archive:
            for path, (mode, data) in sorted(files.items()):
                entry = tarfile.TarInfo(path)
                entry.mtime = 0
                if mode == "120000":
                    entry.type = tarfile.SYMTYPE
                    entry.linkname = os.fsdecode(data)
                    entry.mode = 0o777
                    archive.addfile(entry)
                else:
                    entry.mode = 0o755 if mode == "100755" else 0o644
                    entry.size = len(data)
                    archive.addfile(entry, io.BytesIO(data))
    print(f"PASS paths={len(files)} normalized={normalized} output={destination}")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Compare a source tar archive with a Git tree; does not invoke Lean.

Usage: python3 verify-git-tree-archive.py GIT_REPOSITORY COMMIT ARCHIVE
The archive must contain a single top-level directory. Missing or extra files,
type/mode differences, and blob differences all fail the check. The Git tree
and archive must be obtained independently and their identities recorded.
"""
import hashlib
import os
import subprocess
import sys
import tarfile


def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def main():
    if len(sys.argv) != 4:
        raise SystemExit(__doc__)
    repo, commit, archive = sys.argv[1:]
    raw = subprocess.check_output(["git", "-C", repo, "ls-tree", "-rz", "--full-tree", commit])
    expected = {}
    for entry in raw.split(b"\0"):
        if not entry:
            continue
        meta, path = entry.split(b"\t", 1)
        mode, kind, oid = meta.decode("ascii").split()
        if kind != "blob":
            raise SystemExit("unsupported Git tree entry: " + os.fsdecode(path))
        expected[os.fsdecode(path)] = (mode, oid)

    actual = {}
    with tarfile.open(archive, "r:*") as stream:
        root = None
        for member in stream:
            name = member.name.rstrip("/")
            if not name:
                continue
            pieces = name.split("/", 1)
            if root is None:
                root = pieces[0]
            if pieces[0] != root:
                raise SystemExit("archive contains more than one top-level directory")
            if len(pieces) == 1 or member.isdir():
                continue
            path = pieces[1]
            if path in actual or path.startswith("/") or ".." in path.split("/"):
                raise SystemExit("duplicate or unsafe archive path: " + path)
            if member.issym():
                mode, data = "120000", os.fsencode(member.linkname)
            elif member.isfile():
                mode = "100755" if member.mode & 0o111 else "100644"
                data = stream.extractfile(member).read()
            else:
                raise SystemExit("unsupported archive entry: " + path)
            actual[path] = (mode, blob_id(data))

    missing = sorted(expected.keys() - actual.keys())
    extra = sorted(actual.keys() - expected.keys())
    different = sorted(path for path in expected.keys() & actual.keys() if expected[path] != actual[path])
    print(f"tree={commit} expected={len(expected)} archive={len(actual)}")
    for label, paths in (("missing", missing), ("extra", extra), ("different", different)):
        print(f"{label}={len(paths)}")
        for path in paths[:20]:
            print(f"  {path}")
    if missing or extra or different:
        raise SystemExit(1)
    print("PASS: archive paths, modes, and Git blob identities match the tree")


if __name__ == "__main__":
    main()

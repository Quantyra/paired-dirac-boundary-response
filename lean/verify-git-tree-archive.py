#!/usr/bin/env python3
"""Compare a source tar archive with a Git tree; does not invoke Lean.

Usage: python3 verify-git-tree-archive.py GIT_REPOSITORY COMMIT ARCHIVE [--flat]
By default the archive must contain one top-level directory. With --flat,
paths are relative to the tree root. Missing or extra files,
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
    if len(sys.argv) not in (4, 5) or (len(sys.argv) == 5 and sys.argv[4] != "--flat"):
        raise SystemExit(__doc__)
    repo, commit, archive = sys.argv[1:4]
    flat = len(sys.argv) == 5
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
    crlf_matches = []
    with tarfile.open(archive, "r:*") as stream:
        root = None
        for member in stream:
            name = member.name.rstrip("/")
            if not name:
                continue
            if member.isdir():
                continue
            if flat:
                path = name.removeprefix("./")
            else:
                pieces = name.split("/", 1)
                if root is None:
                    root = pieces[0]
                if pieces[0] != root or len(pieces) != 2:
                    raise SystemExit("archive must contain a single top-level directory")
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
            if (path in expected and b"\r\n" in data
                    and actual[path] != expected[path]
                    and (mode, blob_id(data.replace(b"\r\n", b"\n"))) == expected[path]):
                crlf_matches.append(path)

    missing = sorted(expected.keys() - actual.keys())
    extra = sorted(actual.keys() - expected.keys())
    different = sorted(path for path in expected.keys() & actual.keys() if expected[path] != actual[path])
    print(f"tree={commit} expected={len(expected)} archive={len(actual)}")
    print(f"different_matching_after_crlf_to_lf={len(crlf_matches)}")
    for label, paths in (("missing", missing), ("extra", extra), ("different", different)):
        print(f"{label}={len(paths)}")
        for path in paths[:20]:
            print(f"  {path}")
    if missing or extra or different:
        raise SystemExit(1)
    print("PASS: archive paths, modes, and Git blob identities match the tree")


if __name__ == "__main__":
    main()

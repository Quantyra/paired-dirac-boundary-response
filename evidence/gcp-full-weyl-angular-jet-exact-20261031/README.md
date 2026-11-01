# GCP exact-source replay: fourth-order full-Weyl angular jet

Status: the exact source `lean/FullWeylAngularJet.lean` at
SHA-256 `e5f804e0a28087408e197719da807925414e3d1fe09c5b2b1395d5dba6a521e2`
compiled on the Quantyra GCP Lean builder with exit code 0 and no reported
`sorryAx`. This receipt supersedes the record in
[`gcp-full-weyl-angular-jet4-20261030`](../gcp-full-weyl-angular-jet4-20261030/README.md),
which reported the same successful run but left its source hash as an
unsubstituted placeholder and retained no source or `.olean`.

## Certified statement and limits

The run checked two declarations:

- `full_weyl_leading_angular_jet`
- `full_weyl_subtracted_jet_through_fourth_order`

Both report only Lean's standard axioms `propext`, `Classical.choice` and
`Quot.sound`.

They certify two rational polynomial identities:

```text
1 + 3(1 - x/6 + x^2/60) - (3/2)x(-1/6 + x/30) = 4 - x/4
1 + 3(1 - x/6 + x^2/60 - x^3/840 + x^4/15120)
  - (3/2)x(-1/6 + x/30 - x^2/280 + x^3/3780)
  = 4 - x/4 + x^3/560 - x^4/5040
```

This is the polynomial cancellation in the leading and fourth-order
full-Weyl angular jets of the flat tangent subtraction. The run does not
certify the Taylor remainder beyond the displayed polynomial, the
Euler--Maclaurin estimates, the angular mode sum, any Fourier integral, the
operator realization or its domains, physical half-folding and trace
normalization, LLL/contact transfer, a common regulator, the curved
remainder, or P1-C as a whole. It is a supporting algebra check.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified before the run:
  `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `e5f804e0a28087408e197719da807925414e3d1fe09c5b2b1395d5dba6a521e2`
- Compiled `.olean` SHA-256: `29cbdd2b5f1dc7fb3b75d7d941c603218804767583055e176518da39223285e2`
- Exit code: `0`
- Finished: `Sun Nov  1 05:43:55 UTC 2026`
- Remote run directory: `~/quantyra-space-runs/p1-full-weyl-angular-jet-exact-20261031-r3`

The runner is
[`lean/cloud-full-weyl-angular-jet-exact-20261031.sh`](../../lean/cloud-full-weyl-angular-jet-exact-20261031.sh),
SHA-256 `b4f4ac45a4836b17e9154c8126af03a39bd7d0cfde9aad546797250cba873f8d`,
executed verbatim on the builder after `bash -n`. It pins and verifies the
source hash, checks the mathlib commit, loads the retained package libraries,
compiles with `lean -o`, requires both theorem names in the output, and fails
if `sorryAx` appears. A copy of the executed runner is retained here.

The source bytes were transferred as the Git blob (LF), and the retained
copy here hashes to the same `e5f804e0…` value, so the receipt records the
exact bytes the repository stores.

## First attempt and its retained failure

The first run of this runner (remote directory
`p1-full-weyl-angular-jet-exact-20261031-r2`) exited 1 before elaboration:

```text
FullWeylAngularJet.lean:1:0: error: missing IR data file for module Mathlib.Tactic.Linter.DirectoryDependency
```

The reuse candidate package tree
(`paper1-domain-exact-tree-f7b70c1-20261029`) did not contain the required
Mathlib modules at all, and the retained Space reference workspace had
pruned the `.ir` compiler-artifact files from its package build directories,
leaving `.olean` files that Lean 4.30.0 refuses to load without their IR
counterparts. The failure is an environment defect, not a source or theorem
failure.

The IR artifacts were restored from the same workspace's retained Lake
cache (`space-20261007T093129Z-retry1/cache`, 2,867 `.ltar` entries) with
`MATHLIB_CACHE_DIR` set to that directory. The successful run re-verified the
pinned mathlib commit and used that restored build. No source or theorem
statement was edited at any point.

## Dependency provenance limit

This run reused a retained compiled Mathlib build rather than rebuilding it,
and it does not hash each imported `.olean` or `.ir`. The verified Mathlib
commit `c5ea00351c28e24afc9f0f84379aa41082b1188f` and the Lean/Lake versions
identify the environment; they are not a complete per-artifact dependency
audit. Every package `*.olean.hash` file present in the build is covered by
the cache's content hashes, but this receipt does not reproduce that chain.

## Receipt contents

`FullWeylAngularJet.lean` (checked source), `FullWeylAngularJet.olean`
(compiled artifact), `run.log`, `lean.log`, `lean-version.txt`,
`lake-version.txt`, `lean-path.txt`, `lean-source-sha256.txt`,
`olean-sha256.txt`, `exit-code`, `finished-utc`, and the executed runner.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Text files here are stored in Git
with LF endings and checked out on Windows with CRLF. Recompute the recorded
SHA-256 values against the stored blob (for example with `git show` or
`git cat-file blob`), not against a CRLF working copy. The `.olean` is binary
and is stored and restored verbatim.

Remaining to-do list: instantiate this jet identity in the analytic
full-Weyl response, close the source/common-regulator bridge, and finish the
S001 prior-art and decision record.

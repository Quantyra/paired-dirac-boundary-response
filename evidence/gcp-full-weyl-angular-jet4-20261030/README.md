# GCP check: full-Weyl angular jet through fourth order

Run date: 2026-10-30 HST. Source: lean/FullWeylAngularJet.lean.

Source-identity note (2026-11-01 UTC): this receipt originally recorded the
source as `SHA-256 $hash`, an unsubstituted template placeholder, and it
retained neither the checked source nor the compiled `.olean`. It therefore
does not by itself pin the bytes that were checked. The same file content was
subsequently pinned and replayed exactly as
`e5f804e0a28087408e197719da807925414e3d1fe09c5b2b1395d5dba6a521e2` with a
retained source and `.olean` in
[`gcp-full-weyl-angular-jet-exact-20261031`](../gcp-full-weyl-angular-jet-exact-20261031/README.md).
The file has not changed since commit `441f46c`, which introduced this
fourth-order version, so the successful run below and that exact replay cover
the same source content. Treat the exact replay as the governing record for
source identity; this receipt is retained as the original run record.

Run on quantyra-lean-builder-01, project quantyra-lean-cert-20260915, zone us-central1-a, with Lean 4.30.0 (d024af099ca4bf2c86f649261ebf59565dc8c622) and Lake 5.0.0. The run used the retained paper1-sourceonly-6858aa7-20261029/source/lean environment and the cached toolchain at paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux. The command was lake env lean /tmp/FullWeylAngularJet.lean; exit code 0.

The checked theorems are `full_weyl_leading_angular_jet and `full_weyl_subtracted_jet_through_fourth_order. The latter verifies the rational polynomial identity

`	ext
1 + 3(1 - x/6 + x^2/60 - x^3/840 + x^4/15120)
  - (3/2)x(-1/6 + x/30 - x^2/280 + x^3/3780)
  = 4 - x/4 + x^3/560 - x^4/5040.
`

Both axiom reports were [propext, Classical.choice, Quot.sound]; no sorryAx was reported. This certifies the polynomial jet only. It does not certify the Taylor remainder for A, angular heat asymptotics, Fourier tails/integrals, the physical observable, domains, LLL, common regulator, curved remainder, or P1-C as a whole.

Lake warned that the nine reused dependency repositories had local changes. This is a successful source-only replay, not an exact-tree dependency acceptance run. The first draft had an encoding/type elaboration failure and a missing 
oncomputable annotation; both were corrected before the successful run. A separate attempt to emit an .olean under /tmp failed because Lake requires the output to be under the project root; that artifact attempt is not counted as a theorem-check failure. The successful Lean elaboration itself exited 0.

Remaining to-do list: establish the physical full-Weyl/source/common-regulator bridge, finish novelty and S001.3, and certify the final supported theorem package on GCP.

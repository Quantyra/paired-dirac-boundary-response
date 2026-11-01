# GCP exact-source replay: manuscript formalization, second extension

Status: `lean/ManuscriptFormal.lean` at SHA-256
`be50bb1d05bab33dbb2cddaa5eb77a176031773f7ad31c041d3501718d61ce9c`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`8843fe3c439ab7ae5846f36c9e6901e10d7e5e7cf99c5d38132a8cd4c065264b`.
No `sorryAx` was reported. This extends the earlier ten declarations in
[`gcp-manuscript-formal-20261101`](../gcp-manuscript-formal-20261101/README.md);
the earlier receipt remains valid for its own source hash.

## New declarations in this run

`(2.3)`, the transported finite-cut boundary plane:

- `s1_vplus`, `s1_vminus`, `s3_vplus`, `s3_vminus` — `σ₁` and `σ₃` act on the
  eigenvectors by `σ₁v± = ±v±`, `σ₃v₊ = v₋`, `σ₃v₋ = v₊`.
- `real_sinh_eq_zero` — `sinh λ = 0 ↔ λ = 0`, proved locally from
  `Real.cosh_add_sinh`, `Real.cosh_sub_sinh` and injectivity of `exp`
  because Mathlib's `Real.sinh_eq_zero` lives in a module the retained build
  does not contain.
- `transportedPlane_eq_smul` — the coordinate form is literally
  `cosh λ • v₊ + sinh λ • v₋`.
- `pminus_transportedPlane` — the `P₋ = (1-σ₁)/2` component of the transported
  datum is `(sinh λ, -sinh λ)`.
- `transportedPlane_not_local` — for `λ ≠ 0` that component is nonzero, i.e.
  the transported plane is not the local `P₋ψ = 0` plane.
- `transportedPlane_parallel_iff` — it coincides with the local plane exactly
  when `λ = 0`.

`(4.9a)`/`(4.12)` consistency:

- `tower_derivative_coefficient` — differentiating the explicit polynomial
  part of the tower expansion with `a = t/b²` reproduces the displayed
  `b⁻²[2/a² - q²/6 + 1/30]` coefficient of `-Θ'`.

## What this does not certify

The transport identity is certified for the *displayed solution formula*, not
for the ODE that produces it: the exponential `exp(λσ₃)` is not derived from
`Hψ = 0` in Lean, and no differentiability or fundamental-matrix theory is
involved. `(4.9a)` is certified only as the consistency of its displayed
polynomial part with the `(4.12)` constants; the Euler–Maclaurin derivation,
the `O_q(a²)` remainder and the varying-`q` uniformity are not formalized.
Nothing here touches Propositions 4.1–4.3, Section 5, the unbounded
realizations, the spectral theorem or any physical identification.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-formal-20261101-r3`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `be50bb1d05bab33dbb2cddaa5eb77a176031773f7ad31c041d3501718d61ce9c`
- OLean SHA-256: `8843fe3c439ab7ae5846f36c9e6901e10d7e5e7cf99c5d38132a8cd4c065264b`
- Exit code: `0`
- Finished: `Sun Nov  1 13:05 UTC 2026`

The runner is
[`lean/cloud-manuscript-formal-20261101.sh`](../../lean/cloud-manuscript-formal-20261101.sh);
a copy of the executed script is retained here. It pins the source hash,
verifies the Mathlib commit, requires all twenty declaration axiom reports in
the output, and fails on `sorryAx`.

A first attempt in this directory naming scheme (`…-r2`) is retained on the
builder only: its runner had a malformed theorem list, compiled the source
successfully and then failed its own name check. The source in that attempt is
the same `be50bb1d…` file; this receipt's run is the valid record.

## Dependency provenance limit

The run reused the retained exact-tree Mathlib build of
`paper1-domain-exact-tree-f7b70c1-20261029` rather than rebuilding it, and does
not hash each imported `.olean`/`.ir`. The pinned Mathlib commit and the
Lean/Lake versions identify the environment; they are not a complete
per-artifact dependency audit.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy. The `.olean` is
binary and stored verbatim.

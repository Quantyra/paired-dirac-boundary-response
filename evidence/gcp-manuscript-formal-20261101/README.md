# GCP exact-source replay: manuscript formalization

Status: `lean/ManuscriptFormal.lean` at SHA-256
`c316e863623a4809ef5584d42e779065de9ced94177b4b5e8e69a145b3a52f4e`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`688427eafb4adbd80c40fcf77a6766fda82e5bbcf3fc42e6247fce01fe8cf0f1`.
No `sorryAx` was reported.

## What this receipt certifies

Ten declarations, each with only Lean's standard axioms `propext`,
`Classical.choice` and `Quot.sound`:

| Declaration | Manuscript statement | Formal reading |
| --- | --- | --- |
| `skew_adjoint_inner_self_zero` | Prop. 3.1 proof step | a bounded skew-adjoint operator has vanishing real quadratic form |
| `resolvent_shift_norm_lower` | (3.1), first bound | `M‖x‖ ≤ ‖(M + T)x‖` for bounded skew-adjoint `T`, `M ≥ 0` |
| `resolvent_norm_bound` | (3.1), first bound | `‖Sy‖ ≤ ‖y‖/M` conditional on the displayed right inverse |
| `square_shift_norm_lower` | (3.1), second bound | `M²‖x‖ ≤ ‖(M² + T*T)x‖` |
| `square_resolvent_norm_bound` | (3.1), second bound | `‖Sy‖ ≤ ‖y‖/M²` conditional on the displayed right inverse |
| `congruenced_gap_composition` | (4.11) | gap survives conjugation with constant `κc²` (see caveat below) |
| `converted_series_difference` | (4.12c) | the term-by-term subtraction of `(4.12b)` from `(4.12a)` |
| `flat_conversion_cubic_coefficient` | (4.10b) | geometric plus contact cubic coefficients give `b²/(840π)` |
| `flat_conversion_cutoff_coefficient` | (4.10c) | `C/(1680π) = b²/(840π)` at `C = 2b²` |
| `matrix_reference_position_identity` | (5.3) | finite-matrix reference-position identity with commuting heat factors |

`(4.12c)` is certified exactly as printed, with `π`, `t` and `b` treated as
nonzero real parameters rather than as symbols with fixed values. The two
flat-conversion coefficient identities are the algebraic steps only; the
angular limits `tΘ(t) → 2b²` and `t²Θ'(t) → -2b²` and the full-line/half-line
pairing factor are inputs to the displayed arithmetic, not consequences of it.

## Caveat recorded against the manuscript

`congruenced_gap_composition` proves `κ c² ‖ψ‖ ≤ ‖E (Q (E ψ))‖` when `E` has
lower bound `c` and `Q` has gap `κ`. For `E_r = exp(-r b/2)` and
`c = exp(-r‖b‖_∞)` this gives `κ exp(-2r‖b‖_∞)`, whereas `(4.11)` of the
manuscript prints `κ exp(-r‖b‖_∞)`. The composition argument displayed in the
manuscript uses the multiplier bound at both occurrences of `E_r`, so the
constant as printed needs either a sharper argument (using self-adjointness
of `E_r` beyond a norm bound) or a correction. The formal statement does not
resolve this; `manuscript/lean-certification-ledger.md` records it as an open
manuscript check.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-formal-20261101-r1`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified before the run:
  `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `c316e863623a4809ef5584d42e779065de9ced94177b4b5e8e69a145b3a52f4e`
- OLean SHA-256: `688427eafb4adbd80c40fcf77a6766fda82e5bbcf3fc42e6247fce01fe8cf0f1`
- Exit code: `0`
- Finished: `Sun Nov  1 09:04:11 UTC 2026`

The runner is
[`lean/cloud-manuscript-formal-20261101.sh`](../../lean/cloud-manuscript-formal-20261101.sh);
a copy of the executed script is retained here. It pins the source hash,
verifies the Mathlib commit, loads the retained package libraries, requires
each theorem name in the output, and fails on `sorryAx`.

Lean also emitted one linter warning, retained in `lean.log`: `hM` is unused
in `square_resolvent_norm_bound` because the positivity of `M²` is discharged
from `0 < M` by the termination tactic rather than by naming the hypothesis.
It is a cosmetic warning, not a proof gap.

## Dependency provenance limit

The run reused the retained exact-tree Mathlib build of
`paper1-domain-exact-tree-f7b70c1-20261029` rather than rebuilding it, and it
does not hash each imported `.olean`/`.ir`. The pinned Mathlib commit and the
Lean/Lake versions identify the environment; they are not a complete
per-artifact dependency audit.

## Scope

This receipt certifies the ten formulas above at the stated formal readings.
It does not certify Propositions 2.1, 3.1, 3.2, 4.1, 4.2 or 4.3 as physical or
analytic statements, nor any unbounded-domain, heat-kernel, regulator or
curved-response claim. See `manuscript/lean-certification-ledger.md`.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy. The `.olean` is
binary and stored verbatim.

# Failed GCP replay: correspondence repair, attempt r1

Status: **failure, preserved.** Executive summary: this attempt never produced a
valid certificate. It is retained so that the repair path is auditable and the
failure is not silently retried.

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-correspondence-repair-20261101`
- Source SHA-256: `6a9b90e16e3be12e9969b3ecb3496faa72c953a277cc7f57112c5f5839552129`
- Exit code: `1` (see `exit-code`)
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Environment, dependencies and Mathlib commit verified correctly; the failure
  is in the new source, not the runner.

## Diagnosis

Five parse errors, all of the same kind:

```text
ManuscriptFormal.lean:440:33: error: unexpected token 'ᵀ'; expected ':=', 'where' or '|'
ManuscriptFormal.lean:445:33: error: unexpected token 'ᵀ'; expected ':=', 'where' or '|'
ManuscriptFormal.lean:451:33: error: unexpected token 'ᵀ'; expected ':=', 'where' or '|'
ManuscriptFormal.lean:468:74: error: unexpected token 'ᵀ'; expected ':=', 'where' or '|'
ManuscriptFormal.lean:492:48: error: unexpected token 'ᵀ'; expected ':=', 'where' or '|'
```

The postfix matrix-transpose notation as written (`pauli2ᵀ`, `(kUpper nu mua)ᵀ`)
does not parse in this build, so the transpose lemmas failed to elaborate and
every declaration depending on them reported `sorryAx`. A separate rewrite
failure appeared in `flux_of_first_row`:

```text
ManuscriptFormal.lean:521:33: error: Tactic `rewrite` failed: Did not find an
occurrence of the pattern
  (?M * ?N).mulVec ?v
```

i.e. `Matrix.mulVec_mulVec` rewrites `M.mulVec (N.mulVec v)` to
`(M * N).mulVec v`, so the `←` direction used here was wrong.

## Repair applied

- all five transpose statements rewritten with the explicit function
  `Matrix.transpose`;
- `rw [← Matrix.mulVec_mulVec]` changed to the forward direction.

The repaired source is `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`,
certified in
[`gcp-manuscript-correspondence-repair-20261101`](../gcp-manuscript-correspondence-repair-20261101/README.md).

No statement, hypothesis or scope was changed by the repair: only notation and
one rewrite direction.

# Full-Weyl mode-square algebra: GCP Lean receipt

Date: 2026-10-30 HST  
Source: [`lean/FullWeylSquareAlgebra.lean`](../../lean/FullWeylSquareAlgebra.lean)  
Source SHA-256: `7501A09448A663E82BBD7F2A8AF24C01DB4E7BAE7D16204AD1521C0B70DF5AEA`

## Result

The exact source passed `lake env lean /tmp/FullWeylSquareAlgebra.lean` on the GCP builder with exit code 0. Lean printed:

```text
'full_weyl_mode_square_identity' depends on axioms: [propext]
EXIT_CODE=0
```

No `sorryAx` is reported. The captured stdout/stderr is in [`success.log`](success.log).

Compiler: Lean 4.30.0, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`, Release. Lake: `5.0.0-src+d024af0`. The check ran on GCP instance `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, using the cached source-only Lean workspace under `/home/dfredriksen_quantyra_org/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029/source/lean` and the pinned Lean toolchain under `/home/dfredriksen_quantyra_org/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin`.

The source-only workspace emitted local-change warnings for all nine reused Lake dependency repositories (`mathlib`, `plausible`, `LeanSearchClient`, `importGraph`, `proofwidgets`, `aesop`, `Qq`, `batteries`, `Cli`). This receipt records an exact-source elaboration replay, not a clean dependency rebuild or independent dependency provenance audit.

## Certified statement and limits

The theorem is an identity in an arbitrary ring under explicit assumptions: `q` commutes with `Dstar`, `M`, and `G`; `Dstar * G = G * D`; `M` commutes with `G`; `G * G = 1`; and `q * q = -(mu * mu)`. Under those assumptions it proves

```text
(Dstar - q * (M * G)) * (D + q * (M * G))
  = Dstar * D + mu * mu * (M * M) + q * G * (D * M - M * D)
```

This certifies only the abstract noncommutative algebraic expansion. It does not instantiate operators or their domains, establish the physical paired-boundary realization, prove trace or resolvent claims, identify source contact/density/LLL terms, establish a common-regulator limit, prove the tangent observable, or settle novelty. It is a supporting algebra lemma, not Paper 1 certification.

## Failed draft history

The first attempt using `import Mathlib.Tactic` failed before elaboration because the umbrella `Mathlib/Tactic.olean` was absent in the reused workspace. After narrowing imports, the first proof draft reached elaboration but had rewrite/reassociation errors and reported `sorryAx` for the incomplete declaration. The proof was corrected and replayed successfully as recorded above. These failures were draft failures, not failures of the final source.

Remaining to-do list: instantiate and connect this identity to the fixed-product full-Weyl operator argument; close the physical observable/common-regulator bridge; complete the S001 proof and novelty audits and record the research decision.

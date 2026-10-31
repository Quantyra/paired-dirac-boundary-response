# GCP Lean receipt: full-Weyl/orbit seam coefficient algebra

Date: 2026-10-31 HST  
Source: [`lean/FullWeylSeamCoefficientComparison.lean`](../../lean/FullWeylSeamCoefficientComparison.lean)  
Source SHA-256: `20B628D173228FE68918A3ACD3DAB5725DC498E2D4F37F3EF428B4324CD20322`

The exact source passed `lake env lean /tmp/FullWeylSeamCoefficientComparison.lean` on GCP with exit code 0. The declarations report `[propext, Classical.choice, Quot.sound]`; no `sorryAx` is reported. Captured output is in [`success.log`](success.log). The run used the retained source-only Lake environment. Its nine reused dependencies emitted local-change warnings, so this is an exact-source replay, not a clean dependency rebuild.

## Certified claim

For arbitrary real parameters, Lean proves the algebraic difference

```text
-27 b^2 c_u c_w / (512 sqrtPi)
 - (-15 b^2 c_u c_w / (512 sqrtPi))
= -3 b^2 c_u c_w / (128 sqrtPi),
```

and the identity

```text
2 b^2 * (-C / (70 pi)) = -b^2 C / (35 pi).
```

These are the cubic and leading-log coefficient comparisons between the conditional orbit-only tower diagnostic and the conditional full-Weyl angular-tower diagnostic in [`full-weyl-angular-seam-coefficients.md`](../../notes/full-weyl-angular-seam-coefficients.md). This certifies only rational coefficient algebra after those formulas are assumed. It does not prove either Fourier/heat asymptotic, the half-folding normalization, the physical observable, the LLL/contact transfer, a common-regulator limit, or a curved response theorem.

Compiler: Lean 4.30.0, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`, Release; Lake 5.0.0. Instance: `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`. The VM was verified `TERMINATED` after the check.

Initial source/command attempts failed before a successful elaboration; their summary is preserved in [`attempts.log`](attempts.log). The accepted source is the final hash above.

Remaining to-do list: prove the conditional full-Weyl tangent asymptotics and transfer them to the physical source response with density, contact, LLL and common-regulator terms; then finish novelty, manuscript and claim-matched Lean certification.

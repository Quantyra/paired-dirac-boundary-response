# Full versus orbit-only constant-mode Hessian: GCP Lean receipt

Date: 2026-10-31 HST  
Source: [`lean/FullWeylConstantModeBenchmark.lean`](../../lean/FullWeylConstantModeBenchmark.lean)  
Source SHA-256: `1CF0C4635000F53E138410E7E414DEF59FF56515C71F119D852A965481170415`

## Result

The exact source passed `lake env lean /tmp/FullWeylConstantModeBenchmark.lean` on GCP with exit code 0. The shared theorem `scaled_exp_mode_second_derivative` differentiates the scalar exponential twice. The full and orbit-only corollaries then prove the actual second derivatives of `fullModeHeat` and `orbitOnlyModeHeat`, respectively; a fourth theorem proves their exact difference by ring normalization. `#print axioms` reports `[propext, Classical.choice, Quot.sound]` for all four declarations; no `sorryAx` is reported. The captured output, including linter and reused-dependency warnings, is in [`success.log`](success.log).

Compiler: Lean 4.30.0, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`, Release; Lake 5.0.0. GCP instance: `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`. The cached source-only Lake workspace emitted local-change warnings for its nine dependency repositories, as recorded in the log. This is an exact-source replay, not a clean dependency rebuild.

## Certified statement and limits

For real `t`, `lambda`, `mu`, and scalar direction `b`, define

```text
fullModeHeat(t, lambda, mu, b)
  = exp(-t * (lambda + mu^2) * exp(-2*b))
orbitOnlyModeHeat(t, lambda, mu, b)
  = exp(-t * (lambda * exp(-2*b) + mu^2))
```

Lean proves the second derivative of the first function at zero equals
`4 * (t^2 * (lambda + mu^2)^2 - t * (lambda + mu^2)) * exp(-t*(lambda+mu^2))`.
The difference between this Hessian and the analogous orbit-only Hessian is

```text
4 * t * mu^2 * (t * (2*lambda + mu^2) - 1) * exp(-t*(lambda+mu^2)).
```

The Lean result certifies both one-mode scalar heat Hessians and their exact difference. It shows the two variations are not generally identical even for a constant scalar direction. Neither calculation identifies either scalar model with the physical paired-boundary trace, proves a boundary/contact or LLL contribution, establishes the common regulator, or settles Paper 1 novelty. The constant direction is an algebraic benchmark and need not satisfy the localized cubic/log boundary class.

The initial one-family Lean draft exposed expression-unfolding and scalar-reassociation errors. The generalized two-family proof is the current exact-source run. Earlier successful output is preserved as [`run5-original.log`](run5-original.log); the generalized check is in `success.log`.

Remaining to-do list: match the complete full-Weyl response to the physical paired-domain observable, including contact/density/LLL terms and common-regulator subtraction; complete the S001 audit and manuscript at its supported scope.

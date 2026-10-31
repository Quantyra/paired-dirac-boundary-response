# Full versus orbit-only constant-mode Hessian: GCP Lean receipt

Date: 2026-10-31 HST  
Source: [`lean/FullWeylConstantModeBenchmark.lean`](../../lean/FullWeylConstantModeBenchmark.lean)  
Source SHA-256: `B1E4EB25DDB6E05DB52300D39C7BC6D644883A75BCA3CD205FC1FBB6DC685894`

## Result

The exact source passed `lake env lean /tmp/FullWeylConstantModeBenchmark.lean` on GCP with exit code 0. It proves the full-mode second derivative by differentiating the exponential twice in Lean, then proves by ring normalization the exact Hessian difference from holding the angular mass fixed. `#print axioms` reports `[propext, Classical.choice, Quot.sound]` for both declarations; no `sorryAx` is reported. The captured output, including linter and reused-dependency warnings, is in [`success.log`](success.log).

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

This certifies a one-mode scalar heat benchmark. It shows that the full Weyl variation and a fixed-angular-mass orbit variation are not generally identical, even at a constant scalar direction. It does not identify either scalar model with the physical paired-boundary trace, prove a boundary/contact or LLL contribution, establish the common regulator, or settle Paper 1 novelty. The constant direction is an algebraic benchmark and need not satisfy the localized cubic/log boundary class.

Remaining to-do list: match the complete full-Weyl response to the physical paired-domain observable, including contact/density/LLL terms and common-regulator subtraction; complete the S001 audit and manuscript at its supported scope.

# GCP exact-source replay: the `s = √t k` substitution bookkeeping of `(4.3)`, and resolution of the factor `2`

Status: `lean/ManuscriptCubicChain.lean` at SHA-256
`3937dc312723028b3fac0a582ea17904e0145177e7732a7e8d541ec6940583fb`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptCubicChain.olean` at SHA-256
`4fa0d2033662feca453e00f006b5ea0d3f24662630d75e85169e3e8ffd480aa7`.
No `sorryAx`, no error. All seven declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## Resolution of the factor `2` (supersedes the "open check" of `-r2`)

The substitution `s = √t k` in `(4.2)` runs over `k ∈ ℝ`, hence over `s ∈ ℝ`,
while the draft's constant is the **half-line** integral
`I = ∫_0^∞ R3(s²) ds/s⁸`. Since `R3 ((-s)²) = R3 (s²)` and `(-s)⁸ = s⁸`
(`kernel_even`), the full-line integral is twice the half-line one. Applying
that factor `2`:

- `cubic_limit_coefficient_doubled` —
  `2·(144c_uc_w/(2π²)) = 144c_uc_w/π²`: the printed cubic coefficient;
- `log_coefficient_doubled` —
  `2·((D/(70π))t³·(-(1/2)log t)) = -(D t³ log t)/(70π)`: the printed log
  coefficient of `(4.4)`.

So the *same* factor `2` that appeared in both chains is exactly the
full-line → half-line evenness factor, and both printed coefficients are
**correct as written**. The earlier "open bookkeeping check" is withdrawn.

## Certified declarations (seven)

- `rpow_five_halves` — `t^(5/2) = t²√t`; `rpow_neg_five_halves` — `t^(-5/2) = 1/(t²√t)`;
- `cubic_scaling_factor` — `t^(-5/2)·(1/(πt))·(1/(2π))·(1/√t)·t⁴ = 1/(2π²)`;
- `cubic_limit_coefficient` — `144c_uc_w/(2π²) = 72c_uc_w/π²` (full line);
- `kernel_even` — `R3 ((-s)²)/((-s)⁸) = R3 (s²)/s⁸`;
- `cubic_limit_coefficient_doubled`, `log_coefficient_doubled` — the half-line
  coefficients, i.e. the printed ones.

## Still not certified

The value `I = -5π^{3/2}/49152` itself (two recorded obstacles: the missing
`Layercake.ir` for well-posedness, and the absent half-integer gamma/beta
machinery for the evaluation); the formal `IntegrableOn` statement;
Proposition 4.2's analysis and remainder; `(4.6)`; Section 5; the `K_ζ`
derivation; the unbounded realizations; all physical identifications; and the
two Fourier inputs.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-cubicchain-r4`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`)
- Source `3937dc31…`, olean `4fa0d203…`, exit code `0`

## Preserved failure

`-r3` failed on `kernel_even` (`(-1)^8 * s^8` normal form) and on a `ring`
after a `field_simp` that had already closed its goal; no statement changed.

# GCP exact-source replay: the `(4.3)` domination bound towards the integral value

Status: `lean/ManuscriptValue.lean` at SHA-256
`cb8e9120596b0cd82183d7f3d7374634c54e4439a86292297c99c53a4da0eb38`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptValue.olean` at SHA-256
`55e69a58e45a9f32c13d24d5b63534e51bc0851e523d15e2da243297e7693db3`.
No `sorryAx`, no error. All ten declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This is a step **towards** the value `I = ∫₀^∞R3(s²)ds/s⁸ = -5π^{3/2}/49152`,
not a certificate of it. What it establishes is the analytic domination needed to
interchange the two integrals in the certified cancellation form
(`R3_eq_cancellation`, receipt `gcp-manuscript-integrab-20261102`).

## Certified

| declaration | statement |
| --- | --- |
| `Hint` | `H(y) = ∫₀^y s(1-e^{-s})ds` |
| `Hint_closed` | `H(y) = y²/2 - 1 + (1+y)e^{-y}` (FTC) |
| `Hint_le` | `H(y) ≤ y²/2` for `y ≥ 0` |
| `Hint_ge_neg_one` | `-1 ≤ H(y)` for `y ≥ 0` |
| `Hint_abs_le` | `|H(y)| ≤ 1 + y²/2` for `y ≥ 0` |
| `Hint_sub_abs_le` | `|H(y) − y³/3| ≤ 1 + y²/2 + y³/3` for `y ≥ 0` (large regime) |
| `Hint_sub_abs_le_quartic` | `|H(y) − y³/3| ≤ y⁴/8` for `0 ≤ y ≤ 1` (small regime) |
| `rpow_neg9_mul_four/two/three` | `x^(-9/2)·x^k = x^(k−9/2)` for `x > 0` |
| **`kernel_pointwise_dominated`** | `α ∈ [0,1]`, `x > 0`: `|x^(-9/2)(H(a(α)x) − (a(α)x)³/3)| ≤ x^(-1/2)/8 + (11/6)x^(-3/2)` |

The two regimes are the substance: for `y = a(α)x ≤ 1` the quartic cancellation
gives `y⁴/8`, and `x^{-9/2}·x⁴ = x^{-1/2}`; for `y > 1` (so `x > 1`) the crude
bound `1 + y²/2 + y³/3` gives `x^{-9/2} + x^{-5/2}/2 + x^{-3/2}/3 ≤ (11/6)x^{-3/2}`.
The bound is uniform in `α` because `a(α) = α(1-α) ≤ 1`.

## Not certified

- the interchange itself (dominated convergence in `α` over `[0,1]`);
- integrability of the dominating function `x^{-1/2}/8 + (11/6)x^{-3/2}` on `(0,∞)`;
- the `α`-integral (`B(9/2,9/2)` after the substitution `y = a x`);
- `Real.Gamma` at `-5/2`, `-7/2`, `9/2`;
- the final arithmetic to `-5π^{3/2}/49152`.

So the value remains unproved. It is numerically confirmed to ten significant
digits (`notes/check-I.py`, recorded in
`notes/integral-value-reduction-20261102.md`), which is why the target is worth
pursuing, but that is not a certificate.

## Preserved defects and failures

- `-r1`: `ManuscriptR2Assembly` was not in the runner's dependency list, so the
  new module's import failed (`unknown module prefix`).
- `-r2`/`-r3`: `Hint_ge_neg_one` was **false as first stated** (`H(-2) ≈ -6.39`),
  so the `y ≥ 0` hypothesis had to be added; `Hint_sub_abs_le_quartic` needed the
  goal unfolded from `Hint y` to the raw integral before `linarith` could use
  `H_expansion`; `le_or_lt` does not exist in this build (`by_cases` + `push_neg`
  instead); `pow_le_pow_left` is named `pow_le_pow_left₀`; and
  `linarith`/`nlinarith` differ on `y² ≥ 0`.
- a PowerShell edit script was itself corrupted by the encoding trap (the `₀`
  subscript and `≤` in script literals), so the edits were redone with a
  byte-safe editor. Third occurrence of that trap in this workstream; the rule is
  now: never put non-ASCII in a `.ps1` literal.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-value-r5`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`
- Dependency chain recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`), `ManuscriptSmallOrder`
  (`b68f3387…`), `ManuscriptR2Asymptotics` (`0803650f…`), `ManuscriptR2Assembly`
  (`12e21190…`)
- Target source `cb8e9120…`, olean `55e69a58…`, exit code `0`
- Same `.ir`-farm procedure as `gcp-manuscript-integrab-20261102` (12 module
  rebuilds in a symlink farm; the retained trees are never written to)


## Addendum: the two-regime bounds in integrable form (run `-r8`)

The receipt now records run `-r8`: target source
`903480e1457b120dc07daf2b9686f95cd01333e23c4252aac765678a727939a9`,
olean `23fe5b16634c25084311d084e979632ba07a9ab715b3e15b11f3c3958f554203`,
exit code `0`, **14 declarations**, no `sorryAx`, no error.

Four declarations are new. They exist because the earlier single domination
`<= x^(-1/2)/8 + (11/6) x^(-3/2)` is **not** integrable on `(0,inf)`: the
`x^(-1/2)` term diverges at infinity. The bound has to be split by regime, and
each piece is integrable on its own half-line:

| declaration | statement |
| --- | --- |
| `kernel_dominated_small` | `0 < x <= 1`: `|x^(-9/2)(H(a x) - (a x)^3/3)| <= x^(-1/2)/8` |
| `kernel_dominated_large` | `1 <= x`: `|...| <= (11/6) x^(-3/2)` |
| `integrableOn_rpow_neg_half_Ioc` | `IntegrableOn (fun x => x^(-1/2)) (Ioc 0 1)` |
| `integrableOn_rpow_neg_three_halves_Ioi` | `IntegrableOn (fun x => (11/6) x^(-3/2)) (Ioi 1)` |

So both halves of the dominating bound are now certified integrable on the range
where they are used. This is the exact hypothesis a Tonelli/Fubini interchange
over `alpha` in `Ioi 0` will consume.

### Lemma-name findings (recorded so they are not rediscovered)

- Mathlib has **no** `integrableOn_Ioc_rpow_iff`; the usable form is
  `intervalIntegral.integrableOn_Ioo_rpow_iff (ht : 0 < t) :
  IntegrableOn (fun x => x^s) (Ioo 0 t) <-> -1 < s`, and `(0,1]` is reached from
  `(0,1)` by `volume ({1}) = 0` through `Measure.restrict_congr_set` +
  `MeasureTheory.ae_eq_set` + `Real.volume_singleton`. The lemma lives in
  `Mathlib.Analysis.SpecialFunctions.Integrability.Basic`, which must be imported
  explicitly (`ImproperIntegrals` alone does not put it in scope).
- `Ioo_subset_Ioc_self` and `Set.diff_eq_empty` do what they say.
- `Measure.integrableOn_of_bounded` is `Measure.integrableOn_of_bounded`, not
  `IntegrableOn.of_bound`.

### Still not certified

The interchange itself, the `alpha`-integral (`B(9/2,9/2)`), the half-integer
`Gamma` values, and the arithmetic. The value remains unproved.

## Addendum: continuity of `H`, and a failed attempt at the inner-integral lemma (run `-r12`)

Run `-r12` certifies one further declaration: target source
`d7cfc3ac1e904d8d181ebea82e47643b481df17daa6067b22a503c7a5f363202`,
olean `16751260c87eceecadf16150edd530488429032ce227aea4b1708fbdbc1fbf32`,
exit `0`, **15 declarations**, no `sorryAx`, no error.

- `continuous_Hint` -- `Continuous Hint`, from the closed form
  (`Hint_closed`) by `continuity`. This is the measurability input any Fubini
  interchange over the `x`-variable needs.

### The attempt that failed, and why (recorded, reverted)

I also tried `integrableOn_inner` -- for each `Î±`, the `x`-integrand
`x^(-9/2)(H(a(Î±)x) âˆ’ (a(Î±)x)Â³/3)` is `IntegrableOn (Ioi 0)`, by
`IntegrableOn.mono'` against the two certified regime bounds plus
`IntegrableOn.union`. It did **not** compile, on three points that are worth
recording rather than retrying blindly:

1. `fun_prop` cannot build `ContinuousOn (fun x => x^(-9/2) * â€¦) (Ioc 0 1)`: the
   exponent is negative, so it needs `ContinuousOn.rpow_const` with the side
   condition `x â‰  0`, and `fun_prop` reports "failed to infer `(?t : Set (â„ Ã— â„))`
   when applying `continuousOn_id'`". The workaround is to assemble
   `ContinuousOn` by hand from `continuousOn_id.rpow_const`,
   `continuous_Hint.comp`, and `.mul`/`.sub`.
2. `IntegrableOn` in this build is *definitionally* a conjunction
   (`AEStronglyMeasurable âˆ§ HasFiniteIntegral`), so `h.congr_fun` does not exist
   (`And.congr_fun`); a function equality has to be pushed through with
   `rwa [hfun] at h` instead.
3. The final `â€–g xâ€– â‰¤ â€–â€¦â€–` step needs `abs_of_nonneg` fed by
   `div_nonneg (Real.rpow_nonneg hx.1.le _) â€¦`, not by `positivity`, which cannot
   see `0 < x` from the hypothesis `x âˆˆ Ioc 0 1` in this shape.

One further operational defect: a PowerShell fixup script wrote the runner back
with CRLF, which makes `set -euo pipefail` fail on the builder (`set: pipefail:
invalid option name`); the runner must stay LF-only. That trap has now cost time
twice.

The source was reverted to the last certified state and only `continuous_Hint`
was added, so nothing unverified is committed.

### Status of the `(4.3)` value

Unchanged: the interchange, the `Î±`-integral `B(9/2,9/2)`, the half-integer
`Gamma` values and the arithmetic are still open. The value remains unproved.
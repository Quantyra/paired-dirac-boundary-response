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

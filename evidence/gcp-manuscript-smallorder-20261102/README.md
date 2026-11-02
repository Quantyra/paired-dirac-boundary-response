# GCP exact-source replay: the elementary remainder chain behind `R3(x) = O(x⁴)`

Status: `lean/ManuscriptSmallOrder.lean` at SHA-256
`b68f338739d524db5993cbaaec0322e4ef6d9f6833ee8bcdc6b99ad67b64c324`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptSmallOrder.olean` at SHA-256
`8898376f3bf0fb49cfe4607e24cba631668e07695db95cec7824b3c8d89fc619`.
No `sorryAx`, no error, no warning. All five declarations depend only on
`propext`, `Classical.choice` and `Quot.sound`.

## Certified statements

With `g₁(u) = u - 1 + e^{-u}` and `g₂(t) = ∫_0^t g₁`:

- `g1_nonneg` — `0 ≤ g₁ u` (from `1 - u ≤ e^{-u}`);
- `continuous_g1`;
- `g1_le` — `g₁ u ≤ u²/2` for `u ≥ 0` (`g₁` is `∫₀^u (1-e^{-v})dv` with
  `1-e^{-v} ≤ v`);
- `g2_nonneg` — `0 ≤ g₂ t` for `t ≥ 0`;
- `g2_le` — `g₂ t ≤ t³/6` for `t ≥ 0`.

## What these give, and what is still missing

Because `s(1-e^{-s}) = s² - s³/2 + s·g₂(s)`, these bounds yield

```text
∫_0^y s(1-e^{-s}) ds = y³/3 - y⁴/8 + ∫_0^y s g₂(s) ds,   0 ≤ ∫_0^y s g₂ ≤ y⁵/30,
```

and hence `R2(x) = x³/840 - x⁴/10080 + O(x⁵)` and `R3(x) = O(x⁴)`. **Not
certified here**: the termwise integration identity and the `α`-average (which
needs the beta moment `∫₀¹ a⁴ = 1/630`) that turn the chain into the displayed
`R2`/`R3` asymptotics, and the final integrability of `R3(s²)/s⁸` on `(0,∞)`.
Those are the next increment; no `R2`/`R3` asymptotic is claimed by this
receipt.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-smallorder-r4`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference dependency build
- Dependency modules recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`) and `ManuscriptCubic` (`6d49d6ac…`)
- `ManuscriptSmallOrder.lean` SHA-256 `b68f3387…`, olean `8898376f…`
- Exit code `0`

## Preserved failures

Three earlier attempts (`-r1` … `-r3`) failed at compiler level: the argument
order of `Real.add_one_le_exp` (`-u + 1`, not `1 + (-u)`), a `ring` after a
`convert` that had already closed the goal, an unfinishable `convert` for the
closed form of `g₂` (that lemma was dropped as unnecessary), and — importantly —
one attempt corrupted the source file through a line-based PowerShell rewrite
that mangled UTF-8; the file was rewritten from scratch and re-verified. No
statement or hypothesis was changed by a repair.

# GCP exact-source replay: the beta moment `∫₀¹ a⁴ = 1/630`

Status: `lean/ManuscriptR2Asymptotics.lean` at SHA-256
`0803650ff8974637ec4fa7975c91f90079d3acaee4194f72955ee4c6a91a0e89`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptR2Asymptotics.olean` at SHA-256
`c0a2fe1254b51b80a9488ede7e11efda84c44325591bfeb74edcc525f54b551c`.
No `sorryAx`, no error. The single declaration depends only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

`integral_weightA_quartic` :
`∫₀¹ a(α)⁴ dα = 1/630`, with `a(α) = α(1−α)`, by the explicit antiderivative
`t⁵/5 − 2t⁶/3 + 6t⁷/7 − t⁸/2 + t⁹/9` (the expansion `a⁴ = t⁴ − 4t⁵ + 6t⁶ − 4t⁷ + t⁸`).

This is the fourth beta moment required by the small-`x` assembly: together with
the already-certified `∫a³ = 1/140` it gives the coefficients `x³/840` and
`x⁴/10080` of `R2(x) = x³/840 − x⁴/10080 + O(x⁵)`.

## What is NOT certified (and why the assembly is not in this receipt)

Two attempts at the full assembly failed on the compiler and are recorded rather
than hidden:

1. The closed form `g₂(t) = t²/2 − t + 1 − e^{−t}` needs a function-level
   `convert`, which produced `Tactic 'unfold' failed to unfold 'g1'` and
   `No applicable extensionality theorem found`; the same blocked the cubic
   Taylor bound `1 − s + s²/2 − s³/6 ≤ e^{−s}` and hence `H_expansion`.
2. `intervalIntegral.continuous_parametric_intervalIntegral_of_continuous` does
   not have the signature assumed here, so `continuous_g2` was removed.

Accordingly this receipt claims only the beta moment. `R2(x)`, `R3(x) = O(x⁴)`
and the integrability of `R3(s²)/s⁸` on `(0,∞)` remain open.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-r2asym-r3`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`), `ManuscriptSmallOrder`
  (`b68f3387…`)
- Source `0803650f…`, olean `c0a2fe12…`, exit code `0`

# GCP exact-source replay: Proposition 4.2's printed coefficient algebra

Status: `lean/ManuscriptLogCoefficient.lean` at SHA-256
`d3c8c7d64825e8a878c9baa3c128b3dd2587676c73f8ec27a10d216340128061`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptLogCoefficient.olean` at SHA-256
`3575bede8180fb5cb0cb7286c2b944f97dba148b0d1f2f5e17a53d16cb47c217`.
No `sorryAx`, no error. All five declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

- `tail_ratio` — `288π/(2π·10080) = 1/70`: the ratio of the `(4.5)`
  log-tail coefficient `-288π` to the `R3` quartic coefficient `-1/10080` under
  the `(4.2)` normalization `1/(πt)·1/(2π)`.
- `log_conversion` — the exact integrand identity
  ```text
  (1/(πt))(1/(2π))·(-288πD k⁻⁹)·(-(t k²)⁴/10080) = (D/(70π))·t³·k⁻¹,
  ```
  with `D = c_u d_w + d_u c_w`: the `|k|⁻⁹` tail contributes `(D/(70π))t³`
  times `∫ dk/k`.
- `log_term_printed` — the printed `(4.4)` coefficient written as
  `-(D/(70π))·t³·log t`.
- `log_term_half_split` — the coefficient implied by the manuscript's own
  sentence "the integral of `dk/k` supplies `-(1/2) log t`", i.e.
  `-(D t³ log t)/(140π)`.
- `cubic_term_42` — the `t^{5/2}` coefficient of `(4.4)` restated as the
  certified `cubic_coefficient` (`144 c_u c_w/π² · (-5π^{3/2}/49152) =
  -15c_uc_w/(1024√π)`).

## Open convention check (recorded, not a defect claim)

`log_term_printed` and `log_term_half_split` differ by a factor `2`. Both are
consequences of the manuscript's *displayed* statements; the resolution must lie
in one of: the `1/(2π)` in `(4.2)`, the `-1/10080` leading coefficient of `R3`,
the `-288π` tail coefficient of `(4.5)`, or the `(1/2)` attached to the split.
This is an arithmetic observation about the displayed text and is **not** a
claim that the manuscript is wrong. The analysis itself — the frequency split,
the Fourier tails `o(|k|⁻⁹)`, the remainder — is not formalized here.

## Not certified

Proposition 4.2 as a whole (`(4.4)`'s limit, its `o(t³|log t|)` remainder, the
`(4.5)` tail derivation), the `(4.3)` integral value, the formal `IntegrableOn`
statement, `(4.6)`, Section 5, the `K_ζ` derivation, the unbounded realizations,
all physical identifications, and the two Fourier inputs
(`ManuscriptFourier.lean` is still uncompiled because the pinned Mathlib build
lacks `Analysis.Fourier.FourierTransformDeriv`).

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-logcoef-r1`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`)
- Source `d3c8c7d6…`, olean `3575bede…`, exit code `0`

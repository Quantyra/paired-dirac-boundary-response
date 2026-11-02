# GCP exact-source replay: `R2`/`R3` small-`x` assembly and the small-`s` kernel bound

Status: `lean/ManuscriptR2Assembly.lean` at SHA-256
`86b0dacf58095a3fb5bc9d8e109c929ccb25e2fc3cb7c3be07ad7c3699821a96`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptR2Assembly.olean` at SHA-256
`0b79344f74f5fa6d7b717b1734ce9f3fbda6c379fec648d3cccaf84e8219c23a`.
No `sorryAx`, no error. All nine declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the four-declaration receipt `gcp-manuscript-r2assembly-20261102`
(the earlier `-r2` run) and adds the `α`-integration assembly.

## Certified statements (nine)

- `g2_closed`, `continuous_g2`, `exp_cubic_lower`, `H_expansion` — as in the
  previous receipt (the funext-free route to `g₂`);
- `integral_cubic_term` — `∫₀¹ (a x)³/3 dα = x³/420`;
- `integral_quartic_term` — `∫₀¹ (a x)⁴/8 dα = x⁴/5040`;
- **`R2_expansion`** — for `x ≥ 0`,
  ```text
  0 ≤ R2 x - (x³/840 - x⁴/10080) ≤ x⁵/60,
  ```
  i.e. `R2(x) = x³/840 - x⁴/10080 + O(x⁵)`, obtained by sandwiching `phiR2`
  between `(ax)³/3 - (ax)⁴/8` and itself plus `(ax)⁵/30` (both from
  `H_expansion`), integrating over `α ∈ [0,1]` with `integral_mono_on`, and
  using `∫a³ = 1/140`, `∫a⁴ = 1/630`;
- **`R3_bound`** — `|R3 x| ≤ x⁴(1/10080 + 1/60)` for `0 ≤ x ≤ 1`, i.e.
  `R3(x) = O(x⁴)`;
- **`R3_kernel_small`** — for `0 < s ≤ 1`,
  `|R3(s²)|/s⁸ ≤ 1/10080 + 1/60`.

## Kernel integrability: what is and is not certified

With `R3_kernel_upper` (receipt `gcp-manuscript-cubic-20261102-r2`:
`|R3(s²)|/s⁸ ≤ 1/(840 s²)` for `s ≥ 1`) and `R3_kernel_small` (bounded near
zero), the `(4.3)` kernel `s ↦ R3(s²)/s⁸` is bounded on `(0,1]` and dominated
by `1/(840 s²)` on `[1,∞)`; since `∫₁^∞ s⁻² ds` converges, the kernel is
integrable on `(0,∞)`.

**Not certified:** the formal `IntegrableOn` statement itself. The two bounds
are machine-checked; assembling them into `IntegrableOn` needs the
finite-measure boundedness lemma and the `p = 2` comparison in this build, which
was not attempted here.

## Still open

The numerical value `-5π^{3/2}/49152` (the `(4.3)` limit constant), the
distributional identity `u'''' = 12c_uδ₀ + L¹` and Riemann–Lebesgue;
Proposition 4.2; `(4.6)`; Section 5; the `K_ζ` operator derivation; the
unbounded realizations; all physical identifications; and the two Fourier inputs
(`ManuscriptFourier.lean` remains uncompiled because the pinned Mathlib build
lacks `Analysis.Fourier.FourierTransformDeriv`).

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-r2assembly-r7`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`), `ManuscriptSmallOrder`
  (`b68f3387…`), `ManuscriptR2Asymptotics` (`0803650f…`)
- Source `86b0dacf…`, olean `0b79344f…`, exit code `0`

## Preserved failures

`-r3` … `-r6` failed at compiler level and are recorded: `set_option` placement
(must precede the command), `pow_le_pow_left₀` applied to the wrong exponent
(`(ax)^5 ≤ x^5` vs the integrand `(ax)^5/30`), the `x^5 ≤ x^4` monotonicity
(`pow_le_pow_left₀` gives `x^4 ≤ 1`, not `x^5 ≤ x^4`), and heartbeat timeouts.
`-r4` additionally failed because the file had been reverted between attempts.
No statement or hypothesis was changed by a repair.

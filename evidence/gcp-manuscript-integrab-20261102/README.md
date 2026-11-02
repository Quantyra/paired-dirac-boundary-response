# GCP exact-source replay: `R3_kernel_integrableOn` — the `(4.3)` kernel is integrable on `(0,∞)`

Status: `lean/ManuscriptR2Assembly.lean` at SHA-256
`d194b3413918084915429e7b44e666d7acf1aa23446b2d19b89548691218a2ca`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptR2Assembly.olean` at SHA-256
`c0845332b55172599110444e00bd2d8bd89a1e33a48fa8c74f42e620c61d6fe4`.
No `sorryAx`, no error. All fifteen declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This is the first certificate in this workstream that is genuinely
*measure-theoretic* rather than algebraic: an `IntegrableOn` statement proved
with Mathlib's integration library, not a bounded inequality.

## The certified statement

```text
R3_kernel_integrableOn :
  IntegrableOn (fun s : ℝ => R3 (s ^ 2) / s ^ 8) (Set.Ioi 0)
```

This closes the gap that all earlier receipts recorded as "the formal
`IntegrableOn` statement is not certified" (see
[`gcp-manuscript-cubic-20261102-r2`](../gcp-manuscript-cubic-20261102-r2/README.md)
and [`gcp-manuscript-r2assembly-20261102`](../gcp-manuscript-r2assembly-20261102/README.md)).

## Supporting declarations (also new)

| declaration | statement |
| --- | --- |
| `volume_Ioc_zero_one_lt_top` | `volume (Ioc 0 1) ≠ ⊤` |
| `continuous_R2` | `Continuous R2`, via `intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' (μ := volume)` |
| `continuous_R3` | `Continuous R3` |
| `measurable_R3_kernel` | the kernel is measurable |
| `rpow_neg_two` | `s^(-2) = 1/s²` for `s > 0` |
| `R3_kernel_integrableOn` | the assembled statement |

## Proof structure

1. `(0,1]`: `Measure.integrableOn_of_bounded` with `M = 1/10080 + 1/60`, using
   the previously certified `R3_kernel_small`.
2. `(1,∞)`: `Integrable.mono'` against `s ↦ s^(-2)`, which
   `integrableOn_Ioi_rpow_iff one_pos |>.mpr (by norm_num)` certifies integrable,
   using the previously certified `R3_kernel_upper` and `1/(840s²) ≤ 1/s²`.
3. Glue with `IntegrableOn.union` and rewrite `Ioi 0 = Ioc 0 1 ∪ Ioi 1`.

## Infrastructure finding: the missing-`.ir` blocker is patchable without network

The retained Space build (2.0 GB, 2694 oleans) is missing the `.ir` sidecar of
**85 modules** (2609 `.ir` present). Any `.olean` whose `.ir` is gone cannot be
imported, which is why every earlier attempt at `IntegrableOn` died at
`import` time (`missing IR data file for module …`).

This runner repairs exactly those modules, offline, **without writing to the
retained trees**:

1. create a symlink farm over the retained build: `cp -as <treelib> $run/farm`;
2. loop: compile a probe that imports the three target modules; on
   `missing IR data file for module M`, rebuild `M` *inside the farm* with
   `lean -R $run/farm -o $run/farm/<M>.olean <M>.lean`, replacing the symlink
   with a fresh olean that carries no IR requirement;
3. repeat until the probe imports cleanly.

This run needed **12 rebuilds** (recorded in `farm-rebuild.log`):
`Layercake`, `JapaneseBracket`, `Haar.NormedSpace`, `Normed.Affine.AddTorsor`,
`AffineSpace.Ordered`, `UrysohnsLemma`, `Measure.EverywherePos`,
`Metrizable.Urysohn`, `Haar.Unique`, `IntegralEqImproper`,
`Lebesgue.Integral`, `ImproperIntegrals`. The farm must be created inside the
run directory (a recursive `scp` of it would follow the symlinks — the copy was
deleted from this receipt for that reason).

This does **not** unblock the Fourier stack: those modules
(`Analysis.Fourier.FourierTransformDeriv`, `LpSpace`) are absent from the build
entirely, not merely stripped of `.ir`, so `ManuscriptFourier.lean` still
cannot compile.

## Not certified

- the value of the integral (`−5π^{3/2}/49152`);
- Proposition 4.2's analysis, tails and remainder;
- the two Fourier inputs and hence Proposition 4.3 as a whole;
- `(4.6)`'s conventions and mixed derivative;
- Section 5's unbounded statements and `(5.6)`; the operator derivation of
  `K_ζ`; the unbounded realizations; every physical identification.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-integrab-r4`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`
- Dependency chain recompiled from pinned sources:
  `ManuscriptFlatBound` (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`),
  `ManuscriptSmallOrder` (`b68f3387…`), `ManuscriptR2Asymptotics` (`0803650f…`)
- Target source `d194b341…`, olean `c0845332…`, exit code `0`,
  finished `Mon Nov  2 06:24:48 UTC 2026`

## Preserved failures

`-r1`: `aesop`/`continuity` could not see through `Function.uncurry`;
`R3_kernel_small` was missing because the file had been overwritten instead of
extended. `-r2`: a PowerShell here-string mangled the non-ASCII symbols
(`ℝ`, `≠`, `⊤`, `∫`, `×`) into CP1252 mojibake — fixed by writing the Lean text
with a byte-safe editor and doing only ASCII edits in scripts (a repeat of the
ledger-encoding lesson). `-r3`: `IsLocallyFiniteMeasure ?m` metavariable (fixed
by `(μ := volume)`) and `|R3(s²)/s⁸|` vs `|R3(s²)|/s⁸` (fixed by `abs_div`).

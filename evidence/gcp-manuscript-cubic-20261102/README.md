# GCP exact-source replay: Proposition 4.1 coefficient algebra and the `R3` kernel structure

> **Correction (2026-11-02, later the same day).** The "finding" section below
> is **wrong**. `R3(s²)/s⁸ ≍ -1/(840 s²)` *is* integrable at infinity
> (`p = 2 > 1`), so the manuscript's step is sound there. The lower bound
> certified here is a decay-rate statement, not a divergence statement. See
> [`gcp-manuscript-cubic-20261102-r2`](../gcp-manuscript-cubic-20261102-r2/README.md),
> which adds the matching upper bound `R3_kernel_upper`. This receipt is kept
> unchanged as history.

Status: `lean/ManuscriptCubic.lean` at SHA-256
`cdd68d77759efad69e9ce3c2ff622e8aa07b784e61b6cbb7c52e8b7366e3dcfe`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptCubic.olean` at SHA-256
`bfc62c7ddaccd1f310f2a710b2e7f8d32e36d5187db5c19dda5508340fa5a161`.
No `sorryAx`, no compiler error and no warning. All nine declarations depend
only on `propext`, `Classical.choice` and `Quot.sound`.

The module imports `ManuscriptFlatBound` (the certified `(4.7)` kernel bound);
the runner re-verifies and recompiles that module's pinned source
(`c769670d…`) first, and retains both oleans.

## Certified statements

- `pi_rpow_three_halves`, `sqrt_pi_mul_sqrt_pi` — `π^{3/2} = π√π` and
  `√π·√π = π`.
- `cubic_coefficient` — the printed algebraic reduction of `(4.3)`:
  ```text
  144 c_u c_w / π² · (-5 π^{3/2} / 49152) = -15 c_u c_w / (1024 √π).
  ```
  So if the integral `I` really equalled `-5π^{3/2}/49152`, the printed limit
  constant `-15c_uc_w/(1024√π)` would follow exactly.
- `R3_eq` — `R3(x) = F(x) - 1 + x²/120 - x³/840`, at the printed definition.
- `R3_nonpos`, `R3_lower` — `-x³/840 ≤ R3 x ≤ 0` for `x ≥ 0`, from the
  certified `R2` bounds.
- `Ffun_le_one` — `F(x) ≤ 1` for `x ≥ 0`, since `(1+u)e^{-u} ≤ 1`.
- `R3_large_neg` — `R3 x ≤ -x³/1680` for `x ≥ 14`.
- `R3_kernel_domination` — for `s ≥ √14`,
  `1/(1680 s²) ≤ |R3 (s²)| / s⁸`.

## Finding (audit result, not a certification)

`R3(x)` does **not** tend to `0` as `x → ∞`: `F(x) → 1/2` while the subtracted
polynomial contributes `-x³/840`. Consequently

```text
R3(s²)/s⁸ ≍ -1/(840 s²)   as s → ∞,
```

so the integral in `(4.3)`'s proof,

```text
∫_0^∞ R3(s²) ds / s⁸,
```

**diverges** as a Lebesgue integral at `+∞`; `R3_kernel_domination` is the
machine-checked pointwise half of that statement. The printed proof step
"`R3(x)=O(1+x³)` at infinity, hence the scaled kernel is integrable, hence
dominated convergence applies" therefore cannot be correct as written. Either
the subtraction must be windowed (compact support of the profiles does **not**
help: the `k^{-8}` tail times the `k⁶` growth still gives `k^{-2}`), or the
integral must be read as a finite part / analytic continuation, or `(4.2)` must
be redefined. The value `-5π^{3/2}/49152` is not certified here and should not
be cited until the subtraction is repaired.

This is a defect found by formalization. It does not affect the `(4.7)`/`(4.8)`
statements, which use `R2` and are certified.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-cubic-r5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Mathlib commit verified in the runner: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Dependency root: `~/quantyra-space-runs/space-20261007T093129Z-retry1/packages`
- `ManuscriptCubic.lean` SHA-256: `cdd68d77759efad69e9ce3c2ff622e8aa07b784e61b6cbb7c52e8b7366e3dcfe`
- `ManuscriptCubic.olean` SHA-256: `bfc62c7ddaccd1f310f2a710b2e7f8d32e36d5187db5c19dda5508340fa5a161`
- Exit code: `0`, finished `Mon Nov  2 00:27:10 UTC 2026`

The executed runner is
[`lean/cloud-manuscript-cubic-20261102.sh`](../../lean/cloud-manuscript-cubic-20261102.sh);
a copy is retained here.

## Preserved failures

Four earlier attempts (`-r1` … `-r4`) failed at compiler level only: `rpow_add`
taking `0 < π` rather than `0 ≤ π` in this Mathlib, `add_one_le_exp` argument
order, two division-lemma names (`div_le_div_iff` is not available; the code now
uses `le_div_iff₀`), and two `positivity` calls that needed explicit hypotheses.
No statement or hypothesis was changed by a repair.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.

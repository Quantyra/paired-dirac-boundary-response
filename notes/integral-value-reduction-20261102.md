# The `(4.3)` integral value: reduction and a numerical check (2026-11-02 UTC)

Status: the value is **not** certified in Lean. This note records (a) the exact
reduction now available in certified form, (b) a decisive numerical check, and
(c) an arithmetic claim of mine that the numerics refuted, so that it is not
repeated.

## 1. Reduction (certified pieces)

With `x = s²` (`ds = dx/(2√x)`, `s⁸ = x⁴`),

```text
I := ∫₀^∞ R3(s²) ds / s⁸ = (1/2) ∫₀^∞ x^(-9/2) R3(x) dx.
```

The integrand converges at both ends: `R3(x) = -x⁴/10080 + O(x⁵)` near `0`
(certified `R2_expansion`, `R3_bound`) so the integrand is `O(x^(-1/2))`, and
`R3(x)/x⁴ → -1/840` at infinity (certified `R3_kernel_upper`), and
`R3_kernel_integrableOn` proves the `s`-form is `IntegrableOn (Ioi 0)`.

The **cancellation form** is now certified
(`gcp-manuscript-integrab-20261102`, declaration `R3_eq_cancellation`):

```text
R3 x = (1/2) ∫₀¹ [ H(a(α)x) − (a(α)x)³/3 ] dα,   H(y) = ∫₀^y s(1-e^{-s})ds,
```

with `cubic_term_eq` identifying the subtracted cubic term as `x³/840`. This
matters because the individual pieces of `R3` (`F`, `1`, `x²/120`, `x³/840`)
each make `∫₀^∞ x^{-9/2}(·)dx` diverge at `0`; only the combination is
integrable. Any rigorous evaluation must therefore avoid termwise splitting, and
the only clean route (substituting `y = a x` per `α`) produces
`I = (1/2)∫₀¹ a^{7/2}dα · J` with `J = ∫₀^∞ y^{-9/2}(H(y) − y³/3)dy`, where the
inner finite part needs Hadamard regularization — machinery Mathlib does not
have. So the evaluation is a genuine research task, not a missing lemma.

## 2. Numerical check (decisive for correctness of the target)

Using `x = e^u`, so `I = (1/2)∫_{-∞}^{∞} e^{-7u/2} R3(e^u) du` with exponential
decay at both ends, and evaluating `R3` from the cancellation form with the
series `H(y) − y³/3 = -y⁴/8 + y⁵/30 − …` for small `y` (to keep the quartic
cancellation exact in floating point):

```text
target -5 pi^(3/2)/49152 = -5.664396155631e-04
U= 20.0 N= 2000  I = -5.663810640058e-04   I/target = 0.999897
U= 40.0 N= 4000  I = -5.664396128439e-04   I/target = 1.000000
U= 60.0 N= 6000  I = -5.664396155020e-04   I/target = 1.000000
U= 80.0 N= 8000  I = -5.664396155022e-04   I/target = 1.000000
```

Agreement to ten significant digits. Script: `notes/check-I.py` (pure Python 3,
run on the builder).

**Conclusion:** the printed constant `-5π^{3/2}/49152` is numerically correct.
This is *not* a proof and is not cited as one; it is a check on the target.

## 3. Retracted: my own hand computation

While reducing by hand I obtained `I = -2.03e-4·π^{3/2}`-style value, i.e.
approximately **twice** the printed constant, and was about to record a
"factor 2 discrepancy". The numerics above refute that: the error was mine, in
the Hadamard finite-part bookkeeping of the divergent pieces
`∫₀ y^{-5/2}`, `∫₀ y^{-3/2}`, `∫₀ y^{-9/2}`. Recorded here so the mistake is not
repeated, and as a reminder that the finite-part subtraction is exactly where a
hand calculation of this integral goes wrong.

(For the record, this is the third such retraction in the workstream, after the
`(4.11)` exponent report and the `R3(s²)/s⁸` "divergence" claim. All three were
cases of an inference that looked forced but was not checked against a
computation.)

## 4. What is still required for a Lean certificate

1. a convergent representation of `I` that avoids Hadamard finite parts — for
   example proving the double integral
   `(1/2)∫₀¹∫₀^∞ x^{-9/2}[H(ax) − (ax)³/3] dx dα` absolutely convergent and then
   interchanging (the `α`-inner substitution gives `a^{7/2}`, whose `α`-integral
   is a Beta value `B(9/2,9/2)`);
2. `Real.Gamma` at the half-integers `-5/2`, `-7/2` (and `9/2`), which the target
   value needs;
3. a proof that the resulting combination equals `-5π^{3/2}/49152`.

Steps 1–2 are within reach of the present toolchain; step 3 is arithmetic once
1–2 are done. Nothing here requires the Fourier stack.

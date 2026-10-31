# Seam coefficients for the leading full-Weyl angular tower

This note evaluates the cubic and cubic-log terms of the leading small-time
angular tower kernel in the fixed product tangent model. The result is
conditional on the Fourier-tail hypotheses below and on a separate physical
half-folding normalization. It does not identify this diagnostic with the
paired physical response or close P1-C.

## Kernel and hypotheses

Use `flat-tangent-angular-sum.md` and the leading tower term isolated in
`full-weyl-angular-local-subtraction.md`. Write

```text
alpha0 = 2 b^2,
K(x) = 1 + 3 A(x) - (3/2) x A'(x),
A(x) = integral_0^1 exp(-alpha(1-alpha)x) d alpha.
```

The leading full-plane rank-two multiplier is
`2 alpha0/(pi t^2) K(t k^2)`. For this note only, impose the conditional
physical-half factor `1/2`, giving

```text
H_half,lead(t,k) = alpha0/(pi t^2) K(t k^2).
```

Let the real even localized profiles have cubic and logarithmic jets as in
`flat-log-coefficient-integrable-fifth.md`, with compact localization and
integrable fifth derivative after those jets are removed. In particular,
with `C = c_u d_w + d_u c_w`, assume the product tail

```text
conjugate(uhat(k)) what(k)
  = 144 c_u c_w |k|^-8 - 288 pi C |k|^-9 + o(|k|^-9).
```

The cited Fourier-tail note gives a sufficient condition for this expansion.
No claim is made here for the broader weighted class without an identified
logarithmic jet.

## Cubic term

Subtract the leading local polynomial of `K` and set

```text
K3(x) = K(x) - 4 + x/4 - x^3/560,
J_K = integral_0^infinity K3(s^2) s^-8 ds.
```

The alpha-integral Taylor expansion gives `K(x)=4-x/4+x^3/560-x^4/5040+
O(x^5)` at zero, so the integrand is bounded near zero. At infinity `A` and
its derivatives are bounded by the alpha-integral estimates and `K3=O(1+x^3)`,
so the integral converges absolutely.

Here is an evaluation keeping the two needed integrals separate. Put
`Q(z)=exp(-z)-1+z-z^2/2+z^3/6` and
`A3(x)=1-x/6+x^2/60`. Then

```text
A(x)-A3(x) = integral_0^1 Q(alpha(1-alpha)x) d alpha,
J_A = integral_0^infinity [A(s^2)-A3(s^2)] s^-8 ds
    = pi^(3/2)/12288,
J_d = integral_0^infinity s^-6 [A-A3]'(s^2) ds
    = 7 pi^(3/2)/24576.
```

For example, Tonelli applies to the nonnegative integral representations
using `Q>=0` and `Q'>=0` on the positive axis. The substitutions
`z=alpha(1-alpha)s^2` reduce the integrals to beta integrals and
`integral_0^infinity Q(z) z^(-9/2) dz=16 sqrt(pi)/105`,
`integral_0^infinity Q'(z) z^(-7/2) dz=8 sqrt(pi)/15`.
Since `K3=3(A-A3)-(3/2)x(A-A3)'`, these values give

```text
J_K = 3 J_A - (3/2) J_d = -9 pi^(3/2)/49152.
```

Rescale `s=sqrt(t)|k|` in the cubic Fourier tail. Including both frequency
signs and the `dk/(2 pi)` measure, its coefficient is
`144 alpha0/pi^2 * J_K`. Thus the leading cubic-cubic term of this
conditional half-normalized tower diagnostic is

```text
-27 b^2/(512 sqrt(pi)) c_u c_w t^(3/2).
```

The bounded-frequency part and the `o(|k|^-9)` tail contribute
`o(t^(3/2))`; lower terms in the angular heat expansion are smaller by at
least one power of `t` for this cubic scaling. This is an asymptotic statement
for the subtracted leading-kernel diagnostic, not a uniform curved-family
remainder bound.

## Cubic-log term

The fourth Taylor coefficient of `K` is `-1/5040`. On the intermediate
frequency interval `K0 <= |k| <= t^-1/2`, the product term
`-288 pi C |k|^-9` therefore yields the marginal integral `dk/|k|`.
The two frequency signs, Fourier measure, half-normalized multiplier, and
`integral_(K0)^(t^-1/2) dk/k = -(1/2) log(t)+O(1)` give

```text
-alpha0/(35 pi) C t^2 log(t)
  = -2 b^2/(35 pi) C t^2 log(t).
```

For the coefficient, the full frequency integral of the `|k|^-9` tail
including both signs and `dk/(2 pi)` is `-288 C integral dk/k`. Its
logarithmic part is `+144 C log(t)`; multiplying by
`alpha0 (-1/5040)/(pi)` gives the displayed value.

For comparison, the orbit-only leading tower kernel is `I-xI'`; direct
expansion gives its `x^4` coefficient `-1/10080`. Applying the same Fourier
tail calculation with the same half normalization gives
`-alpha0/(70 pi) C=-b^2/(35 pi) C`. The full-Weyl value above is twice that
magnitude, so the difference is `-b^2/(35 pi) C t^2 log(t)`.

The product-tail little-o remainder is `o(t^2 |log t|)` after rescaling and
splitting at `t^-1/2`; it need not be `O(t^2)`. Subleading angular heat
coefficients do not alter this leading logarithmic coefficient, since their
prefactors begin one power of `t` below the leading `alpha0/t` tower term.

## Comparison and claim boundary

Multiplying the orbit-only massless coefficients by the leading tower factor
`Theta(t) ~ 2b^2/t` would give respectively
`-15 b^2/(512 sqrt(pi)) c_u c_w t^(3/2)` and
`-b^2/(35 pi) C t^2 log(t)`. The fixed-product full-Weyl kernel instead gives
the cubic coefficient `-27 b^2/(512 sqrt(pi))` and the logarithmic
coefficient `-2 b^2/(35 pi) C t^2 log(t)`. Thus the full-Weyl leading
logarithmic coefficient differs from the orbit-only value by
`-b^2/(35 pi) C`; the angular-mass variation terms do not cancel at this
order in this fixed-product diagnostic. This is a correction to the previous
version of this note, which lost a factor of two in converting the marginal
frequency integral into its logarithmic coefficient. It does not show that
physical observables disagree: conversion, density and second vertices, the
LLL, physical domains, and common-regulator subtractions have not been
matched here.

The exact rational difference between the conditional full-Weyl cubic and
orbit-only tower coefficients is checked in the GCP receipt
[`gcp-full-weyl-seam-comparison-20261031`](../evidence/gcp-full-weyl-seam-comparison-20261031/README.md).
That receipt's log equality is superseded: it certifies ring algebra for the
previously stipulated coefficient, but the full-Weyl coefficient was not the
one implied by `K_4=-1/5040` and the stated Fourier tail. The corrected
coefficient-difference theorem in
`lean/FullWeylSeamCoefficientComparison.lean` has now been replayed on GCP
with Lean 4.30.0, exit code 0, standard axioms only and no reported
`sorryAx`; see
[`gcp-full-weyl-seam-coefficient-comparison-corrected-20261031`](../evidence/gcp-full-weyl-seam-coefficient-comparison-corrected-20261031/README.md),
certified source SHA-256
`98f2e7138670b493fc5c0b551ca8ae7a78a499673977ad76a5e1418a5c90036e`. The old
run used Lean 4.30.0 and reused source-only dependencies with local-change
warnings. Neither result proves the integral evaluation or analytic
remainders. The earlier
`FullWeylAngularJet` receipt checks only the rational polynomial cancellation
in the local jet. Neither receipt proves the half-folding normalization,
physical response, or common-regulator transfer.

Remaining to-do list: verify this tangent asymptotic against the exact
physical paired observable and common regulator, complete novelty review,
and certify only the supported claims on GCP.

# Fourier tails of localized cubic and logarithmic seam profiles

Status: ordinary argument for a specific smooth-cutoff model. This is not a
proof of the full weighted mass/log class, the paired folding, or any curved
trace statement, and it has not been checked in Lean. It supplies the Fourier
tail input used conditionally in [the coefficient calculation](flat-boundary-coefficients.md).

Let chi be real, even, smooth and compactly supported on R, with chi=1 on a
neighborhood of zero. Set

    f(y) = chi(y) [c |y|^3 + d |y|^4 log|y|],

with real c,d, and Fourier transform fhat(k)=integral exp(-iky) f(y)dy.
The logarithmic value at zero is defined by continuity. Distributional
derivatives below use the same convention, so F[partial_y^n f]=(ik)^n fhat.
For |k| tending to infinity, the claim is

    fhat(k) = 12 c |k|^-4 - 24 pi d |k|^-5 + O_N(|k|^-N)

for every fixed N, after interpreting the error as coming from the smooth
cutoff terms. The statement is asymptotic away from k=0; no assertion about
products of singular distributions at k=0 is needed.

## Cubic profile

As distributions, partial_y^4 |y|^3 = 12 delta_0. Applying Leibniz to
chi |y|^3 gives

    partial_y^4 (chi |y|^3) = 12 delta_0 + h_3,

where h_3 is smooth and compactly supported: every derivative of chi is
supported away from zero and chi is exactly one near zero. Consequently
hhat_3(k)=O_N(|k|^-N) for every N. Dividing by (ik)^4 gives the leading
12 |k|^-4 and a rapidly decaying error.

## Logarithmic profile

For y nonzero,

    partial_y^4 (y^4 log|y|) = 24 log|y|+50,
    partial_y^5 (y^4 log|y|) = 24/y.

The fourth derivative is locally integrable, so the fifth identity is
`24 pv(1/y)` as a distribution, with no delta term. Leibniz gives

    partial_y^5 [chi y^4 log|y|] = 24 chi pv(1/y) + h_4,

where h_4 is smooth and compactly supported away from zero. The standard
Fourier identity for the stated convention is

    F[pv(1/y)](k) = -i pi sgn(k).

It follows, for example, by Abel regularizing the sine integral; the real
cosine part cancels by oddness. Moreover, the Fourier transform of
(1-chi)/y is rapidly decreasing for |k| tending to infinity: this function
is smooth, tends to zero at both ends, and every derivative of positive
order is integrable. Repeated integration by parts gives arbitrary inverse
powers. Hence

    F[chi pv(1/y)](k) = -i pi sgn(k) + O_N(|k|^-N).

Dividing 24 times this expression by (ik)^5 gives
`-24 pi |k|^-5` plus a rapidly decaying error. The sign uses i^5=i and
sgn(k)/k^5=|k|^-5. Smooth cutoff terms have the same rapid-decay property.

## Product and limits of scope

For two profiles with coefficients (c_u,d_u) and (c_w,d_w), their Fourier
transforms are real and even. Multiplication yields

    conjugate(uhat(k)) what(k)
      = 144 c_u c_w |k|^-8
        - 288 pi (c_u d_w+d_u c_w) |k|^-9 + O(|k|^-10).

The d_u d_w term is part of the O(|k|^-10) remainder. This verifies the
Fourier product hypothesis of the coefficient calculation for the declared
pure profiles and smooth even cutoffs. Other cutoffs equal to one near zero
may change the rapidly decreasing terms; extra weighted remainders or finite
higher logarithmic powers need separate tail estimates and cannot be folded
into this result by assertion.

Remaining to-do list: audit the principal-value transform and weak product
rules in the intended formal library, extend the tail estimate only where
needed for the admissible family, justify paired folding and contacts, and
complete the manuscript and GCP Lean certification.

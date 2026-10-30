# Gaussian bridge quadratic term with a fixed insertion

Status: ordinary periodic model estimate, not Lean-certified and not a
bound on the full curved contact. This extends
[the unweighted calculation](bridge-gaussian-quadratic.md) to a nonconstant
fixed insertion, while retaining all frequencies and bridge times.

## Claim

Use the same 2π-periodic real f∈H³, Brownian bridge ξ and B_h as in the
unweighted note. Let u be real with Fourier coefficients u_m such that

    U₀=Σ_m |u_m|<∞,     U₄=Σ_m |m|⁴ |u_m|<∞.

For example u∈H^s with s>9/2 suffices by Cauchy–Schwarz. Define

    Q_u(h)=h² E ∫₀^{2π} u(y) B_h(y)²dy.

Then Q_u is C⁶, even, and with M=sup_s |(d/ds)^6(s²e^(−s²))|,

    sup_h |Q_u^(6)(h)|
      ≤ M [2 U₀ ||f'''||²₂ + (U₄/8)||f'||²₂].           (1)

Consequently subtracting its Taylor polynomial through h⁴ leaves a
remainder bounded by |h|⁶/720 times the right side of (1). This assumes a
fixed insertion with the displayed Fourier norm; it does not assert the
weaker weighted mass/log class required for the physical u and v.

## Proof

Let f_k=(2π)^(−1)∫f(y)e^(−iky)dy, and similarly for u. For finite Fourier
sums, expansion and the Gaussian characteristic function give

    Q_u(h)=2π h² Σ_{k,l} (ik)(il) f_k f_l u_{−k−l}
              ∫₀¹∫₀¹ exp[−h² V_{αβ}(k,l)] dα dβ,

where V is half the variance of kξ_α+lξ_β. It is nonnegative. Since each
half-variance α(1−α) is at most 1/4, covariance Cauchy–Schwarz yields

    0≤V_{αβ}(k,l)≤(|k|+|l|)²/4.

For F(s)=s²e^(−s²), the sixth h derivative of h²e^(−Vh²) is
V²F^(6)(√V h), including V=0 by continuity. Put m=k+l. The elementary
inequalities

    (|k|+|l|)²≤4|kl|+m²,
    V²≤2|kl|²+m⁴/8

hold for both signs of kl. Therefore the absolute sixth-derivative sum is
bounded by 2πM times

    Σ_{k,l}|u_{−k−l}| [2|k|³|l|³ + |k+l|⁴|kl|/8] |f_k f_l|.

For each fixed m, Cauchy–Schwarz applied to l=m−k bounds the two inner sums
by Σ_k |k|⁶|f_k|² and Σ_k |k|²|f_k|² respectively. Summing the u weights
and using Parseval gives (1). Finite sums justify differentiation; the
same summable majorant passes the result to H³ by Fourier approximation,
uniformly in h for the sixth derivatives and locally uniformly for lower
ones. The bridge law is invariant under ξ→−ξ, so Q_u is even. Taylor's
integral remainder proves the stated consequence.

## Scope

This controls a nonconstant multiplier at the fixed base point y, but not
the separate insertion v(y+hξ_α) in the source, nor its nonlinear
A_h^(−1/2) and exponential prefactors. Gaussian correlations with those
factors and the paired half-boundary require further estimates. The high
Fourier regularity imposed on u also prevents treating this as the claimed
uniform estimate for general rough mass/log directions. No numerical
calculation is needed for (1).

Remaining to-do list: address shifted insertions and nonlinear prefactors in
the physical norms, handle boundary and regulator limits, verify the physical
domain, complete prior-art assessment, and certify supported results on GCP.

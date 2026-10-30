# Gaussian averaging of the quadratic bridge coefficient

Status: ordinary periodic model calculation supporting the bridge audit,
not a proof of the full curved mixed response or a Lean certificate. It
retains the actual Gaussian bridge covariance but isolates the h²B_h²
contribution with a constant prefactor and no insertions. It answers a
specific issue in [the redistribution audit](bridge-derivative-redistribution.md).

## Claim

Let f be real and 2π-periodic in H³, with Fourier coefficients
f_k=(2π)^(−1)∫₀^{2π} f(y)e^(−iky)dy. Let ξ be a centered Brownian bridge
with covariance 2(min(α,β)−αβ), 0≤α,β≤1, and define

    B_h(y)=∫₀¹ f'(y+hξ_α)dα,
    Q(h)=h² E ∫₀^{2π} B_h(y)²dy.

Then Q is six times continuously differentiable for h∈R and

    sup_h |Q^(6)(h)| ≤ (M/30) ||f'''||²_{L²(0,2π)},       (1)
    M=sup_{s∈R} |d⁶/ds⁶ [s²e^(−s²)]| < ∞.

As Q is even, its Taylor remainder after the h⁴ term obeys

    |Q(h)−Q(0)−Q''(0)h²/2−Q^(4)(0)h⁴/24|
       ≤ (M/21600) |h|⁶ ||f'''||²₂.                     (2)

This is an explicit all-frequency bound; M need not be evaluated to establish
finiteness. The constant and L² norm concern this model alone.

## Derivation

For smooth f, Parseval and the Gaussian characteristic function give

    E ∫ B_h²dy = 2π Σ_k k² |f_k|² A(k²h²),
    A(x)=∫₀¹ e^(−α(1−α)x)dα.

Indeed Var(ξ_α−ξ_β)=2d(1−d), d=|α−β|, and
∫₀¹∫₀¹ g(|α−β|)dαdβ=2∫₀¹(1−d)g(d)dd. Since the exponential is
symmetric under d→1−d, the latter equals ∫₀¹g(d)dd. This retains all
bridge times, including their endpoints.

Put a=α(1−α) and F(s)=s²e^(−s²). For k≠0,

    d⁶/dh⁶ [h² e^(−a k²h²)] = a² k⁴ F^(6)(|k|√a h),

with the same identity at a=0 by continuity. The sixth derivative F^(6) is
a polynomial times e^(−s²), hence bounded. Since ∫₀¹a²dα=1/30, the
absolute value of the kth differentiated term is bounded by
(M/30) k⁶|f_k|². Parseval then proves (1). Finite Fourier sums justify the
calculation first; the same summable bound gives uniform convergence of
sixth derivatives for H³ inputs, while the lower derivatives converge on
compact h intervals. Thus the limit is C⁶ and the differentiated identity
is valid. Taylor's integral remainder gives (2), including the odd terms'
vanishing by evenness.

For the previous f_N=2+N^(−3)sin(Ny), the separated ∫f_N'f_N^(7) grows
like −πN², but (1) gives a uniform bound for the averaged quantity Q^(6).
The oscillatory Gaussian shifts and the h² prefactor therefore do control
this isolated quadratic term; the separated-product counterexample cannot
be used as a counterexample to it.

## Remaining gap

The source's full bridge integrand also contains A_h^(−1/2), the nonlinear
exponential, u and v insertions, a physical boundary and the matched
regulator. These factors couple the path averages, so this diagonal Fourier
argument does not automatically extend to them. It neither proves their
cancellations nor a uniform curved-family remainder. No numerical computation
is needed for (1)–(2).

Remaining to-do list: extend the averaging estimate to the coupled prefactor
and insertions, handle paired boundary terms and the common regulator, audit
physical domains and prior art, and certify supported results on GCP.

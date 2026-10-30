# Quadratic bridge term with fixed and shifted insertions

Status: ordinary periodic model estimate, not Lean-certified and not a
uniform curved-contact theorem. This extends
[the fixed-insertion estimate](bridge-fixed-insertion.md) to the source's
additional bridge-time-shifted scalar insertion, still with constant
nonlinear prefactor.

## Statement

Let f∈H³ be real and 2π-periodic, and let ξ be the centered bridge with
covariance 2(min(α,β)−αβ). Let real periodic u,v have Fourier coefficients
with finite U₀=Σ|u_m|, U₄=Σ|m|⁴|u_m|, V₀=Σ|v_n| and V₄=Σ|n|⁴|v_n|.
Define B_h(y)=∫₀¹ f'(y+hξ_α)dα and

    Q_{u,v}(h)=h² E ∫₀^{2π} u(y)
       [∫₀¹ v(y+hξ_γ)dγ] B_h(y)² dy.

Then Q_{u,v} is even and C⁶, and, for
M=sup_s |(d/ds)^6(s²e^(−s²))|,

    sup_h |Q_{u,v}^(6)(h)| ≤ M [
       8U₀V₀ ||f'''||²₂ +(4U₄V₀+64U₀V₄)||f'||²₂ ].       (1)

Its Taylor remainder after h⁴ is bounded by |h|⁶/720 times the right
side. For example H^s with s>9/2 supplies each insertion's Fourier norms.
These are stronger conditions than the physical rough-direction bounds.

## Proof

For finite Fourier sums, write m+k+l+n=0 for the modes of u, the two f'
factors, and v. The expected shifted product is

    exp[−h² V_{αβγ}(k,l,n)],

where V is half the variance of kξ_α+lξ_β+nξ_γ. The bridge covariance
and Cauchy–Schwarz imply

    0≤V≤(|k|+|l|+|n|)²/4.

Since |k+l|=|m+n|≤|m|+|n| and
(|k|+|l|)²≤4|kl|+|k+l|², one obtains

    |k|+|l|+|n|≤2√|kl|+|m|+2|n|,
    V²≤8|kl|²+4|m|⁴+64|n|⁴.                           (2)

The last line uses (a+b)⁴≤8(a⁴+b⁴), twice, and is intentionally not
optimized. Differentiating h²e^(−Vh²) six times gives V²F^(6)(√Vh),
including V=0 by continuity. Thus, after taking absolute values and
integrating the three bridge times, the Fourier sum is bounded by 2πM
multiplied by the sum of |u_m v_n f_k f_l kl| times the right side of (2).

For each fixed m,n, the relation l=−m−n−k and Cauchy–Schwarz bound the
sum of |k|³|l|³|f_k f_l| by Σ|k|⁶|f_k|², and the sum of
|kl f_k f_l| by Σ|k|²|f_k|². Sum the remaining |u_m v_n| weights and use
Parseval to obtain (1). Fourier truncations, the summable majorant and
uniform convergence of sixth derivatives extend the calculation to the
stated spaces; lower derivatives converge locally uniformly. Symmetry of
the bridge under ξ→−ξ makes Q even, and Taylor's integral remainder gives
the h⁶ bound.

This is a rigorous estimate of the quadratic B_h term with both scalar
insertions, not of the coupled A_h and nonlinear exponential. It uses a
periodic model, not the actual paired half-domain, and does not justify a
uniform family or a common-regulator limit. No numerical truncation is
needed for the argument.

Remaining to-do list: handle nonlinear prefactors and rough physical
insertions, paired boundary and regulator limits, domain and prior-art
checks, and Lean certification on GCP.

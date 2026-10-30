# Inhomogeneous finite-cut transport and the missing resolvent term

Status: exact variation-of-constants identity for the separated collar.
It identifies the additional source term needed to turn the homogeneous
[boundary-line estimate](finite-cut-spectral-transport.md) into a resolvent
comparison. It is not a full physical resolvent theorem or a Lean certificate.

## Collar identity

For a mode μ and z∈ℂ, solve on x₀≤x≤x₁

    (-iσ₂ ∂x + μa(x)σ₁-z)ψ=f.

Let B(x)=izσ₂-μa(x)σ₃, and let V(x,y) solve
∂x V(x,y)=B(x)V(x,y), V(y,y)=I. Then

    ψ(x₀)=V(x₀,x₁)ψ(x₁)
           - ∫[x₀,x₁] V(x₀,s) iσ₂ f(s) ds.            (1)

The minus sign is due to integrating backward from x₁. If the endpoint
condition is ψ(x₁)∈span(v_+), the first term lies in the transported
homogeneous line of the spectral transport note. The integral is an affine
source contribution; it generally does not lie in that line.

Set ℓ=x₁-x₀, δ=∫|a|, m=|μ|δ+|z|ℓ. The fundamental matrix satisfies
||V(x₀,s)||≤e^m. Since ||iσ₂||=1, Cauchy–Schwarz gives

    ||∫[x₀,x₁] V(x₀,s)iσ₂ f(s) ds||
       ≤ e^m sqrt(ℓ) ||f||_(L²[x₀,x₁]).                (2)

Thus (1) yields an inhomogeneous boundary residual bounded by the right side
of (2), measured relative to the transported line. If f vanishes on the
removed collar, this residual is exactly zero and the homogeneous relation
is exact. For general f the term must be retained.

## Sharp small-collar scaling and angular limitation

The sqrt(ℓ) factor cannot in general be replaced by O(ℓ) times the same
unweighted L² source norm. At μ=z=0 take f(s)=ℓ^(-1/2)v_- throughout the
collar. Then ||f||₂=1, and iσ₂ v_-=-v_+ (up to the fixed Pauli convention),
so the integral has norm sqrt(ℓ). For an example transverse to span(v_+),
instead take f(s)=ℓ^(-1/2)v_+, giving iσ₂ v_+=v_- and the same norm.

Estimate (2) is modewise but is not uniform in |μ|: e^(|μ|δ) grows without
bound. Therefore it cannot be summed over the full angular tower using only
an L² source norm. Stronger control must exploit the actual boundary-value
problem, a stable propagation/Green-function representation, or specified
angular regularity with a quantitative cutoff and tail. The heat-smoothed
projection bound alone does not bound this inhomogeneous term.

For a fixed μ and bounded z on the classical RN-AdS collar, the bounds
δ=O(R⁻¹), ℓ=O(R⁻¹) from [the RN comparison](rn-cut-smoothed-transport.md)
make (2) O(R^(-1/2)) times the collar L² source norm. If one takes a fixed
full-space source and shrinks the collar, its collar norm also tends to zero,
but that pointwise fact is not an operator-norm or trace-norm estimate over
a moving family of sources.

## Resolvent consequence

A correct cut comparison must match both the transported homogeneous line
and the affine contribution in (1), and compare the actual interior solution
operators on a common Hilbert space. It must also specify whether sources
are supported away from the removed collar. Nonreal z makes the effective
boundary relation spectral-parameter dependent; it is not a fixed local
self-adjoint boundary condition. This identity therefore supplies a precise
missing term but does not establish resolvent or common-regulator convergence.
No numerical computation is required.

Remaining to-do list: control the full inhomogeneous boundary problem and
angular/thermal tails; verify the global copy map; complete the response and
novelty audits; write and Lean-certify the supported paper claims on GCP.

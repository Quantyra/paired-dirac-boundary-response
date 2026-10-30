# Existence of the interior Dirac Poisson solution

Status: ordinary existence and uniqueness argument for the separated
half-line problem at nonreal spectral parameter. It completes the existence
hypothesis in [the interior bound](interior-dirac-poisson-bound.md) for the
specified fixed-mode operator, not for the full physical bundle or the
changing-cut resolvent. This argument has not been Lean-certified.

## Setup and result

Let a∈L∞((-∞,x₀];ℝ), μ∈ℝ, and z∈ℂ\ℝ. Define

    H=-iσ₂ d/dx + μ a(x) σ₁,
    Dom H₀={u∈H¹((-∞,x₀];ℂ²): u_-(x₀)=0},

where u_± are the coefficients in the orthonormal σ₁ eigenbasis v_±.
For every b∈ℂ there is a unique ψ∈H¹∩L² satisfying

    (H-z)ψ=0,     ψ_-(x₀)=b.                             (1)

Its norm obeys the bound from the preceding note,
||ψ||₂ ≤ sqrt(2(|z|+|μ| ||a||∞)) |b| / |Im z|.
The analogous statement holds when the plus coefficient is prescribed.

## Self-adjoint base realization

The free first-order expression -iσ₂ d/dx on the H¹ domain u_-(x₀)=0 is
symmetric: its boundary Green form is u(x₀)†σ₂v(x₀), which vanishes on
span(v_+). Its adjoint has H¹ regularity: distributionally its derivative
is in L² when the formal adjoint output is in L². The Green form against
all allowed endpoint values forces the adjoint endpoint value to lie in
the same one-dimensional span, since that span is its own annihilator for
this nondegenerate skew boundary pairing. Thus the free operator is
self-adjoint. The endpoint at -∞ contributes no boundary term for H¹∩L²
functions. Adding the bounded Hermitian multiplication μaσ₁ preserves
self-adjointness on the same domain. Therefore H₀-z has a bounded inverse
on L² with norm at most 1/|Im z|.

## Constructing the solution

Choose a smooth compactly supported scalar function ϕ on (-∞,x₀] with
ϕ(x₀)=1, and set w=bϕv_-. Define

    ψ = w - (H₀-z)^(-1)(H-z)w.

The source (H-z)w belongs to L²; the inverse term is in Dom H₀, so ψ∈H¹∩L²
and ψ_-(x₀)=b. Applying H-z gives zero. Uniqueness follows from the
self-adjoint resolvent: the difference of two such solutions belongs to
Dom H₀ and solves (H₀-z)u=0. Alternatively it follows from the Green-form
estimate in the preceding note. Prescribing the other endpoint component
uses the complementary self-adjoint base domain and the same construction.

## Remaining comparison

This constructs the modewise Poisson solution for the local projector at
x₀. A z-dependent line transported from the removed collar is a different
boundary relation; its solvability and uniform comparison require a
separate transversality or full self-adjoint problem argument. Direct sums
also need the angular smoothing and normalization already identified.
Nothing here establishes the physical global copy identification, a trace
limit, or uniformity in z near the real axis. No numerical calculation is
needed for this functional-analytic step.

Remaining to-do list: compose the Poisson operator with the transported
physical boundary condition and collar source; control mode and regulator
limits; finish the response and novelty audits and Lean certification.

# Fixed-mode and heat-smoothed changing-cut resolvent comparison

Status: ordinary comparison for the separated canonical half-line Dirac
model with a bounded real radial coefficient and the same local projector
at the outer endpoint and cut. It is not a four-dimensional curved trace
or common-regulator theorem and has not been Lean-certified. It combines
[Poisson existence](interior-dirac-poisson-existence.md) and
[the Poisson bound](interior-dirac-poisson-bound.md) without using an
exponentially growing collar propagator.

## Statement

Let x₀<x₁, ℓ=x₁-x₀, and a∈L∞((-∞,x₁];ℝ). For μ∈ℝ let

    H=-iσ₂ ∂x + μa(x)σ₁,
    H_full on (-∞,x₁],       H_cut on (-∞,x₀],

both with the self-adjoint boundary condition u_-=0 at their respective
outer endpoint, in the σ₁ eigenbasis. Let J_ℓ restrict functions from the
full half-line to the cut half-line. For z∈ℂ\ℝ, η=|Im z|,
A₀=||a||∞ and k=|z|+|μ|A₀,

    || J_ℓ(H_full-z)^(-1) - (H_cut-z)^(-1)J_ℓ ||
       ≤ sqrt(ℓ) [sqrt(2k)/η] (1+k/η).                 (1)

The norm is L²(full)→L²(cut), so the two operators are compared on
explicit common input and output spaces. No boundary source is discarded.

## Proof

For f∈L²(full), put u=(H_full-z)^(-1)f and
v=(H_cut-z)^(-1)J_ℓ f. Their difference w=J_ℓu-v solves the homogeneous
Dirac equation on the cut half-line. Since v_-(x₀)=0,

    w_-(x₀)=u_-(x₀)=-∫[x₀,x₁] u_-'(x) dx,

because u_-(x₁)=0. Both resolvents are self-adjoint-realization resolvents,
so ||u||₂≤||f||₂/η. The differential equation gives

    ||u'||₂ ≤ ||f||₂ + k||u||₂ ≤ (1+k/η)||f||₂.

Cauchy–Schwarz on the removed collar gives

    |w_-(x₀)| ≤ sqrt(ℓ)(1+k/η)||f||₂.

Apply the interior Poisson bound to w to obtain (1). This argument includes
sources in the collar through u; it does not assume their support is away
from the cut. The analogous result holds for the complementary projector.

## All angular modes after heat smoothing

Let A be the magnetic sphere Dirac operator with eigenvalues μ, assume the
separated direct-sum realizations and their local boundary conditions are
exactly the ones above, and insert e^(-τA²) on the input, τ>0. Modewise (1)
and the direct-sum norm give

    || [J_ℓ(H_full-z)^(-1) - (H_cut-z)^(-1)J_ℓ]
         e^(-τA²) ||
       ≤ sqrt(ℓ) sup_(μ∈spec A)
          { e^(-τμ²) sqrt(2k_μ)/η (1+k_μ/η) },       (2)

where k_μ=|z|+|μ|A₀. The supremum is finite for each τ>0, η>0 and
bounded A₀. For the fixed classical RN-AdS reference, ℓ=O(R⁻¹) and A₀
is finite, giving O(R^(-1/2)) for fixed τ and z.

This is an operator-norm estimate after a specified angular smoothing. It
is not an unsmoothed uniform angular estimate, a trace-norm estimate, or a
bound uniform as τ or η tends to zero. The full four-dimensional Euclidean
operator, physical bundle, temporal modes, correct asymptotic Hilbert-space
identification and regulated determinant still require their own proof.
In particular, (1) does not assert that a local projector at a finite cut
is the exact transported infinity projector; it compares the two distinct
self-adjoint problems and bounds their fixed-mode resolvent difference.
No numerical computation is needed.

Remaining to-do list: connect the separated comparison to the physical
paired realization and required trace/thermal limits; verify the global
copy map; complete response and novelty audits and certify supported claims.

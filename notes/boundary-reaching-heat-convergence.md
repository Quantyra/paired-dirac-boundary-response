# Boundary-reaching localized heat convergence

Status: ordinary density extension of [the localized Hilbert–Schmidt
convergence](localized-heat-hs-convergence.md), using the uniform bound in
[the radial heat estimate](localized-radial-heat-bound.md). It applies to
the separated changing-cut model with fixed positive angular smoothing;
it is not the full physical boundary response or a Lean certificate.

## Statement

Under the hypotheses of the two cited notes, let u be any radial L² function
on the full half-line, with no requirement that its support stay away from
the outer endpoint. For t,τ>0, define B_ℓ and B as in the localized
convergence note. Then

    ||B_ℓ(t)-B(t)||₂ → 0,
    ||B_ℓ(t)*B_ℓ(t)-B(t)*B(t)||₁ → 0.                  (1)

For unbounded u∈L², M_u times the heat operator is understood as its unique
Hilbert–Schmidt extension obtained by L² approximation; for bounded u this
agrees with the ordinary composition. In particular, bounded compactly
supported u may reach the outer endpoint. The statement concerns a volume
insertion on the radial half-line, not a delta distribution or evaluation
at the boundary.

## Proof

For fixed t,τ the local heat bound supplies a constant C(t,τ), independent
of the cut, such that

    ||M_v J_ℓ* e^(-tH_ℓ²/2) J_ℓ e^(-τA²)||₂ ≤ C(t,τ)||v||₂,

with the same bound for the full operator. The constant contains the full
finite angular trace, including all multiplicities and zero modes.

Choose u_n bounded and compactly supported strictly inside the full
half-line, with ||u_n-u||₂→0. Such functions are dense in L²; in particular,
removing a shrinking neighborhood of the endpoint costs a vanishing L²
norm, even when u is nonzero there. By the interior-support result, for
fixed n the associated B_ℓ(u_n) converges to B(u_n) in Hilbert–Schmidt
norm. The triangle inequality gives

    limsup_(ℓ↓0) ||B_ℓ(u)-B(u)||₂
       ≤ 2 C(t,τ) ||u-u_n||₂.

Let n→∞. The bound also defines the Hilbert–Schmidt extensions for general
u and shows independence of the approximating sequence. The trace-norm
statement follows from

    ||B_ℓ*B_ℓ-B*B||₁ ≤ (||B_ℓ||₂+||B||₂)||B_ℓ-B||₂.

## Scope

This removes the artificial positive-distance requirement for radial L²
volume insertions at fixed positive t and τ. It does not cover boundary
trace evaluation, normal derivatives, changing metric vertices, or an
unbounded response direction outside L². The angular smoothing is retained;
its removal and the small-t common-regulator limit require independent
uniform estimates. The physical bundle, sector map, thermal sum and
per-exterior normalization also remain to be checked. No numerical
calculation is used.

Remaining to-do list: identify the physical boundary vertices and prove the
unsmoothed regulated trace bounds; verify the bundle and domains; complete
the response and novelty audits and Lean certification.

# Localized heat bound for the separated radial square

Status: ordinary fixed-positive-time estimate for a smooth separated
half-line model with angular heat smoothing. It supplies a concrete local
Schatten bound for the changing-cut problem, not an unsmoothed physical
trace, uniform small-time estimate, or Lean certificate.

## Hypotheses and estimate

Let a be real W^{1,∞} on the full half-line, and put G=||a'||∞. On each
angular eigenspace Aφ=μφ, take the self-adjoint Hamiltonian

    H_μ=-iσ₂∂x + μa(x)σ₁

with either σ₁-eigenspace local boundary condition at the outer endpoint.
The square has mixed Dirichlet/Neumann boundary data and

    H_μ²=-∂x² + μ²a² - μa'σ₃.

The same formulas hold at every cut, with a restricted to the retained
half-line. Let u∈L² of the full radial half-line and τ,t>0. With the full
angular multiplicities and both radial components included,

    || M_u e^(-tH²/2) e^(-τA²) ||₂²
       ≤ [2 ||u||²₂ / sqrt(πt)]
          · Tr_sphere exp(-2τA² + tG|A|).              (1)

The same bound, with the same right side, holds for zero-extended cut heat
operators and the restriction of u. The sphere trace is finite for τ>0:
-2τμ²+tG|μ|≤-τμ²+(tG)²/(4τ), and the compact sphere Dirac heat trace is
finite. Zero modes and multiplicities are included.

## Argument

For fixed μ the matrix potential V=μ²a²-μa'σ₃ is bounded and satisfies
V≥-|μ|G I. The free mixed D/N heat kernel has orthogonal component
projections and is bounded in matrix norm by the scalar Neumann heat kernel.
As in the pinned [RN spectral-control source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/rn-higher-mode-boundary-spectral-control.md),
Trotter products and ||exp(-sV)||≤exp(s|μ|G) yield matrix-kernel
domination by exp(t|μ|G) times that Neumann kernel. This is a kernel
comparison from the product formula, not an assertion that the exponential
is operator monotone. Approximation of the bounded potential and L²
insertions gives the same bound for the stated regularity.

On a half-line the diagonal Neumann kernel is at most
2/(sqrt(4πt))=1/sqrt(πt), uniformly in the endpoint location. The positive
matrix heat kernel has fiber trace at most twice its matrix norm. The
Hilbert–Schmidt identity

    ||M_u e^(-tH_μ²/2)||₂²
       = ∫ |u(x)|² tr K_μ(t;x,x) dx

therefore gives the modewise factor in (1). Since A and H are diagonal in
the assumed separated angular decomposition, the extra smoothing gives
weight exp(-2τμ²); summing the nonnegative mode bounds proves (1). The
restriction of u to a cut cannot increase its L² norm.

## What remains

This establishes a concrete local heat-smoothing operator as Hilbert–Schmidt
uniformly in the cut, but it does not prove convergence of those
cut-dependent Hilbert–Schmidt operators or trace convergence with the probe
removed. The angular smoothing is an additional factor and the upper bound
is not uniform as τ↓0. The true paired Euclidean operator, its bundle and
normalization still need to be matched to this separated model. The critical
bolt representation and rough metric-family uniformity are not addressed by
this half-line estimate. No numerical computation is used.

Remaining to-do list: establish local Schatten convergence and the physical
trace/regulator limits; verify the global bundle; complete response and
novelty audits; and certify supported paper claims on GCP.

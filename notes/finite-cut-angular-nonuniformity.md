# Angular nonuniformity of the finite-cut boundary limit

Status: exact consequence of [the zero-energy collar test](finite-cut-boundary-transport.md),
not a full physical boundary or heat-trace theorem and not a Lean
certificate. It identifies a norm in which fixed-mode convergence fails
and a weaker norm in which this simplified model does converge.

## Modewise and operator-norm limits

Let A be the self-adjoint magnetic sphere Dirac operator with discrete
unbounded spectrum μ, and let δ=∫[x₀,x₁]a(x)dx≥0. In the zero-energy
collar model, the transported L boundary subspace on the μ eigenspace is
spanned by

    w_δ(μ) = [v_+ + tanh(δμ) v_-] / sqrt(1+tanh²(δμ)).

Let P_δ be the orthogonal projection onto these one-dimensional subspaces,
and P_0 the projection onto v_+ on every angular mode. For fixed μ,
P_δ(μ)→P_0(μ) as δ→0. The angle formula for two rank-one orthogonal
projections gives the exact norm

    ||P_δ(μ)-P_0(μ)|| = |tanh(δμ)| / sqrt(1+tanh²(δμ)).   (1)

For each δ>0, unboundedness of |μ| implies

    ||P_δ-P_0||_(L²→L²) = 1/√2.                          (2)

Thus a vanishing collar integral does not imply convergence of these
projections in L² operator norm across the full angular tower. On the
other hand, (1) is uniformly bounded and tends to zero for each mode.
Spectral decomposition and dominated convergence give strong L² convergence
P_δ f→P_0 f for every fixed boundary spinor f.

## One derivative of angular control

Equip Dom(A) with the norm ||(1+|A|)f||. Since |tanh z|≤|z|,
(1) gives the quantitative estimate

    ||(P_δ-P_0)f||_L² ≤ δ ||A f||_L².                      (3)

Thus the simplified transported projection converges in operator norm
from this graph norm to L², even though (2) excludes L²-to-L² norm
convergence. On modes |μ|≤Λ the L² operator norm is at most δΛ. This
identifies the high-frequency tail that must be handled separately in any
full-domain or trace argument; a fixed angular cutoff cannot be removed
using the fixed-mode limit alone.

## Scope and use

The retained thermal RN source describes conformal infinity at a finite
coordinate endpoint x_*=0 and an unbounded nonzero angular tower; see
[the pinned higher-mode note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/rn-higher-mode-boundary-spectral-control.md).
If the source's actual collar coefficient is locally integrable there,
δ→0 as the cut approaches the endpoint. Equations (1)–(3) then apply to
the stated zero-energy model. They do not prove convergence of resolvents
on changing domains, nor do they apply automatically to nonzero spectral
parameter or the full Euclidean operator. A trace or common-regulator limit
requires explicit high-mode estimates and compatible boundary spaces.

This observation prevents treating the positive-time fixed-domain
[approximant result](approximant-resolvent-convergence.md) as a proof of the
changing-cut limit. No numerical computation is needed.

Remaining to-do list: derive the spectral-parameter-dependent physical
matching and its high-mode bounds; verify the global copy isomorphism;
complete the response, novelty and Lean certification work.

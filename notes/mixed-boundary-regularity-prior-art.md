# Mixed-boundary regularity: primary-source comparison

This records a relevant primary source for the H3 hypothesis in
`physical-contact-diagonal-h3-suffices.md`. It is a dependency comparison,
not a claim that the physical estimate has been proved.

Ammann, Grosse and Nistor, [The strong Legendre condition and the
well-posedness of mixed Robin problems on manifolds with bounded geometry,
arXiv:1810.06926v2](https://arxiv.org/pdf/1810.06926v2), extend their
mixed boundary framework to a splitting of the boundary vector bundle in
section 4.3.1. Their section 4.3.2 states additional assumptions for that
splitting; Corollary 4.10 gives H^(ell+1) well-posedness for boundary data
of the stated Sobolev orders, and Corollary 4.11 addresses a self-adjoint
domain in that framework. Theorem 4.8 is a regularity result cited from an
earlier source for the unsplit formulation. Theorem 3.5 is a Poincare-type
inequality, not the H3 regularity theorem.

The paper's boundary decomposition is materially closer to the present
projector problem than a Dirichlet/Robin partition of different boundary
regions: one may seek to identify its Dirichlet bundle with (1-P)E and its
Robin/Neumann bundle with PE. Our frozen calculation in
`finite-cut-mixed-complementing-symbol.md` gives a scalar strongly elliptic
principal symbol and the principal mixed Dirichlet/normal conditions under
the stated Clifford assumptions. This supports investigating the match; it
does not automatically establish the theorem's hypotheses.

For an application to the moving finite cuts, one must still verify:

- the actual global bundle splitting and bounded geometry, including a
  uniform boundary collar and coordinate radius as the cut moves;
- the representation of the full composition boundary operator in the
  source's conormal-plus-boundary-operator framework, including coefficients
  and compatibility of its weak form with the chosen realization;
- the required bounded coefficient and projector derivatives at the relevant
  order, and the source's coercivity or shifted estimates with constants
  uniform across cuts and field approximants;
- whether the global Poincare/finite-width or positivity hypotheses used for
  well-posedness apply, or whether a local regularity estimate with a lower
  order norm is the appropriate result. A compact cut alone does not provide
  a uniform finite-width or Poincare constant as the cut moves.

Corollary 4.10 should therefore not be cited as a proved uniform H3 estimate
for this specific family. Its bundle-splitting framework is also relevant
prior art: a generic mixed projector regularity theorem is not, by itself,
a novel paper contribution. The physical weighted fields, paired realization,
source response and their precise limiting hypotheses remain the potential
application-specific content. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the listed source hypotheses or prove the needed
local estimate, complete the physical regulator and novelty comparisons,
prepare the manuscript, and certify supported claims in Lean on GCP.
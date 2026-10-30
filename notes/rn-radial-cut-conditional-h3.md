# Conditional uniform H3 for the radial cut model

This applies [Grosse--Nistor, Corollary 7.6](https://arxiv.org/html/1703.07228), with ell=2, to the stipulated smooth mixed square model. It narrows the analytic hypothesis in `mixed-h3-robin-localization.md`; it does not identify the source's actual physical boundary realization.

Assume uniformly in the radial cut and smooth field approximant:

1. The cut has the fixed-size physical half-charts and uniformly controlled metric, frames and matched magnetic gauges of `rn-physical-cut-uniform-geometry.md` and `rn-cut-monopole-local-gauges.md`, with the derivatives needed below. The projector splitting is smoothly trivialized to fixed orthogonal coordinate projections in each half-chart with uniform frame derivatives.
2. The actual square composition domain is the mixed Dirichlet/conormal-Robin domain in `finite-cut-shifted-form-coercivity.md`, and the displayed local divergence-form operator and boundary condition coincide with the closed realization. The Robin operator is zeroth order on the allowed subbundle.
3. The scalar field and its interior extensions have uniform physical-chart C5 bounds and uniform absolute bound B. The spin, metric, gauge and frame coefficients have uniform derivatives through the corresponding finite orders.

In these charts, the square's principal coefficient is E^4 g^(ij) Id with E=exp(-b/2). Uniform metric ellipticity and |b|<=B imply a common strong Legendre constant. Expanding the square uses at most two derivatives of b, so its coefficients have uniform W3,infinity bounds under C5. The conormal-Robin coefficient uses at most first derivatives of b together with fixed geometric and connection terms; its W3,infinity bound follows from the same assumptions. A zeroth-order Robin operator has Q+Q* of order zero. Thus the local boundary pairs form a bounded family in the coefficient class D^(3,0) required by Corollary 7.6, with a uniform strong Legendre constant.

The corollary supplies uniform H3 regularity on smaller half-charts for this family, with the lower-order and boundary norms in its regularity definition. For homogeneous mixed boundary data, normal-constant local cutoffs preserve both boundary conditions as in `mixed-h3-robin-localization.md`; the commutator is controlled by the larger-chart H2 norm. Standard nested-chart interpolation absorbs that norm with an L2 remainder, yielding the local estimate

 ||v||_(H3(smaller)) <= C [||L v||_(H1(larger))
                                      +||v||_(L2(larger))]. (1)

The constant is uniform under assumptions 1--3. First apply the local theorem to sufficiently regular domain elements, then extend to heat outputs by the required mixed-boundary regularity and density argument. The bound includes an L2 term and does not require a cut-uniform Poincare inequality or global inverse. The regular bolt is an interior chart and requires its own uniform interior extension assumptions.

This closes the H3 *theorem-application* step for the stipulated model, conditional on the actual domain, conormal identification and uniform frames in assumptions 1--3. Those are not established merely by the formal principal symbol or local gauges. The differentiated H5 route in `physical-h5-from-mixed-h3.md` still requires its separate boundary differentiations and uniform extension; the source matching, trace normalization and regulator remain open. No Lean certification is claimed.

Remaining to-do list: verify the source's actual paired square realization and uniform frame hypotheses, establish all mixed heat vertices and regulator, finish novelty and manuscript, and certify supported claims on GCP.

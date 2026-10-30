# H3 literature route for the fixed-seed contact heat diagonal

This applies the mixed-boundary regularity theorem identified in
`physical-h5-regularity-literature-bridge.md` at the lower order required by
`physical-contact-diagonal-h3-suffices.md`. It closes the C5-to-H3
coefficient count for the stipulated smooth fixed-seed finite-cut model,
subject to the geometric and domain identifications stated below. It does
not prove the H5 estimates needed by other derivative vertices, physical
source matching, a small-time subtraction, or Lean certification.

## Hypotheses and coefficient count

Use the fixed smooth RN physical seed and smooth physical-side approximants
b_e from `physical-rough-family-heat-diagonal.md`, with their uniform C5
bounds in the fixed-radius rescaled physical charts, including the stipulated
uniform C5 interior extension. Let D_(delta,e)=E_e D_delta E_e and
L_(delta,e)=D_(delta,e)*D_(delta,e), E_e=exp(-b_e/2). Assume the fixed-seed
finite-cut bundle, Green/Gauss identities, actual complementary H1 projector
domains and uniform physical chart geometry required by
`paired-graph-source-reconciliation.md` and
`physical-finite-cut-uniform-heat-diagonal.md`. Assume their fixed chart
and projector frames have uniformly controlled derivatives through order
five. These hypotheses describe the chosen finite-cut model; identification
with a conformal-infinity source problem remains separate.

On nested physical half-charts, use the uniformly controlled unitary frame
construction of `mixed-h3-constant-projector-frame.md`, with enough frame
derivatives to put the boundary projector into a constant block. Under the
intrinsic-flip and H2-domain assumptions of `multiplier-square-boundary.md`,
the actual square-domain condition becomes homogeneous mixed Dirichlet and
Robin. Boundary normal coordinates make the scalar principal conormal
proportional to the normal derivative at the boundary; multiplying the
Robin equation by its positive bounded coefficient gives the conormal form
used in the theorem. The remaining Robin operator Q is zero order.

In each fixed frame, the scalar principal coefficient of L is E_e^4 g^ij;
its strong Legendre lower bound is uniform by the common positive metric and
E bounds. Expanding the square uses at most two derivatives of b_e in its
zeroth-order coefficient. Therefore five controlled derivatives of b_e
supply W^(3,infinity) bounds for *all* expanded coefficients of L; the first
and second order coefficients need no more. Frame changes use at most two
frame derivatives before the three coefficient derivatives, covered by the
assumed order-five frame bounds. The Robin coefficient and its derivatives
through order three are controlled by the same inputs. Thus the local family
satisfies the coefficient bound required by Grosse and Nistor,
[Corollary 7.6](https://arxiv.org/html/1703.07228), with ell=2. Their
Q+Q* order-zero condition holds because Q itself is order zero. The theorem
supplies a uniform H3 estimate on smaller half-charts, including weak
regularity. Its interior analogue follows from their Corollary 5.10.

## Application to positive-time heat outputs

For each smooth finite cut, heat output f=exp(-s L_(delta,e))h lies in
Dom L^2. The first-order uniform graph estimate of
`paired-graph-source-reconciliation.md`, applied to f and Lf, together with
spectral calculus, controls their local H1 norms by
C(1+s^(-3/2))||h||. Applying the uniform H3 mixed estimate with homogeneous
composition traces on nested boundary charts, and the corresponding interior
estimate, yields

    ||exp(-s L_(delta,e))h||_(H3(smaller chart))
        <= C (1+s^(-3/2)) ||h||_2,  s>0.                 (1)

The constants are independent of delta, e and chart, for the stipulated
family. Normal-constant localizers preserve the homogeneous mixed condition;
their commutators are bounded by lower Sobolev norms, as in
`mixed-h3-robin-localization.md`. The order-zero boundary data in the
regularity theorem are zero for the localized heat output. Its right-hand
side Lf is H1 by the graph estimate. Thus the hypotheses needed to invoke
the weak regularity theorem are not supplied merely by formal boundary
symbols.

Dimension-four H3 embedding and the semigroup identity then give

    tr K_(delta,e,2s)(x,x) <= C (1+s^(-3/2))^2.          (2)

This is the fixed-positive-time volume heat diagonal used by the
contact-cut argument, under the stated fixed-seed assumptions. It does not
supply pointwise first- or second-derivative heat bounds, and its power of s
is too crude to establish a subtracted small-time response. The physical
bundle and cut prescription, field-uniform source identification, angular
normalization and regulator remain separate obligations.

Remaining to-do list: verify the physical bundle/cut hypotheses and source
normalization, control the other response vertices and proper-time limit,
finish prior art and manuscript, and certify supported claims in Lean on GCP.
# Weighted collar approximants and the product H2 perturbation

The later [bounded-congruence argument](product-h2-uniform-bounded-congruence.md) removes the reference-closeness requirement for the scalar-congruent geometric square under uniform first-order seed estimates. This note retains the perturbative comparison for other families.

This checks how the actual one-sided cubic/log collar regularization enters the coefficient perturbation in `product-square-uniform-h2-from-first-order.md`. It provides a quantitative sufficient test around a specified smooth reference; it does not prove that the test is satisfied for an arbitrary weighted family, or identify the source's boundary realization.

Let b(y)=c y³+r(y), with the source's weights |r^(j)(y)|<=K A_j y^(4-j)(1+|log y|) for j<=5, and let b_eta=c y³+s_eta be the smooth physical-side approximants of `smooth-physical-cutoff-joint-path.md`. On the product collar, the raw cutoff error for j<=2 is supported in y<2eta. Its weighted derivative bounds, together with the prescribed mollification error in that note, give

  ||b_eta-b||_(W2,infinity(collar))
       <= C K eta²(1+|log eta|).                              (1)

The cubic is unchanged and the second derivative estimate is the limiting term. The product-coordinate change is smooth with bounded derivatives on a fixed collar, so the same rate holds there in a fixed product chart. Assume separately that any interior smoothing converges in product W2,infinity, and write its error as E_int(eta)->0. This is not the stronger physical-coordinate eta^4 rate, which uses a different metric and norm.

For the scalar congruence D_b=exp(-b/2) D exp(-b/2), the principal coefficient depends smoothly on b and the zeroth-order coefficient depends smoothly on b and db. On bounded W2,infinity sets, the product rule therefore gives, for a fixed smooth D and compact atlas,

  ||(D_b-D_c)f||_H1 <= C ||b-c||_W2,infinity ||f||_H2,     (2)

and an analogous adjoint H1-to-L2 difference bound, provided both first-order and adjoint projector domains are preserved. The constant depends on the declared field bounds, geometry and atlas, not on eta. These are operator coefficient estimates, not trace estimates or equality of square domains.

Fix a smooth reference b_ref and a smooth reference cut. Denote by C_ref the combined graph and H2 regularity constants in `product-square-uniform-h2-from-first-order.md`. If the specific fields and reference satisfy the explicit smallness condition

  C_ref C [||b-b_ref||_W2,infinity + cut_error] < 1/4,        (3)

then (1)--(2) imply that all sufficiently small eta and cut shifts meet the absorption condition of that theorem, subject to its common first-order and adjoint domain hypotheses. The uniform H2 square estimate, near-sharp heat estimates and complete contact cutoff bound then hold for this fixed approximating path. The cut_error must be measured in the W1,infinity coefficients of the pulled-back first-order operators; it includes the metric, frame and bundle maps as well as the field. A fixed smooth comparison can be selected for each fixed b, but (3) cannot be asserted merely from density: C_ref may itself depend on the chosen reference. A uniform reference or a separate uniform elliptic estimate is needed for an arbitrary bounded rough family.

This uses one-sided regularization and retains the original cubic seam. It does not replace the infinity boundary condition by a local cut condition, control the full geometric mixed vertex or renormalized common regulator, or yield numerical constants from unspecified graph bounds. No numerical or Lean certification is claimed.

Remaining to-do list: verify the source domains and a uniform H2 constant, combine the complete mixed and subtraction errors, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
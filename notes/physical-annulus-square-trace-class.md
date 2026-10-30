# Trace-class annulus square vertices from heat diagonals

This combines the form localization in `physical-annulus-square-form-vertices.md` with the weighted heat-diagonal method of `physical-mixed-second-vertex-trace.md`. It establishes conditional trace-norm bounds for the individually localized first and second form vertices. It does not control the ordered mixed response or a physical regulator.

Let L=P*P, H=exp(-tL/2), and assume the common form domain and product rules of the annulus note. Let A_delta={delta<=y<=2delta}. Suppose that, uniformly in the cut and approximation for fixed t>0, the heat and derivative kernels obey

 ||1_A H||_2² <= C_t vol(A_delta),
 ||1_A P H||_2² <= C_t vol(A_delta).                     (1)

These estimates follow from uniform pointwise heat and derivative diagonal bounds with the stated measure. For a single separated mode, vol denotes the canonical radial measure in the unitary physical x coordinate; for the full four-dimensional realization it denotes physical volume. Uniform boundary heat-diagonal estimates for the actual cut are explicit hypotheses, not established merely by the complete-space estimate.

On the annulus, the cubic direction and its physical first derivative are O(K_v delta³). Hence, as operators from the original Hilbert space to the annular output space,

 ||1_A P_v H||_2 <= C K_v delta³ C_t^(1/2) vol(A)^(1/2),
 ||1_A P_uw H||_2 <= C K_u K_w delta^6 C_t^(1/2) vol(A)^(1/2). (2)

Apply Schatten Holder to each term of the exact localized form sandwich in `physical-annulus-square-form-vertices.md`. In particular the two mixed product terms use the first line of (2) twice. This proves trace class and

 ||H q_v^A H||_1 <= C_t K_v delta³ vol(A),
 ||H q_uw^A H||_1 <= C_t K_u K_w delta^6 vol(A).        (3)

The notation means the bounded operator represented by the form on heat outputs; no derivative falls on the sharp indicator. For b_conf=log U, inserting b into either form argument costs an additional C(1+|log delta|), provided multiplication by b preserves the finite-cut form domain and its bounded physical gradient product rule is valid. The local derivative-of-b terms are included, not moved through the heat operator.

For one fixed separated mode, the physical x-length of the annulus tends to L4 log 2. Under mode-specific uniform diagonal bounds, (3) becomes O_t(delta³) and O_t(delta^6), respectively. For the assembled four-dimensional physical geometry, vol(A_delta)=O(delta^-3), so (3) becomes O_t(1) for the first form and O_t(delta³) for the mixed second form. The first bound alone does not show its trace norm tends to zero; it must be paired with the other localized vertex or improved using additional structure. The second bound agrees in scale with the local coefficient tail in the existing physical second-vertex note, but here it is a trace-norm sandwich bound.

The constants C_t may diverge as t->0 and may depend on mode unless uniform summation is proved. These estimates exclude boundary forms, insertion positions separated by heat factors, contact and restoration terms, and the source's product-frame normalization. They do not establish the physical mixed response, regulator, or Lean certification.

Remaining to-do list: verify actual cut-uniform heat diagonals and boundary domains, bound both ordered vertices and the common regulator, finish novelty and manuscript, and certify supported claims on GCP.

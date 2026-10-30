# Positive-time mixed vertex identity through form resolvents

This gives a rigorous operator-level interpretation of the schematic [mixed Duhamel inventory](mixed-heat-vertex-inventory.md) under the fixed compact-seed hypotheses of [the positive-time trace theorem](paired-positive-time-trace-derivatives.md). The physical domain, tangent identification and short-time uniform estimates remain separate. No Lean certification is claimed.

Let V be the common first-order form domain, densely and continuously embedded in H, and let a_z be the holomorphic two-parameter forms in the positive-time theorem. For real parameters they are the forms of D_z*D_z. Shift all forms by one fixed sufficiently large constant if necessary. Write A_z:V→V* for the associated form operator, V_u=partial_1 A_z|_0, V_w=partial_2 A_z|_0 and V_uw=partial_1 partial_2 A_z|_0. The vertex pairings are exactly the four terms in equation (2) of the inventory; V_u,V_w,V_uw are bounded V→V*, rather than assumed bounded on H.

For lambda in a common resolvent sector let R_z(lambda)=(lambda+A_z)^−1, understood variationally. Its restriction H→V and extension V*→V make every composition below meaningful as an operator H→H. The inverse identity and form-norm differentiation give

    partial_1 R_z|_0 = −R V_u R,
    partial_1 partial_2 R_z|_0
       = R V_u R V_w R + R V_w R V_u R − R V_uw R.        (1)

The first R on each right side is used V*→H, the interior resolvent is V*→V, and the last R is H→V. To prove (1), differentiate (lambda+A_z)R_z=1 in V*; the minus sign in the last term comes from differentiating the second form vertex itself. No derivative of a varying square domain is taken.

On a smaller closed parameter polydisc, the uniform sectorial estimates give the usual lambda-dependent H→V, V*→V and V*→H resolvent bounds. They dominate the differentiated contour integrand on the rays for every fixed t>0. Differentiating the sectorial inverse-Laplace representation in operator norm therefore yields

    partial_1 partial_2 exp(−t A_z)|_0
       = (1/(2pi i)) integral_Gamma exp(lambda t)
           [R V_u R V_w R + R V_w R V_u R − R V_uw R] d lambda,  (2)

with R=(lambda+A_0)^−1 and Gamma the corresponding oriented inverse-Laplace contour. The fixed shift is removed by its common exponential factor. Equation (2) is an operator-norm contour identity; its sign and contour convention are fixed by using exp(lambda t)(lambda+A)^−1.

The positive-time theorem independently establishes that the left side of (2) is trace class and is the trace-norm mixed derivative. Hence (2) identifies that trace-class operator with the complete vertex combination. It does not assert that the individual contour integrals or the unregularized time-simplex terms are absolutely convergent in trace norm, nor does it interchange trace and contour without an additional estimate. Any valid smoothing or cutoff procedure whose resulting operator converges to the right side of (2) gives the same positive-time derivative; proving that convergence for a particular physical regularization remains an obligation.

This resolves the algebraic first/second vertex interpretation for the declared compact form model and avoids freezing square domains. It does not establish the physical spin/boundary hypotheses, an explicit tangent subtraction, a uniform estimate as t tends to zero, density or moving-insertion terms, or the full angular/common-regulator limit.

Remaining to-do list: match the form identity to the physical observable and tangent subtraction, prove the uniform curved remainder, complete novelty and manuscript, and certify supported statements in Lean on GCP.

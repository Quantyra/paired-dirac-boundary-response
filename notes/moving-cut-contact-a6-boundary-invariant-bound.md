# Conditional a6 boundary and flux bound from invariant order

This gives a bound, not an explicit formula, for the sixth mixed-boundary potential-contact coefficient. It extends `moving-cut-contact-a5-boundary.md` and `interior-contact-boundary-flux.md`. The uniform geometric hypotheses below are not yet verified for the source's rough-field approximants.

Use the smooth compact two-dimensional fixed-cut setting of those notes, with L_lambda=L+lambda v, fixed metric, connection, projectors and Robin data, and scalar smearing u. Let A6^boundary be the boundary part of the smeared heat coefficient a6. Assume the standard local polynomial invariant description of this coefficient for smooth mixed boundary conditions, and differentiability of the expansion in lambda at fixed cut. The locality and weight rule are described in [Branson, Gilkey, Kirsten and Vassilevich, Section 3](https://arxiv.org/pdf/hep-th/9906144): curvature and E have weight 2, the second fundamental form and S weight 1, chi weight 0, and each covariant derivative adds one. The boundary integrand of a6 has weight 5, with the weight of derivatives of the smearing included.

Differentiate the polynomial at E_lambda=E-lambda v Id. Every surviving monomial contains one derivative of v, inherited from a factor of E or one of its derivatives, and one derivative of u, because the coefficient is linear in the smearing. If their respective derivative orders are k and j, then j+k+2 <= 5, so j+k <= 3. This also covers terms containing multiple E factors: differentiation selects exactly one of them, leaving the rest as background factors. Coefficient contractions, covariant derivatives of projectors, and tangential integrations by parts do not increase that total weight. The argument does not identify coefficients or signs.

Suppose the boundary length and bundle rank are uniformly bounded; assume every background factor and contraction occurring in this local a6 polynomial after differentiation is uniformly bounded independently of the cut and field-approximation parameter. In particular, derivatives of E, curvature, second fundamental form, S, and the projectors required by the actual invariant polynomial are included in this hypothesis. Suppose also that, for j=0,1,2,3, the full covariant boundary jets satisfy

  |nabla^j u| + |nabla^j v| <= C delta^(3-j).                (1)

Each term is then O(delta^(6-j-k)) and therefore O(delta^3), yielding

  |partial_lambda A6^boundary(u,L_lambda,B)|_(lambda=0) <= C delta^3.  (2)

The a6 term in dimension two is proportional to t^2; its contribution to 2 Theta'(t) I_t at t=epsilon is O(delta^3), assuming |Theta'(t)| <= C t^-2. It vanishes as delta tends to zero. This is a conditional consequence of the invariant structure; it is not a computed coefficient and is not a uniform remainder estimate.

For the untwisted rank-two interior coefficient in `interior-contact-boundary-flux.md`, assume additionally bounded |R| and the geometric coefficients needed to bound |Delta v| <= C delta and |partial_n Delta v| <= C at the cut. Its explicitly displayed integration-by-parts flux is O(delta^3): u partial_n Delta v and (partial_n u) Delta v are each O(delta^3), while u R partial_n v is O(delta^5). The inward/outward convention affects signs, not this bound. This flux is distinct from (2), and the comparison assumes both use the same smooth cut.

The background-jet assumption in (2) may fail or depend on the smoothing parameter for the actual logarithmic field; cubic pointwise behavior alone does not establish it. Nor does the estimate exchange the moving cut with the short-time expansion. The geometric response, joint remainder, actual domain and normalization, and source-specific bounds remain open. No Lean certification is claimed.

Remaining to-do list: verify or replace the uniform background-jet hypothesis for the source, control the joint differentiated remainder and geometric response, match physical domains and normalization, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
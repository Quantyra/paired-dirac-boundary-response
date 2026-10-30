# Ordered bulk term with an adjacent conformal insertion

This combines `conformal-insertion-square-form-vertex.md` with the localized joint path in `physical-ordered-tail-joint-path.md`. It treats a finite-cut bulk ordered term in which the real conformal logarithm is already adjacent to the localized first form vertex. It does not commute the insertion through heat factors or establish the full weighted mixed response.

Let b=log U, let u_tail=chi_delta u be the smooth radial cubic tail, and let w be the other direction. On the fixed physical RN seed, |b|<=C(1+|log U|), while its first two physical covariant derivatives are bounded in the outer collar. The product rule and the uniform physical derivatives of chi_delta give

 N(b u_tail) <= C K_u delta^(3/2)(1+|log delta|),        (1)

where N includes the physical L2 norms of a scalar, its gradient and Hessian. The bound follows from integrating U^6(1+|log U|)^2 against the O(U^-4)dU physical density. It is uniform in the stipulated smooth cutoff family and includes derivatives of chi_delta.

At a finite cut, the exact first form-vertex identity in the cited insertion note writes q_(u_tail)(b f,g) as q_(b u_tail)(f,g) plus three terms containing C_b=[D,b], u_tail, du_tail and at most one D. The identity for b on the other argument is its Hermitian conjugate. Separate every Green boundary contribution explicitly. For the remaining bulk correction, assume the bounded C_b and first physical derivative bounds and the product-rule/adjoint identification imply a local differential expression W_tail and its formal adjoint whose coefficient L2 norms are bounded by C N(u_tail). These are hypotheses about the actual frames and Green terms; no integration by parts across a physical boundary is silently made.

Assume moreover the uniform H5 weighted heat, chart-summation and form-trace hypotheses of `finite-cut-ordered-bulk-endpoints.md` for q_(b u_tail), W_tail, W_tail* and q_w. The bulk part of q_(b u_tail) is Hermitian, so the cited factorization applies with N(b u_tail). For a non-Hermitian correction W, use the same finite-matrix cyclic identity with W* on the appropriate long heat factor; the two required Hilbert--Schmidt factors are W* K_(r/2) and V_w K_(r/2). The stated estimates give, on either half of the time interval,

 |Tr_form[(adjacent b q_(u_tail))^bulk K_s q_w^bulk K_(t-s)]|
   <= C t^-5 K_u N(w) delta^(3/2)(1+|log delta|).       (2)

After both orderings and the Duhamel time weight, this is O(delta^(3/2)(1+|log delta|)t^-3). For the four-dimensional dt/t integral over [epsilon,1], delta=epsilon^p with p>2 makes this particular bound vanish. A fixed radial cut and the actual cutoff/field identification must be common to all terms; the rate is sufficient, not a physical admission margin.

The result is conditional on the bulk correction's adjoint and boundary decomposition, the uniform heat factors, and finite-cut form-trace passage. Boundary corrections, a b insertion separated from the vertex by heat, both complete square vertices, physical source normalization, small-time subtraction and path independence remain open. No Lean certification is claimed.

Remaining to-do list: establish the correction and boundary/heat hypotheses on the actual domains, control nonadjacent insertions and the full regulator, finish novelty and manuscript, and certify supported claims on GCP.

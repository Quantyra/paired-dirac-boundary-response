# Direction approximation on a proper-time path

This gives a quantitative comparison for the two direction fields in the
physical four-dimensional fixed-cut mixed response. The background operator
and its heat semigroup are held fixed throughout the comparison. It does not
compare different background operators, establish a complete regulator
limit, identify the source's product-orbit trace, or certify Lean.

Let v=c y^3+r(y) and v_eta=c y^3+q(y/eta)r(y), with the radial weighted
bounds and physical metric of `physical-cubic-bilinear-integrability.md`.
The cubic is unchanged. The raw cutoff difference, its physical gradient,
and its physical Hessian are O(u^4(1+|log u|)) and supported in u<=C eta.
The physical volume is comparable to u^(-4)du dz. Consequently

  N(v_eta-v) <= C eta^(5/2)(1+|log eta|),                (1)
  N(v)=||v||_2+||dv||_2+||nabla^2 v||_2.

Indeed the square of the displayed pointwise bound times the volume density
is O(u^4(1+|log u|)^2), whose integral has square root of the stated order.
The bound remains valid after restriction to any physical finite cut. If an
additional smoothing changes the raw cutoff in the interior or collar, add
its independently established N error; (1) does not estimate an unspecified
mollification. Assume uniform N bounds for the two directions and their
approximants.

Fix one background b, finite cut and associated D,L,K_t. Assume the uniform
physical H3/H5, partner, domain and form-trace hypotheses of
`physical-fixed-time-mixed-response-assembly.md`; the constants below are
uniform in the chosen cut and admissible fixed background family. For
0<t<=1 the long-heat H5 estimate gives

  ||V_v^bulk K_(r/2)||_2 <= C t^(-5/2) N(v), r>=t/2.   (2)

The Hermitian bulk factorization of `finite-cut-ordered-bulk-endpoints.md`
therefore bounds the ordered bulk integrand by C t^(-5)N(v)N(w), uniformly
at both time endpoints. The time-simplex weight contributes at most O(t^2)
after integration, so the bulk ordered mixed response obeys

  |R_bulk(t;v,w)| <= C t^(-3) N(v)N(w).                 (3)

The mixed second form vertex has the same coarse power. The H3 and partner
bounds give ||M_v D K_(t/2)||_2<=C t^(-2)||v||_2 and
||M_dv K_(t/2)||_2<=C t^(-3/2)||dv||_2. Splitting every local coefficient
between the two Hilbert--Schmidt factors, as in
`physical-fixed-time-mixed-response-assembly.md`, gives

  |t Tr_form[q_vw K_t]| <= C t^(-3) N(v)N(w).          (4)

These estimates retain the mixed product vertex and the two first-vertex
orderings. They do not estimate boundary-form contributions, which are
handled separately by `finite-cut-boundary-joint-proper-time-path.md`.

Because the bulk ordered and second-vertex expressions are bilinear in the
two directions at the same fixed background, (1)--(4) imply

 |R_bulk+second(t;v_eta,w_eta)-R_bulk+second(t;v,w)|
     <= C t^(-3) eta^(5/2)(1+|log eta|).                (5)

Consequently, with ordinary weight dt/t and fixed t0<=1,

 integral_epsilon^t0 |difference| dt/t
     <= C eta^(5/2)(1+|log eta|) epsilon^(-3).          (6)

A sufficient choice is eta=epsilon^q for any q>6/5. It is compatible with
the separate sufficient boundary path delta=epsilon^p, p>3/2. These are
sufficient conditions for the specified directional approximation and
boundary terms, not a claim of an optimal path or a physical margin.

Most importantly, (5)--(6) keep the background D and K fixed. Replacing b
by b_eta changes both vertices and the semigroup; a quantitative small-time
comparison for that change is still required. The result also does not
supply the local counterterms, the physical-half/time-reduced source map,
the full trace finite part or the limit of the complete response. No
numerical run or Lean certification is claimed.

Remaining to-do list: control background-dependent heat and vertices on a
joint path, match the physical source and subtractions, finish novelty and
manuscript, and certify supported claims in Lean on GCP.
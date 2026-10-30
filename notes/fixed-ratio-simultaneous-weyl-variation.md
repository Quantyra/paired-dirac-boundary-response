# Fixed conformal ratio under simultaneous Weyl variations

This checks a concrete case of the fixed-b hypothesis in
`physical-product-mixed-cutoff-bridge.md`. It is a finite-cut operator
identification under the stated bundle and domain hypotheses, not a proof of
the full physical response or regulator limit.

Let g be a four-dimensional metric and hat g=U^2 g on the same fixed finite
cut, with U>0 and U,U^-1 bounded. For a real scalar v set

  g_v=exp(2v)g,       hat g_v=exp(2v)hat g=U^2 g_v.           (1)

Thus the physical-to-product ratio U and b=log U are independent of v.
Assume compatible spin/twist identifications, and that the conformal maps,
the scalar multipliers below, and their inverses carry the actual declared
first-order and adjoint domains into each other. These are hypotheses about
the realization, not merely the differential expression.

In four dimensions the unitary map from L2(g_v) to L2(g) is multiplication
by exp(2v); the analogous map from L2(hat g_v) to L2(hat g) is the same
scalar multiplication. Conformal covariance on the common smooth core
therefore gives fixed-Hilbert representatives

  D_g[v]=exp(-v/2) D_g exp(-v/2),
  D_hat[v]=exp(-v/2) D_hat exp(-v/2).                          (2)

For instance, exp(2v) D_(g_v) exp(-2v)
=exp(2v) exp(-5v/2) D_g exp(3v/2) exp(-2v), which is the first identity.
The unitary map from fixed L2(g) to fixed L2(hat g) is U_0=U^-2, and it
commutes with exp(-v/2). Combining (2) with the seed identity from
`physical-product-contact-operator-gap.md` gives

  U_0 D_g[v] U_0^-1
    = U^(1/2) D_hat[v] U^(1/2).                              (3)

Under the stated domain identifications this is an equality of closed
first-order realizations, and their positive composition squares are
unitarily equivalent on their actual domains. It holds for every admitted
v for which the hypotheses hold; it does not require a parameter-independent
square domain. In particular for v=s u+q w the operator interpolation in
the mixed bridge has a fixed b and is the declared simultaneous Weyl
variation of both frames.

This verifies only that particular variation protocol. If U, the coordinate
identification, the spin/bundle map, or the cut itself depends on the
variation, their derivatives must be included separately. The source's
mass/log directions must be matched to v=s u+q w before applying (3), and
the trace interchange, physical-half/angular normalization, partner and
LLL contributions, local counterterms and cut-uniform bounds remain open.
The fixed-cut bounds on U and U^-1 need not be uniform as the cut moves.
No numerical or Lean certification is claimed.

Remaining to-do list: verify the actual physical domain and direction maps,
prove the mixed endpoint and curved regulator estimates, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.

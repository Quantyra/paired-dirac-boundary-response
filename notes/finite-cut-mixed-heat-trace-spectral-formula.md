# Fixed-cut mixed heat trace: spectral form and second vertex

This records an exact finite-matrix mixed-derivative formula and its
spectral limit at fixed positive time. It builds on
`finite-cut-ordered-trace-integrated-endpoints.md`. It does not identify
the limit with the derivative of the infinite-dimensional physical heat
trace without a separate Galerkin-derivative convergence argument.

Let L>=0 have compact resolvent, K_t trace class for all t>0, and V=Dom
L^(1/2) with norm ||(1+L)^(1/2)f||. Let v_u, v_w, v_uw be bounded forms
on V. In an eigenbasis (e_n) of L, let P_N project onto the first N modes;
let V_(x,N) be the matrix with entries v_x(e_m,e_n), and put

  L_N(z1,z2)=P_N L P_N + z1 V_(u,N) + z2 V_(w,N)
                           + z1 z2 V_(uw,N).             (1)

The matrix L_N(z) is the second-order jet needed for the mixed derivative;
no claim is made that it equals a full nonlinear physical family. The
finite-dimensional Duhamel formula and trace cyclicity give, for t>0,

  partial_1 partial_2 Tr exp(-t L_N(z))|_(z=0)
    = integral_0^t (t-s)[F_(u,w),N(s)+F_(w,u),N(s)] ds
      - t sum_(n<=N) exp(-t lambda_n) v_uw(e_n,e_n),     (2)

where

  F_(u,w),N(s) = sum_(m,n<=N) exp(-(t-s)lambda_m-s lambda_n)
                         v_w(e_n,e_m) v_u(e_m,e_n).   (3)

The factor t-s is the length of the remaining time simplex after fixing
the interval s between the two insertions. It is retained for each ordering;
one may simplify the sum further only after checking the relevant symmetry.
The second-vertex contribution is -t times its heat trace, with no extra
factor of two: v_uw is the mixed derivative, not the coefficient of an
unmixed square.

The endpoint note proves F_(u,w),N and F_(w,u),N converge in L1(0,t), so
the two weighted integrals in (2) converge. For the second vertex, boundedness
of the form gives

  |v_uw(e_n,e_n)| <= ||B_uw|| (1+lambda_n),
  sum_n (1+lambda_n) exp(-t lambda_n) < infinity.      (4)

Thus the last term in (2) converges absolutely, independent of the ordering
of the eigenbasis. Its finite-dimensional time integral is exactly constant
in the insertion time by cyclicity; this calculation includes every term in
v_uw as defined by the actual mixed form, including the two mixed-product
terms in `mixed-heat-vertex-inventory.md`.

It follows that the right side of (2) has a finite common-spectral-limit for
every fixed t>0, with both ordered first vertices and the complete mixed
second form vertex retained. To identify it with the actual infinite-space
mixed heat trace derivative one must prove convergence of the derivatives
of the Galerkin families (or an equivalent form-Duhamel theorem). A fixed
bounded density insertion alters the trace cycling and must be treated
separately; moving density and source contacts are also not covered. The
bound depends on the global finite-cut heat trace and may diverge with the
cut or as t approaches zero. No numerical run or Lean certificate is claimed.

Remaining to-do list: identify the infinite-dimensional derivative and all
density terms, prove uniform cut and common-regulator limits, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
# Interior-time spectral transfer for the finite-cut ordered trace

This proves a fixed-cut, positive-time spectral transfer for two bounded
first-order form vertices. It uses the Green identity and boundary pairing
notes but does not prove endpoint integrability of the full ordered trace or
any physical regulator limit.

Let L=D*D on a fixed compact cut, with eigenvectors e_n and eigenvalues
lambda_n>=0. Assume K_t=exp(-tL) is trace class for each t>0, the first-order
graph estimate, and bounded first-form vertices v_u,v_w on Dom D with its
graph norm. Set E_n=(1+lambda_n)^(1/2). Then

  |v_x(e_m,e_n)| <= C_x E_m E_n, x=u,w.               (1)

The spectral theorem gives ||e_n||_Dom D=E_n. For any a>0,

  sum_n E_n^2 exp(-a lambda_n) < infinity,              (2)

because (1+lambda)exp(-a lambda) is bounded by a constant times
exp(-a lambda/2), and K_(a/2) is trace class. Consequently, for s,r>=a,

  F(s,r) = sum_(m,n) exp(-r lambda_m-s lambda_n)
                   v_w(e_n,e_m) v_u(e_m,e_n)          (3)

converges absolutely and uniformly. The finite spectral truncations converge
to F uniformly on s,r>=a. This also gives a basis-independent definition:
put R=(1+L)^(-1/2); each form has a bounded representative B_x=R V_x R
in the form sense, and the exponentially smoothed products are trace class.
Equivalently, their trace can be evaluated in any orthonormal eigenbasis.
The products in this paragraph are understood through these bounded form
representatives, not as unbounded V_x operators on all of L2.

Assume now that the eigenvectors satisfy the regularity required by the
Green identity, and that the scalar direction w is radial and smooth. For
each matrix element in (3), the square-domain eigenvector e_m has the
complementary trace for D e_m. The identity in
`finite-cut-first-vertex-green-identity.md` therefore decomposes

  v_w(e_n,e_m) = b_w(e_n,e_m) + Q_H(e_n,e_m),        (4)

where b_w is the indicated formal bulk expression and Q_H is the explicit
boundary multiplier. Inserting (4) into every finite sum gives an exact
finite-dimensional identity. The absolute and uniform convergence of the
full sum, together with the conditional trace-norm convergence of the Q_H
pairing established in
`finite-cut-boundary-pairing-spectral-regularization.md`, implies that the
formal-bulk sums converge to F minus the boundary limit. This conclusion
uses the common spectral truncation; it does not independently identify a
closed bulk operator or license a different regularization.

On a compact interior interval a<=s<=t-a, the same uniform bounds allow
integration and passage of the finite spectral limit through the integral.
Thus the fixed-cut ordered trace transfer, including its Green boundary
term, is justified there under the stated assumptions. Extending the full
bulk transfer to s=0 or s=t requires an integrable bound for the full
ordered trace and its bulk part. The cited boundary estimate alone supplies
such a bound only for the boundary contribution. No uniformity in the moving
cut, short proper time, or rough regulator follows from (1)-(4).

No numerical calculation or Lean certificate is claimed.

Remaining to-do list: prove endpoint and uniform-cut estimates for the full
transfer, match the physical source and common regulator, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
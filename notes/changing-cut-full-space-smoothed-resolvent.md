# Full-space heat-smoothed changing-cut resolvent

This completes the zero-extension term left open in
`changing-cut-explicit-smoothing-rate.md` for its separated half-line model.
It does not identify the physical Euclidean paired realization, remove the
angular heat factor, prove trace-norm convergence or certify Lean.

Use the same full and cut Hamiltonians and notation as the cited note:
J_ell restricts to the cut half-line, J_ell* extends by zero, A is the
angular operator, z is nonreal, eta=|Im z|>0, and A0=||a||_infinity.
Let R=(H_full-z)^(-1), R_ell=(H_cut-z)^(-1), and
M_p(tau)=(p/(2e tau))^(p/2). All statements below are conditional on the
self-adjoint separated direct-sum model and its specified local projectors.

The difference on the full Hilbert space decomposes exactly as

    J_ell* R_ell J_ell - R
      = J_ell*(R_ell J_ell-J_ell R) - (I-J_ell*J_ell)R.  (1)

The first term after exp(-tau A²) is bounded by equation (1) of the cited
note. For the second, consider one angular mode mu and u=R_mu f. The
resolvent equation and self-adjointness give

    ||u||_2 <= eta^(-1)||f||_2,
    ||u'||_2 <= [1+(|z|+A0|mu|)/eta] ||f||_2.           (2)

The one-dimensional Sobolev inequality on the half-line, valid for
vector-valued H¹ functions, is ||u||_infinity²<=2||u||_2||u'||_2. Hence the
L² norm on the removed collar of length ell is at most

    sqrt(2ell/eta) [1+(|z|+A0|mu|)/eta]^(1/2)||f||_2.   (3)

The basis of angular modes diagonalizes both the resolvent and smoothing.
Taking the direct-sum supremum and using sqrt(x+y+z)<=sqrt(x)+sqrt(y)+sqrt(z)
gives

 ||(I-J_ell*J_ell) R exp(-tau A²)||
  <= sqrt(2ell/eta) [1+sqrt(|z|/eta)
                            +sqrt(A0/eta) M_(1/2)(tau)].  (4)

Combining (1), (4) and the cited explicit comparison bound proves a full-space
operator-norm estimate. For fixed nonreal z, fixed A0 and 0<tau<=1, it is
O(sqrt(ell) tau^(-3/4)). Thus ell=o(tau^(3/2)) suffices for

    ||[J_ell* R_ell J_ell-R] exp(-tau A²)|| -> 0.          (5)

Unlike strong convergence from a shrinking support alone, (5) uses the
resolvent's radial H¹ smoothing and an explicit angular heat factor. It
includes arbitrary full-space input, including input supported in the
removed collar. The fixed-mode derivative estimate and the Sobolev inequality
supply the collar gain; no identity operator on the collar is claimed small.

The local cut projector is a specified model condition and need not be the
transported physical infinity condition. The bound depends on eta and |z|,
and it does not prove uniformity along an unbounded spectral contour,
trace-norm convergence, matching to the Euclidean operator or a regulator
limit. Those remain separate obligations. No numerical computation is used.

Remaining to-do list: establish physical bundle and boundary matching,
control the complete response and regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
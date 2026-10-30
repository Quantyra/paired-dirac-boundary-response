# Endpoint control of the ordered bulk trace

This closes the fixed-positive-time endpoint estimate left open in
`finite-cut-bulk-interior-time-convergence.md`, under that note's stipulated
finite-cut geometry, H5, field and noncompact chart-summation hypotheses. The
key is that the bulk form obtained after the explicit Green boundary term is
Hermitian; no derivative is transferred through the short heat factor.
This is not a common-regulator theorem, physical source identification or
Lean certificate.

For real v, let q_v^bulk and V_v^bulk be the Hermitian form and differential
expression in `finite-cut-first-vertex-boundary-pair.md`. On each smooth
compact cut, the H5 heat estimate and the product-rule expansion give, for
p in [t/4,t/2],

  T_v(p):=V_v^bulk K_p is Hilbert--Schmidt,
  ||T_v(p)||_2 <= C_t N(v),                             (1)

where N(v) includes physical L2 norms of v,dv and its Hessian. This uses the
weighted order-at-most-two heat estimates, including the stated summation
hypothesis. T_v is a bounded Hilbert--Schmidt operator defined by the
expression acting on the heat output; no separate self-adjoint realization
of V_v^bulk is introduced.

Let 0<s<=t/2 and r=t-s. In an eigenbasis {e_i} of the positive square L,
write V^v_ij=q_v^bulk(e_i,e_j). Hermiticity gives
V^v_ij=conjugate(V^v_ji). The ordered bulk trace, defined by its smooth
form heat sandwich, has the exact factorization

 Tr_form[q_u^bulk K_s q_w^bulk K_r]
       = Tr[K_s T_w(r/2) T_u(r/2)*].                     (2)

Indeed both sides equal the absolutely convergent double sum
sum_(i,j) exp(-s lambda_i-r lambda_j) V^w_ij V^u_ji.
Absolute convergence follows from the Hilbert--Schmidt norms in (1).
This proves the domain ordering and the adjoint in (2) through matrix
entries of the Hermitian form; it does not claim that the formal differential
expression has a self-adjoint domain. It also does not discard a Green term:
the boundary form was separated explicitly before defining q^bulk.

By Schatten Holder, ||K_s||<=1 and (1),

 |Tr_form[q_u^bulk K_s q_w^bulk K_(t-s)]|
      <= C_t N(u)N(w),  0<s<=t/2.                       (3)

For t/2<=s<t, cyclically exchange the two vertices and the roles of s,r;
the same bound applies. Thus the bulk-bulk ordered trace has an integrable,
cut- and field-uniform majorant on the entire interval (0,t), with no
singularity at either endpoint for fixed t. This does not imply a bound
uniform as t->0: C_t can diverge.

Under the strong heat, local coefficient and L2 field convergence hypotheses
of `finite-cut-bulk-interior-time-convergence.md`, that note proves
pointwise convergence for each 0<s<t. Equation (3) now supplies the missing
dominating function, so the complete fixed-t bulk-bulk time integral
converges along the joint cut/field sequence. The bounded time-simplex weight
and the second ordering are handled the same way. Boundary-boundary and
bulk-boundary contributions have their separate fixed-time cut bounds in
the boundary-pair and mixed-pair notes; assembling them requires their
common model and form-trace hypotheses.

The estimate includes the full bulk expression, not a diagonal or angular
truncation. It is a fixed-t statement: it does not identify the source's
physical-half/time-reduced normalization, bound the small-t subtracted
remainder, or exchange the proper-time and cut limits. The claimed Hermitian
bulk form depends on the explicit Green convention and the actual square
domain; altering boundary data requires a fresh calculation. No numerical
run or Lean certification is claimed.

Remaining to-do list: assemble the fixed-time complete response with all
vertices, establish physical source and common-regulator matching, finish
novelty and manuscript, and certify supported claims in Lean on GCP.
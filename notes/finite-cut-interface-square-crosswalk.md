# Finite-cut square-level transmittal crosswalk

This records the candidate exact relationship between P1's finite-cut
composition square and the square of a folded spinor interface operator. It
is a conditional finite-cut result, not a physical endpoint or common-
regulator theorem. It separates a possible equality of second-order
operators from the first-order domain comparison, which fails by symmetry.

## Claim under audit

Let `X` be one smooth side with boundary `Sigma`, and form a symmetric
interface from two copies with their spin and magnetic bundles identified by
the pinned source pullback. Let `b` be a smooth conformal field continuous
across `Sigma` on the two sides, and write `g_b=e^(2b)g`, `E_b=e^(-b/2)`.
The candidate statement is

    L_interface,b  ~=  (E_b D_g E_b)^* (E_b D_g E_b)

as positive self-adjoint operators on their actual second-order domains,
where `L_interface,b` is the spinor transmittal square on the doubled
geometry. No equivalence of the first-order realizations is claimed.

## Ordinary comparison

### Bulk expression

The unitary `W_b=e^(-2b)` from `L2(g)` to `L2(g_b)` gives the exact
four-dimensional covariance identity

    W_b (E_b D_g E_b) W_b^(-1)
       = e^(-5b/2) D_g e^(3b/2) = D_(g_b).

Thus the P1 composition square has the geometric spin Laplacian's local
bulk expression, with the same spin and pulled-back magnetic connection,
after the density unitary. This is an exact smooth finite-cut statement.

### Boundary domain

P1's square domain is the composition domain. In the seed normal convention
it is

    Pi_- psi=0,
    Pi_+ (nabla_n+K/2)psi=0,

and for the multiplier it transports to the corresponding geometric Robin
condition for `g_b`; in the original metric frame the coefficient is
`(K-partial_n b)/2`. The ordinary boundary-jet calculation in
[`transfer-transmittal-comparison.md`](transfer-transmittal-comparison.md)
maps this mixed condition to continuity of one folded interface component
and the derivative-sum condition on the other. Under the even/odd fold,
continuity is Dirichlet on the odd field, while the derivative sum is Robin
on the even field with coefficient `U_b/2`. For a reflection-symmetric
interface `U_b=(K_b^+ +K_b^-)/2=K_b`, so this is the same `K_b/2` Robin
condition, after the fixed inward/outward normal conversion.

The nonzero normal jet gives the same coefficient when all steps are written
out. Let `n` be the P1 outward normal, `b_n=partial_n b`, and use the source
convention in which

    K_b = exp(-b) (K + 3 b_n),   n_b = exp(-b) n.

This is the four-dimensional conformal mean-curvature law used by the source's
Dirac boundary covariance formula. In the multiplier frame the Robin
coefficient is `q=(K-b_n)/2`. For the density-unitary image
`phi=W_b psi=exp(-2b)psi`, substituting `psi=exp(2b)phi` into that boundary
jet adds `2 b_n`, so the coefficient becomes

    q + 2 b_n = (K + 3 b_n)/2 = exp(b) K_b/2.

Together with `n_b=exp(-b)n` and the spin-connection transformation in the
source's boundary covariance identity, this is precisely the geometric
Robin condition with coefficient `K_b/2`; the equality is not obtained by
setting `b_n=0`. In the fold, the inward-normal coefficient is therefore
`s=-K_b/2`. The boundary-jet identity in
[`transfer-transmittal-comparison.md`](transfer-transmittal-comparison.md)
gives `v=-2s=K_b`. Herzog, Huang and Vassilevich's spinor matching law gives
`U_b=(K_b^++K_b^-)/2` ([Herzog, Huang and Vassilevich, Eqs. (8), (14)](https://arxiv.org/html/2005.01689)); for the reflection-symmetric identical-copy family,
`K_b^+=K_b^-=K_b`, hence `U_b=K_b=v`. Their Eq. (8) writes the conformal
curvature law with a minus sign because its `K` convention is opposite to
the source convention above; the interface normals and curvature signs must
be converted together.

This closes the scalar Robin-coefficient comparison, including a nonzero
normal jet, at the declared smooth finite cut. It does not by itself match
the varying tangential `B_j` connection, prove equality of the full closed
second-order domains, or establish trace multiplicity. Those remain separate
requirements for operator equivalence.

### Tangential connection

For the pinned normal-frame Clifford matrices, the side-map derivative
computed in `transfer-transmittal-comparison.md` is

    I^(-1) nabla'_j I = H_(jA) gamma_n gamma_A.

This agrees with the interface spin-connection jump
`B_j=(K^+_(jA)+K^-_(jA))/2 gamma_n gamma_A` at the reflection-symmetric
seed after aligning the second-fundamental-form sign. The source's common
pulled-back magnetic transition has no side jump. The equality for the
varying conformal connection follows by applying the same normal-frame
Clifford identity in the metric `g_b`: for the transformed side map `I_b`,

    I_b^(-1) nabla'_(b,j) I_b
      = H^(b)_(jA) gamma_n gamma_A
      = (K^(b,+)_(jA)+K^(b,-)_(jA))/2 gamma_n gamma_A
      = B^(b)_j,

when the two copies remain reflection symmetric and their normal/frame signs
are aligned. This identity uses the transformed second fundamental form
`H^(b)` on both sides, so the normal-jet contribution to it is included; it
does not assume that the connection defect stays at its seed value. The
magnetic connection still has no side jump under the source's common pulled-
back transition. This closes the local varying-connection coefficient
comparison under the pinned identical-copy hypotheses, not the global closed
operator or trace-multiplicity comparison.

## First-order distinction

P1's `D` is not symmetric: its allowed trace space is preserved by the
normal Clifford factor in the Green form. The interface first-order Dirac
condition has continuous side traces and cancelling outward fluxes. Hence
the proposed equivalence can only concern the second-order positive
operators and their composition/transmittal domains. This avoids incorrectly
identifying `D` itself with the self-adjoint interface Dirac operator.

## First unsupported implication

The local boundary pieces now match at the symmetric finite cut: folded
Dirichlet/Robin boundary jets including nonzero normal jet, and the varying
`B_j` spin-connection term. The remaining finite-cut proof is to establish
the global side-bundle identification and prove equality of the full closed
second-order domains and trace multiplicity. Once that identity is
established, unitary equivalence gives equality of the fixed-cut heat traces
and all fixed-cut local heat coefficients. It would still give no uniform
moving-cut limit, physical source/contact/LLL match, or common-regulator
response.

## Numerical and Lean roles

No numerical computation is relevant to this geometric domain identity.
The finite-dimensional Clifford rearrangement can be checked in Lean, but
that would not prove the smooth geometric gluing, elliptic regularity, or
trace-class heat identity. Lean certification of supported algebra remains
GCP-only under the Space protocol.

Remaining to-do list: establish global side-bundle identification and the
full closed-domain and trace-multiplicity identity, then compare the P1
response coefficients with the resulting interface formula and close the
physical source/common-regulator bridge.

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

### Tangential connection

For the pinned normal-frame Clifford matrices, the side-map derivative
computed in `transfer-transmittal-comparison.md` is

    I^(-1) nabla'_j I = H_(jA) gamma_n gamma_A.

This agrees with the interface spin-connection jump
`B_j=(K^+_(jA)+K^-_(jA))/2 gamma_n gamma_A` at the reflection-symmetric
seed after aligning the second-fundamental-form sign. The source's common
pulled-back magnetic transition has no side jump. The equality for the
varying conformal connection follows only after checking the same side map
and the conformal transformation of `B_j` and `U_b`; that substitution is
not yet written out.

## First-order distinction

P1's `D` is not symmetric: its allowed trace space is preserved by the
normal Clifford factor in the Green form. The interface first-order Dirac
condition has continuous side traces and cancelling outward fluxes. Hence
the proposed equivalence can only concern the second-order positive
operators and their composition/transmittal domains. This avoids incorrectly
identifying `D` itself with the self-adjoint interface Dirac operator.

## First unsupported implication

The local pieces now match at the symmetric seed: bulk Dirac square, folded
Dirichlet/Robin boundary jets, and the `B_j` spin-connection term. The
remaining finite-cut proof is to show that the conformally transformed
transmittal domain is exactly the P1 composition domain for nonzero normal
jet, with one consistent normal convention and density unitary, including
the magnetic twist. Once that identity is established, unitary equivalence
gives equality of the fixed-cut heat traces and all fixed-cut local heat
coefficients. It would still give no uniform moving-cut limit, physical
source/contact/LLL match, or common-regulator response.

## Numerical and Lean roles

No numerical computation is relevant to this geometric domain identity.
The finite-dimensional Clifford rearrangement can be checked in Lean, but
that would not prove the smooth geometric gluing, elliptic regularity, or
trace-class heat identity. Lean certification of supported algebra remains
GCP-only under the Space protocol.

Remaining to-do list: finish the nonzero-normal-jet transmittal/domain
identity; then compare the P1 response coefficients with the resulting
interface formula and close the physical source/common-regulator bridge.

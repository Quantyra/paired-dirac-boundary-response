# Graded mass conversion at a positive cutoff

This independently derives the source conversion's first two jets in a
specified smooth compact graded model. It checks the sign and factor of the
angular contact in `tangent-regulator-normalization.md`. It does not identify
this model with the actual physical paired bundle, prove the cutoff removal,
or certify Lean.

## Model and hypotheses

Let Q be a skew-adjoint first-order operator on a compact Hilbert space, with
L=-Q^2>=0 and trace-class K_t=exp(-tL) for t>0. Let Gamma be a bounded
unitary involution with Gamma Dom Q=Dom Q and Gamma Q Gamma=-Q. Real smooth
scalar multipliers b,u,v commute with Gamma, preserve the relevant first-order
domains, and have bounded commutators with Q. For r in [0,1] and M>0 set

 A_r(b)=exp(-r b/2)[Q+M exp(b)]exp(-r b/2),
 P_r(b)=A_r(b)* A_r(b).                                  (1)

Use the actual composition domain for each P_r. Assume the common-domain
closed-form differentiability and trace-class Duhamel formulas needed below,
uniformly in r at the fixed positive t. These hypotheses are satisfied by
standard smooth compact realizations once their domain and ellipticity
conditions have been verified; they are explicit here because the physical
paired realization is not being replaced by a formal skew expression.

Let the massive tower have d_n>=0, M_n>0 and finite sums
sum d_n(1+M_n^2) exp(-t M_n^2) at the fixed t. Define
Theta(t)=sum d_n exp(-t M_n^2), and set

 J_t(b)=sum_n d_n integral_0^1 Tr[b exp(-t P_r,n(b))] dr. (2)

This is the source's endpoint-integral expression as a definition for the
graded model. Its derivation from two physical regulated actions and its
trace normalization are additional source-matching questions.

## First square vertex and grading

At b=0, A_r=Q+M and P_r=L+M^2. Differentiate the closed forms in direction
v. Denote by L_v the form derivative at zero of
L_b=-(exp(-b/2)Q exp(-b/2))^2. Direct expansion gives

 (P_r)_v = r L_v +2(1-r)M^2 v +(1-r)M[v,Q],             (3)

as a form on the common core. To see the endpoint signs, at r=0,
P_0(b)=(-Q+M exp b)(Q+M exp b), and the derivative is
2M^2 v+M[v,Q]. At r=1 the mass in A_1 is constant and the derivative is
L_v. The dependence on r is affine at first order; the scalar product rule
and common form domain justify the interpolation. Equation (3) is not an
assertion that the square domains are fixed.

Since Gamma commutes with u,v and K_s but anticommutes with [v,Q], conjugation
by Gamma changes the sign of
Tr[u K_(t-s)[v,Q]K_s]. Its trace is therefore zero for 0<s<t, whenever the
stated trace hypotheses hold. The cancellation is for the scalar-smeared
trace at the product seed, not for the odd operator itself or for arbitrary
insertions which fail to commute with Gamma.

## Mixed jet and angular factor

Let T_t(u)=Tr[u K_t],
I_t(u,v)=integral_0^t Tr[u K_(t-s) v K_s] ds, and write
D_v T_t(u)=-integral_0^t Tr[u K_(t-s) L_v K_s] ds for the geometric form
variation. At b=0 differentiation of (2) gives immediately

 J_t'[u]=Theta(t) T_t(u).                                  (4)

For the mixed derivative, the explicit factor b in (2) means exactly one
parameter derivative hits that factor and the other hits the heat operator;
there are two such terms. Insert (3), integrate r from zero to one, and use
the grading cancellation. The geometric coefficient is integral r dr=1/2.
The mass term has coefficient 2 integral (1-r)dr=1 for each ordering.
The common factor exp(-tM_n^2) separates because M_n^2 is scalar. Cyclicity
and the change s->t-s give I_t(u,v)=I_t(v,u), and hence

 J_t''[u,v]=Theta(t)/2 [D_v T_t(u)+D_u T_t(v)]
                         +2 Theta'(t) I_t(u,v).          (5)

Here Theta'(t)=-sum_n d_n M_n^2 exp(-t M_n^2). In particular, the contact
factor 2 comes from the two mixed orderings, not from a second division or
multiplication of the angular degeneracies. The fixed positive-t tower
hypothesis permits the indicated sums; no proper-time endpoint has been
interchanged.

This derivation uses a skew-adjoint Q and a grading which preserve the
specified operator domain. Applying it to the physical source requires the
closed partner/grading construction, product and mode identifications,
physical-half/time-reduced trace convention and convergence of the chosen
regulator. It also does not identify the full Weyl-congruence Hessian with
an orbit-only Hessian: equation (5) is the endpoint *conversion* between
specified families, not that Hessian. No numerical or Lean check is claimed.

Remaining to-do list: match the graded model and trace to the physical source,
prove the subtracted rough remainder and regulator limit, resolve novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.
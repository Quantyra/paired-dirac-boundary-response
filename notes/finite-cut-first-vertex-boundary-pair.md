# First form-vertex boundary term and its ordered boundary pair

This derives the boundary part of the first variation of the square form
and bounds the ordered term with two such boundary parts at fixed positive
time. It uses the stipulated smooth finite-cut domains and uniform heat/trace
estimates; it does not establish the mixed bulk-boundary terms, source
normalization, common-regulator limit or Lean certification.

Let D_b=E D E, E=exp(-b/2), with allowed first-order trace P and
complementary adjoint trace 1-P. For a real scalar direction v write
C_v=E^2 c(dv) and D_v=-vD_b-C_v/2. Use the inner-product convention
conjugate-linear in the first argument, and define the outward normal symbol
sigma_n by the Green identity

 <D_b p,z> = <p,D_b^formal* z>
              + integral_boundary <gamma p, sigma_n gamma z>          (1)

for smooth sections. Here sigma_n=E^2 c(n) with the Clifford convention
c(n)^2=1; reversing the Green convention reverses the displayed boundary
sign. The first derivative of q(p,q)=<D_b p,D_b q> is

 q_v(p,q)= -2<D_b p,v D_b q>
           -(1/2)<C_v p,D_b q> -(1/2)<D_b p,C_v q>.       (2)

For smooth p,q in the square domain, v D_b q has complementary trace and
therefore produces no boundary term when the first summand is transferred.
The last summand is different: C_v q need not have complementary trace.
Using (1) and retaining the boundary form gives

 q_v(p,q)=<p,V_v^bulk q> -(1/2) integral_boundary
                     <gamma p, h_v gamma q>,              (3)
 V_v^bulk=-2 D_b^formal* M_v D_b
             -(1/2) C_v* D_b -(1/2) D_b^formal* C_v,
 h_v=P sigma_n C_v P = E^4 (partial_n v) P.               (4)

In (4), tangential components of dv vanish between P projectors because
P c(n)c(tangent) P=0. Thus the displayed h_v remains valid for a smooth
nonradial scalar v, with its actual normal derivative; the radial weighted
bounds used below are a separate assumption. V_v^bulk is a differential
expression in a form identity, not automatically an operator with the square
domain. Equation (3) is obtained for smooth square-domain test sections;
extension to the required heat forms must use the stated trace regularity.

Write B_v for the boundary form -(1/2) gamma* h_v gamma, as a form rather
than a bounded bulk operator. Its occurrence in an ordered product with
B_w has the positive coefficient 1/4 in the Green convention (1). Let
r=t-s, and let h_v,h_w be Hermitian boundary multipliers. For 0<s<=t/2,
cyclicity and heat splitting give the boundary-space trace

 (1/4) Tr_boundary[h_v gamma K_s gamma* h_w
                             gamma K_r gamma*].           (5)

For sign-changing h use polar decompositions and retain the bounded sign
operators. Under the finite-cut graph and multiplicative trace hypotheses,

 ||gamma K_s gamma*|| <= ||gamma K_(s/2)||^2 <= C_t s^(-1/2). (6)

The long boundary factors gamma K_(r/2) satisfy the weighted Hilbert--Schmidt
estimate from `finite-cut-green-heat-factor-family.md`. Schatten Holder
therefore yields

 |(5)| <= C_t s^(-1/2)
   (||h_v||_infinity ||h_w||_infinity)^(1/2)
   (||h_v||_1 ||h_w||_1)^(1/2).                          (7)

For the radial cubic/log fields on a cut u=delta, the physical boundary
weights satisfy ||h_v||_infinity,||h_w||_infinity<=C delta^3 and
||h_v||_1,||h_w||_1<=C, uniformly in the specified field cutoff. Thus the
integral of the boundary-boundary ordered term over 0<s<=t/2 is
O_t(delta^3). Swapping v,w and s,r gives the same bound on the other half.
The ordered Duhamel time-simplex has an additional bounded time weight at
fixed t and does not alter endpoint integrability. The factor 1/4 is from
the two first-vertex boundary coefficients, not a physical-half factor.

This establishes the pair of boundary-form insertions only. The two
bulk-boundary cross terms involve V_v^bulk and its domain/Green factors and
are not covered automatically by (7); their explicit factorizations,
possible further boundary terms and signs still need review. Nor does a
fixed-t O(delta^3) bound establish a limit uniform as t->0, or identify the
physical boundary-source observable. No numerical or Lean check is claimed.

Remaining to-do list: derive and bound the mixed bulk-boundary ordered terms,
match physical source and common regulator, finish prior art and manuscript,
and certify supported claims in Lean on GCP.
# Positive-cut angular tower domination for graded conversion

This supplies the infinite-tower domination left open in
`graded-conversion-regulated-endpoints.md`, for the stipulated compact graded
model and positive masses. It does not identify the physical bundle, fix its
trace normalization, or remove the proper-time cutoff. No numerical or Lean
check is claimed.

Let Q, b and A_(r,M)=E_r(Q+M exp(b))E_r be as in
`graded-mass-conversion-positive-cut.md`, where E_r=exp(-rb/2), 0<=r<=1,
B=||b||_infinity, Q is skew-adjoint, exp(-s Q*Q) is trace class for every
s>0, and the bounded scalar multipliers preserve Dom Q. Assume uniformly in
r that [Q,E_r] and [Q,exp(b)] extend to bounded operators. Let the masses
M_n satisfy M_n>=M_0>0 and let nonnegative multiplicities d_n obey
sum_n d_n exp(-s M_n^2)<infinity for every s>0. These hypotheses allow a
finite tower as well; zero modes require a separate infrared treatment.

## Uniform form bound

Put y=E_r x and V=exp(b). Since Q*=-Q, expansion on Dom Q gives

 ||(Q+M V)y||^2 = ||Qy||^2 + M^2 ||Vy||^2
                    + M <y,[V,Q]y>.

The last term is real and bounded below by -M C_V ||y||^2, where
C_V=||[V,Q]||. Young's inequality then yields

 ||(Q+MV)y||^2 >= ||Qy||^2 + (1/2) M^2 exp(-2B)||y||^2
                              - (1/2) C_V^2 exp(2B)||y||^2.       (1)

Use ||E_r z||>=exp(-B/2)||z||, the corresponding upper bound, and
Q(E_r x)=E_r Qx+[Q,E_r]x. Uniform commutator bounds imply constants
alpha,beta>0 and C>=0, independent of r and M, such that the closed
positive-square form satisfies

 ||A_(r,M)x||^2 >= alpha ||Qx||^2 + beta M^2 ||x||^2 - C ||x||^2.
                                                                  (2)

The estimate uses the actual form domain Dom Q; it does not assume that the
composition domains of the squares are constant. By the min-max principle,
compactness of the Q*Q resolvent and (2), for every s>0,

 Tr exp(-s P_(r,M)) <= exp(s C) exp(-s beta M^2)
                          Tr exp(-s alpha Q*Q).                   (3)

Here P_(r,M)=A_(r,M)* A_(r,M). The form inequality gives the eigenvalue
bound used in (3); no pointwise heat-kernel or operator-exponential
monotonicity assertion is needed.

## Tower and proper-time integrability

The separate mass-gap proof in `graded-conversion-regulated-endpoints.md`
gives P_(r,M)>=g M^2 with g=exp(-4B)>0. Fix epsilon>0 and t>=epsilon.
Spectral calculus, followed by (3) at s=epsilon/2, gives

 Tr exp(-t P_(r,M))
   <= exp(-(t-epsilon/2) g M^2) exp(epsilon C/2)
      exp(-epsilon beta M^2/2) Tr exp(-epsilon alpha Q*Q/2).     (4)

The right side is uniform in r. Since M>=M_0, its t integral against dt/t
is bounded by a finite constant depending on epsilon, g and M_0 times
exp(-epsilon beta M^2/2). Summing with d_n is finite by the tower hypothesis.
Likewise, |Tr[b exp(-t P_(r,M))]|<=B Tr exp(-t P_(r,M)); positivity and
trace norm give this bound even when b changes sign. Thus both the regulated
action integrals and the endpoint integrals converge absolutely after the
mode sum, uniformly in r.

Assume additionally the individual-mode differentiability and trace Duhamel
identities already stated in the endpoint note. Its derivative formula is
bounded in absolute value by B Tr exp(-epsilon P_(r,M)), using the graded
unitary equivalence of the two partner squares. Equation (4) supplies a
summable bound uniform in r; dominated convergence and integration in r
therefore justify summing the individual endpoint identities and
interchanging the tower sum with the r and proper-time integrals. The same
bound makes the action tower uniformly differentiable in r by the standard
termwise differentiation theorem. These conclusions hold at each fixed
positive epsilon, without a claim uniform as epsilon tends to zero.

The proof uses no numerical truncation and does not supply the rough
subtracted heat remainder, full Weyl angular vertices, physical-half or
source trace conventions, or a common-regulator limit.

Remaining to-do list: verify the physical realization and normalizations,
prove the rough remainder and regulator limit, settle novelty, finish the
manuscript, and certify its supported claims in Lean on GCP.

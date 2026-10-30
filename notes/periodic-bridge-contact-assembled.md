# Assembled periodic bridge contact through the finite coefficient

This combines the separate zeroth, quadratic, quartic and exponential-tail
arguments in `bridge-zeroth-bv-route.md`, `bridge-quadratic-bv.md`,
`bridge-quartic-term.md` and `bridge-exponential-tail.md`. It is a
conditional ordinary theorem for their periodic auxiliary bridge model;
it is not a physical paired-boundary or Lean certificate.

Let f,v be real 2pi-periodic W^{3,infinity} functions whose third weak
derivatives have bounded variation, let u be W^{1,infinity}, and suppose
0<m<=f<=F. Let xi be the covariance-2 Brownian bridge and define

 A_h(y)=integral_0^1 f(y+h xi_s)^2 ds,
 B_h(y)=integral_0^1 f'(y+h xi_s) ds,
 V_h(y)=integral_0^1 v(y+h xi_s) ds.

For |h|<=1 set

 I(h)=(1/(2pi)) integral u(y) E[V_h A_h^(-1/2)
                         exp(h² B_h²/(4 A_h))] dy.         (1)

There are coefficients I0,I2,I4 and a finite constant K, depending only on
m,F, the stated W^{3,infinity}/BV norms, ||u||_{W^{1,infinity}} and the
period, such that

    |I(h)-I0-h² I2-h^4 I4| <= K |h|^5.                    (2)

The coefficients are the weak-mollification limits of the smooth bridge
coefficients. Equation (2) holds uniformly for a family sharing these bounds.

To prove it, expand the exponential through its quadratic term. The zeroth
piece has an O(h^5) fourth-order remainder by the BV fourth-derivative
measure argument; the term linear in h² B_h²/(4A_h) has an O(h^5) remainder
by the second-derivative BV translation estimate. The quadratic exponential
piece has an O(h^5) error after its local h^4 coefficient by the Lipschitz
estimate. The rest is O(h^6) by the uniform exponential-tail bound. The
three local polynomials add to I0+h² I2+h^4 I4. Reflection symmetry of the
bridge removes odd Taylor coefficients in the first two pieces. All four
estimates use the same positive lower bound for A_h; periodic mollification
preserves the common sign, bounds and BV variation, so their sum passes to
the original functions.

For smooth f,v the source's bridge expansion supplies the displayed I4
polynomial. Its equality with the local curvature/derivative expression is
checked in `bridge-contact-t2-identity.md`; passing that equality to BV
fields requires the weak-* measure pairing and integration-by-parts
hypotheses stated there. Once those hypotheses are verified, (2) gives the
source's contact expansion on this periodic model with an O(t^(5/2))
remainder for t=h². With |Theta'(t)|<=C_ang t^-2, its weighted contact
remainder is O(sqrt(t)), uniformly on the declared bounded family.

This result assembles the local analytic pieces but does not independently
prove the smooth bridge coefficient, verify the physical-to-auxiliary
matching, treat geometric variation, or identify the common regulator.
In particular, periodicity cannot be used as a substitute for the paired
half-boundary trace and thermal-image arguments. It does not establish the
separate P1-D mixed-response estimate. No numerical calculation is used.

Remaining to-do list: verify the smooth coefficient and weak matching,
physical domains and thermal images, geometric response and regulator,
decide novelty, prepare the manuscript, and certify claims in Lean on GCP.

# Physical endpoint as a long cylinder and loss of a mode gap

This analyzes the physical-to-product congruence at the conformal endpoint using the conventions of `euclidean-canonical-unitary-half-density.md` and `full-weyl-symmetric-lapse-transfer.md`. It concerns the fixed-mode local differential expression and any closed realization containing the compactly supported core. It is not a calculation of the renormalized response.

Let y be product proper distance from the outer endpoint, f(y) its positive product lapse, and U=b_sphere/r the physical-to-product conformal factor. The source asymptotics give f=b_sphere/L4+O(y²) and U=y/L4+O(y³). The canonical coordinate s satisfies ds/dy=f. The physical congruence lapse is F=f U. Define an endpoint coordinate x by

 dx/ds=1/F,  equivalently dx/dy=1/U.

Therefore x=L4 log y+O(y²)+constant, so y->0 corresponds to x->-infinity and U, F=O(exp(x/L4)). The apparently finite product collar is an infinite physical endpoint in this coordinate.

For a fixed angular and thermal mode, write the canonical expression as

 P=sqrt(F) [-i sigma_2 partial_s + V(s)] sqrt(F),
 V(s)=mu a(s) sigma_1+i nu.                              (1)

Assume the angular coefficient a is bounded near the endpoint, as in the product model. The map W:L2(ds)->L2(dx), (W psi)(x)=sqrt(F(s(x))) psi(s(x)), is unitary because ds=F dx. Direct calculation on compactly supported smooth sections gives

 W P W^-1 = -i sigma_2 partial_x + F(s(x)) V(s(x)).       (2)

The potential in (2) tends to zero exponentially for each fixed mu and nu. In particular the thermal frequency is multiplied by F; the positive thermal gap of a uniformly nondegenerate product model cannot simply be carried over to this physical congruence.

To make this precise, choose a unit vector e and a smooth compactly supported scalar chi with ||chi||_2=1. Set v_R(x)=R^(-1/2) chi((x+R²)/R)e. For large R its support lies inside the endpoint collar, ||v_R||=1, and ||v_R'||=O(R^-1). Uniform convergence of the potential to zero on that support gives ||W P W^-1 v_R||->0. The functions have compact support in the interior, so their inverse images belong to every realization containing the core. Therefore the quadratic form of P*P has infimum zero for this fixed mode; there can be no positive lower form bound uniform down to the physical endpoint.

The same trial functions show that positive gaps for finite cuts cannot stay uniformly positive as the cut moves out: choose cuts far enough beyond the support of v_R. This conclusion is independent of the precise boundary projector at a finite cut, provided its domain contains interior test functions. It does not assert that zero is an eigenvalue, determine the full spectrum, or determine the behavior of a subtracted determinant.

## Explicit finite-cut upper bound

Fix a collar endpoint x0 and cut at y=delta, with x_delta<x0 and L=x0-x_delta=L4 log(1/delta)+O(1). On the middle interval [x_delta+L/4,x_delta+L/2], choose a normalized smooth bump v_delta supported strictly inside that interval, obtained by rescaling a fixed compactly supported profile. Then ||v_delta'||<=C/L. Because its support has x<=x_delta+L/2, the endpoint asymptotics give sup_support F<=C delta^(1/2). The bounded angular coefficient and (2) therefore imply, for each fixed angular and thermal mode,

 inf_(v in form domain, ||v||=1) ||P_delta v||²
   <= C L^(-2)+C (mu²+nu²) delta.                       (3)

The constants depend on the fixed seed, collar, chosen bump and bounded angular coefficient; they are independent of delta. The bump is an interior test function, so (3) applies to every finite-cut realization containing the smooth interior core. It is an upper bound on the bottom of the positive-square spectrum, not a physical admission margin or a lower estimate. The rate is not claimed sharp, and the displayed convergence is for fixed mu and nu; it is not uniform in an unbounded mode tower. It also does not say that the subtracted response diverges.

The argument applies to the physical congruenced operator in (1), not automatically to the source's distinct nondegenerate product-frame conversion. To use the physical operator in the paper one needs an endpoint theory accommodating continuous or gapless behavior and the required trace/subtraction structure, or a proved conformal comparison. No Lean certification is claimed.

Remaining to-do list: develop the physical endpoint or product-frame comparison, prove the complete mixed response and regulator, finish the novelty audit and manuscript, and certify supported claims on GCP.

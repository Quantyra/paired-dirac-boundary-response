# Boundary-touching resolvent insertion can fail to be trace class

This checks the limitation in `changing-cut-local-resolvent-trace.md` for a
specific zero-angular-mode model. It is a counterexample to extending that
one-sided trace-class argument merely from a small boundary amplitude, not a
claim that the physical subtracted heat response diverges or a Lean proof.

Take the free radial Dirac expression H0=-i sigma_2 partial_x on the full
half-line (-infinity,x1], with the self-adjoint local sigma_1 projector at
x1, and z=i. Let R=(H0-i)^(-1), let J_ell restrict to
(-infinity,x1-ell], and let R_ell be the analogous cut resolvent. Define
D_ell=J_ell* R_ell J_ell-R. Suppose a continuous bounded scalar chi is
nonzero on some open subinterval of the removed collar (x1-ell,x1). Choose
a smaller closed interval I there and c>0 with |chi|>=c on I. Then

    1_I M_chi D_ell 1_I = -1_I M_chi R 1_I,             (1)

because J_ell 1_I=0. We show the right-hand side is not trace class.

Let R_line be the resolvent of the same free expression on the full line.
For input supported in I, the restriction of R_line to the half-line and
the half-line resolvent R solve the same inhomogeneous equation. Their
difference is a homogeneous L² half-line solution. By the uniqueness
argument in `interior-dirac-poisson-existence.md`, that solution space has
dimension at most one. Hence

    1_I (R-R_line) 1_I

has rank at most one. In the sigma_2 eigenbasis, the plus component of
1_I R_line 1_I is, up to a nonzero constant, the integral operator with
kernel

    1_(x>y) exp[-(x-y)],   x,y in I.                       (2)

On the bounded interval I this operator is a product of bounded invertible
multipliers and the Volterra operator V f(x)=integral_(left endpoint)^x f(y)dy.
The singular values of V are |I|/[pi(n-1/2)], n>=1: they follow by solving
the eigenvalue equation for V*V with its mixed endpoint conditions. Their
sum diverges, so V and (2) are not trace class. A finite-rank perturbation
cannot change that conclusion.

If the right-hand side of (1) were trace class, multiplication by 1/chi on
I, which is bounded there, and compression to the plus sigma_2 component
would make (2) plus a finite-rank operator trace class. This contradiction
proves that M_chi D_ell itself is not trace class. The conclusion holds even
if chi is cubic at x1: for any fixed ell>0 a nonzero cubic on the collar is
bounded away from zero on some smaller interior interval.

If the angular tower contains this zero mode, multiplying by the angular
heat factor leaves that mode's weight equal to one, so it does not repair
this one-sided trace-class failure. The recorded magnetic model's lowest
Landau level is a zero angular mass when present; if it is excluded, this
specific zero-mode example does not by itself settle the higher-mode trace.
The calculation does not rule out a difference of positive-square resolvents,
a heat kernel with additional radial smoothing, a valid subtraction or a
signed regularized trace. It shows those mechanisms must be proved rather
than inferred from small collar width or a small cubic multiplier.

Remaining to-do list: establish an appropriate square/heat or subtraction
estimate for boundary-touching insertions, match the physical domains and
regulator, complete novelty and manuscript work, and certify supported claims
in Lean on GCP.
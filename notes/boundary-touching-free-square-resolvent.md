# Boundary-touching positive-square resolvent in the free mode

This gives a concrete square-resolvent counterpart to the first-order
obstruction in `boundary-touching-resolvent-nontraceclass.md`. It is an
exact free zero-angular-mode half-line calculation, not the physical paired
heat response, the complete angular tower or a Lean certificate.

Use y=x1-x>=0 as inward coordinate. Let H=-i sigma_2 partial_x with the
local sigma_1 projector at y=0, and H_ell its corresponding realization on
y>=ell. The composition-domain calculation in
`finite-interval-radial-square-domain.md` applies at the single endpoint:
H² is -partial_y² with Neumann on the allowed sigma_1 component and Dirichlet
on the other. Fix mass parameter M>0, put

    R=(H²+M²)^(-1),  R_ell=(H_ell²+M²)^(-1),

and let J_ell restrict to y>=ell. For u>=0 in L¹ intersect L-infinity, put
S=M_sqrt(u), U=integral_0^infinity u(y)dy and
U_ell=integral_0^ell u(y)dy. Then

 ||S[J_ell* R_ell J_ell-R]S||_1
   <= ||u||_infinity (1-exp(-2M ell))/(2M²)
                                  + (2/M) sqrt(U U_ell).  (1)

In particular both localized positive-square resolvents and their difference
are trace class, including when u is nonzero throughout the removed collar.

## Proof

The scalar Neumann/Dirichlet kernels of R are

    G_±(y,y')=[exp(-M|y-y'|) ± exp(-M(y+y'))]/(2M).

Their diagonal fiber trace is G_+(y,y)+G_-(y,y)=1/M. Therefore
S R^(1/2) is Hilbert--Schmidt with squared norm U/M; with
E=1_(0,ell), S E R^(1/2) has squared norm U_ell/M. Let P=1-E. The exact
identity

    S(R-P R P)S = S E R S + S P R E S

and Schatten Holder give a trace-norm bound 2 sqrt(U U_ell)/M. This treats
both the collar and its cross term; no diagonal-only approximation is used.

On the retained half-line, the cut and full Green kernels differ only by
an image term. For y,y'>=ell,

    G_(cut,±)-G_(full,±)
       = ±(1-exp(-2M ell))/(2M) exp[-M(y-ell)] exp[-M(y'-ell)].

This is rank one in each of the two spin components. Its symmetrically
localized trace norm is at most the first term in (1), since the L² norm
squared of exp[-M(y-ell)] on y>=ell is 1/(2M). Adding the collar bound
proves (1).

If u(y)<=K y³ on 0<y<ell, then U_ell<=K ell^4/4, so (1) gives

    ||S[J_ell* R_ell J_ell-R]S||_1
       <= (||u||_infinity/M) ell + (sqrt(K U)/M) ell².   (2)

The limit is at fixed M>0. A signed insertion can be treated by placing its
bounded sign multiplier on one side of the symmetrically localized operator;
that statement still requires the appropriate trace convention.

This result is specific to the free zero mode and the local cut projector.
The nonzero angular potential, angular sum, actual infinity boundary map,
regular bolt and uniform integration over mass/heat parameters are not
covered. It illustrates why a square-resolvent or heat calculation can have
better trace properties than the one-sided first-order resolvent, without
claiming the physical subtracted response is proved. No numerical
calculation is used.

Remaining to-do list: extend or replace this estimate for the actual paired
operator and regulator, resolve prior art, prepare the manuscript, and
certify supported claims in Lean on GCP.
# Common radial square domain on a finite interval

This verifies the common-domain and nonnegative lower-bound hypotheses of
`radial-heat-mixing-bound.md` for an explicit finite-interval model with
local zero-angle boundary projectors. It does not identify the actual
physical infinity condition or smooth bolt, and is not Lean-certified.

Let I=[x0,x1], a real W1,infinity function, and mu real. Set

    H_mu=-i sigma_2 partial_x + mu a(x) sigma_1,
    P_±=(1±sigma_1)/2.

At each endpoint independently choose an allowed eigenspace P_e, either
P_+ or P_-. Define Dom(H_mu) as H¹ spinors whose endpoint trace lies in
that eigenspace. Integration by parts gives the boundary pairing involving
sigma_2. Since sigma_2 interchanges the sigma_1 eigenspaces, the chosen
one-dimensional subspace is its own boundary-pairing annihilator. The
adjoint domain is therefore the same H¹ projector domain: maximality follows
from the one-dimensional trace theorem and arbitrary endpoint traces.
Hence H_mu is self-adjoint; the bounded real potential does not alter this
domain.

For u in Dom(H_mu²), both u and H_mu u are in H¹. The equation for u'
then gives u in H², since a is W1,infinity. At each endpoint, the condition
(1-P_e)u=0 and the second condition (1-P_e)H_mu u=0 reduce to

    (1-P_e)u=0,       P_e u'=0.                            (1)

Indeed sigma_1 preserves P_e, so the potential contributes no forbidden
boundary component, while sigma_2 maps the allowed derivative to the
forbidden line. Conversely, an H² spinor satisfying (1) belongs to the
composition domain. Thus these are exactly the square boundary conditions,
not a frozen-domain assumption.

Let L0_mu=-partial_x²+mu² a² on the same H² domain (1). It is the direct
sum of scalar mixed Dirichlet/Neumann realizations plus a bounded
nonnegative potential, so it is self-adjoint and nonnegative and commutes
with sigma_1. The product calculation gives

    H_mu² = L0_mu - mu a'(x) sigma_3                       (2)

on this common domain. The multiplication term is bounded for each mu;
H_mu² is nonnegative by self-adjointness of H_mu. Consequently the two
lower bounds in `radial-heat-mixing-bound.md` hold here with kappa=0, and
its Duhamel estimate becomes

    ||P_± exp(-t H_mu²) P_∓|| <= t |mu| ||a'||_infinity.  (3)

This verifies those hypotheses for the finite interval with the specified
local projectors. The source's boundary condition may instead be imposed at
conformal infinity, whose transported projector is generally different and
frequency dependent. A regular disk bolt is not an arbitrary interval
endpoint. Those physical identifications, the radial trace-class observable,
angular heat factor, mixed response and regulator remain open. No numerical
calculation is used.

Remaining to-do list: establish physical boundary and bolt matching, complete
the response and prior-art audit, prepare the manuscript, and certify
supported claims in Lean on GCP.
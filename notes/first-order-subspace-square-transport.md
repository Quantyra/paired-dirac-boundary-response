# First-order transport inside the zero-parameter square system

This identifies the precise relationship between the first-order boundary diagnostics and the square-flux system in `full-weyl-symmetric-lapse-transfer.md`. It is local, at zero square spectral parameter and zero collar source; it is not a full resolvent or heat-boundary theorem.

For P=sqrt(F)(H_mu+i nu)sqrt(F), put eta=sqrt(F)psi and xi=F(H_mu+i nu)eta as in the square-transfer note. At M=0, zeta=0 and g=0, its system reduces to

 eta'=(nu sigma_2-mu a sigma_3)eta+i F^-1 sigma_2 xi,
 xi'=(-nu sigma_2-mu a sigma_3)xi.                       (1)

The subspace xi=0 is invariant. There (1) becomes

 eta'=(nu sigma_2-mu a sigma_3)eta,                       (2)

which is exactly the first-order equation (H_mu+i nu)eta=0. In particular, for mu=0 its line transport is the hyperbolic thermal calculation of `thermal-zero-sector-boundary-nonuniformity.md`; for nu=0 it is the angular calculation of `finite-cut-boundary-transport.md`. Positive scalar sqrt(F) does not change the first-order projector line at a fixed endpoint, provided the stated regular finite-cut traces exist.

This inclusion is proper: the general local solution of P*P psi=0 can have nonzero xi, and its eta receives the off-diagonal xi term in (1). A nonzero square spectral parameter introduces the lower-left coupling i zeta F^-1 sigma_2, while a removed-collar source adds the inhomogeneous displacement. Therefore the first-order line projection and its heat-damped sum cannot replace the full two-flux-component boundary relation or the source-dependent square resolvent comparison. In particular, local factorized solutions need not satisfy the other global endpoint condition or be global L2 zero modes.

The result applies to the stated finite regular collar and scalar congruence; it does not establish the actual physical endpoint domain, infinity matching, trace normalization or regulator. No Lean certification is claimed.

Remaining to-do list: control the full square flux plane and source displacement on physical domains, establish the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

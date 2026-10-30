# Conformal boundary data versus physical Euclidean L2

This is a scope check on the fixed massless RN product compactification in
`stationary-exterior-conformal-domain.md` at scientific commit f0eab590. It
identifies a singular-weight obstruction to treating two domain statements
as the same unitary assertion. It is not an inconsistency proof for the
source's boundary prescription, a determinant calculation, or a Lean
certificate.

The pinned source writes g=Omega^2 ghat with Omega=1/u, where u=0 is the
smooth compactified outer boundary and the compactified volume density is
smooth and nonzero there. Its four-dimensional conformal covariance uses

    psi_g=Omega^(-3/2) psi_hat.                         (1)

For the geometric Hilbert spaces, dvol_g=Omega^4 dvol_hat, so the unitary
map from physical L2(g) to compactified L2(ghat), after the same fiber
identification, is

    U psi_g=Omega^2 psi_g=Omega^(1/2) psi_hat
                                      =u^(-1/2) psi_hat. (2)

The conformal field psi_hat and the unitary image U psi_g are therefore
not the same variable. At a finite cut u>=delta>0 the multiplier u^(-1/2)
and its inverse are bounded, but these bounds are not uniform as delta->0.

Suppose psi_hat is H1 on the compactified manifold and its boundary trace
is nonzero in L2 on some positive-measure subset of the boundary. The H1
trace theorem and collar continuity in L2 imply that ||psi_hat(u,.)||_L2
has a positive lower bound for sufficiently small u. Since the volume density
is comparable to du times the boundary density near u=0,

    ||U psi_g||^2_L2(ghat)
       >= c integral_0^u0 u^(-1)||psi_hat(u,.)||^2_L2(boundary) du
       = infinity.                                      (3)

Thus nonzero H1 conformal boundary data, including allowed nonzero
Pi_+-projected data, cannot simultaneously be an ordinary physical Euclidean
L2 spinor through (1). This does not mean the canonical Lorentzian boundary
data, a nonnormalizable source, a distributional boundary problem, or a
renormalized determinant is invalid; those are distinct constructions whose
Hilbert spaces and boundary traces must be specified. The calculation also
does not say every zero-trace field has a finite physical norm.

On finite cuts, the actual unitary conjugation of the physical Dirac
expression is

    U D_g U^-1=Omega^(-1/2) D_hat Omega^(-1/2)
              =u^(1/2) D_hat u^(1/2).                  (4)

This is a congruence with an inverse multiplier that becomes unbounded at
infinity. Consequently the bounded-invertible congruence theorem and the
H1 projector domain of D_hat cannot simply be applied at u=0 to identify the
unitary physical L2 domain with the compactified one. The finite-cut local
boundary relation transforms by the source's conformal weight, but its
limiting self-adjoint or closed realization and the determinant's anomaly
and boundary transgression require separate arguments.

In particular, `compactified-infinity-local-cut-limit.md` establishes a
conditional limit for the compactified operator and its H1 projector domain;
(3)--(4) show why that result alone is not a unitary physical-domain
identification. This finding narrows no already proved compact-model claim.
No numerical computation is used.

Remaining to-do list: specify and match the physical and conformal boundary
spaces and anomaly/regularization, prove the full response, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
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
## Weighted graph norm and the H1 boundary mismatch

On the compactified RN collar write `g=u^(-2) ghat`, with `u=0` at the outer boundary and `dvol_g=u^(-4)dvol_ghat`. Four-dimensional spinor conformal covariance uses

```text
psi_g = u^(3/2) psi_hat,
D_g psi_g = u^(5/2) D_hat psi_hat.
```

Therefore the physical graph norm, expressed in the compactified spinor variable, is

```text
||psi_g||_(L2(g))^2 + ||D_g psi_g||_(L2(g))^2
 = integral [u^(-1)|psi_hat|^2 + u|D_hat psi_hat|^2] dvol_ghat.  (4)
```

This is the natural weighted graph quantity on smooth compactly supported core sections. It is not the unweighted compactified H1 graph norm used by the local-projector moving-cut estimates.

Within `H1(ghat)`, the first term in (4) is finite if and only if the *entire* trace of `psi_hat` vanishes. If the trace is nonzero on a positive-measure boundary patch, the collar continuity in L2 gives a positive lower bound for its tangential L2 norm near `u=0`, and `integral du/u` diverges. Conversely, for zero trace, the one-dimensional Hardy estimate on a collar chart gives

```text
integral_0^a |f(u)|^2 du/u
 <= integral_0^a (integral_0^u |partial_v f(v)|^2 dv) du
  = integral_0^a (a-v)|partial_v f(v)|^2 dv
 <= a integral_0^a |partial_v f(v)|^2 dv.
```

first for smooth zero-trace sections and then by H1 density. Uniform equivalence of the collar density and a finite atlas gives the corresponding boundary estimate. Thus, among compactified H1 sections, physical L2 selects zero full trace. The source local projector condition `Pi_- tr(psi_hat)=0` permits nonzero `Pi_+` trace and is strictly weaker.

This does not invalidate the source's canonical boundary data: they may define a nonnormalizable boundary source or a different renormalized/domain realization. It does mean that the compactified H1 projector domain cannot be identified with the ordinary physical Euclidean L2 domain by the stated conformal spinor map. A physical bridge must specify which Hilbert space and endpoint realization is intended, and prove how its boundary data enter the determinant.

## Pinned source wording check (2026-10-31)

The parent source at immutable commit
`08cb71afea3f0e5310cac8a50c05d5007555641f`,
`notes/coupled-fermion-domain.md`, says: “At conformal infinity use finite
canonical boundary data in a common conformal frame.” It then derives the
maximal-isotropic coupled projector and states a self-adjoint Hamiltonian
domain for the corresponding smooth compact regular boundary problem, with
horizon ends and infrared zero modes requiring separate prescriptions. This
specifies the source boundary-data convention and the finite-problem domain
argument. It does not specify that the conformal-end realization is the
completion in ordinary physical `L2(g)`, nor give a weighted endpoint graph
domain or identify its determinant with that of the compactified `H1`
projector realization. The companion pinned note
`notes/stationary-exterior-conformal-domain.md` calls its radial projector
prescription the “actual Euclidean domain,” but likewise does not resolve
that Hilbert-space identification. Both files were inspected read-only; the
parent repository has concurrent dirty work and was not modified.

This source check therefore sharpens the open bridge: preserve the canonical
boundary prescription as stated, and obtain an explicit statement from the
source derivation about the intended endpoint Hilbert/renormalized space
before identifying it with ordinary physical `L2`. It neither disproves the
prescription nor supplies the missing response theorem.

**First unsupported implication.** Applying the compactified product moving-cut mixed-heat estimate to the physical finite-cut congruence or using the source's nonzero projector trace as an ordinary physical L2 state. The required weighted graph realization and its heat/contact response have not been established.

**Numerical role.** None. This is a norm/domain calculation; no numerical or Lean claim follows.

Remaining to-do list: identify the intended physical endpoint Hilbert space and boundary realization, prove its weighted graph and response estimates, match source density/contact/LLL normalizations and common regulator, then finish novelty, manuscript and claim-matched Lean certification.



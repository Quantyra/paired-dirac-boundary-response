# Symmetric-lapse square domain and outer flux traces

This supplies the local square-domain hypotheses used in
`symmetric-lapse-localized-joint-cut-limit.md` for the smooth compact product
model of `bolt-symmetric-lapse-domain-equality.md`. It is conditional on the
specified global bundle, physical H1 domains and unitary mode identification;
it is not a proof of infinity-boundary transport or a Lean certificate.

Let D be the smooth Dirac realization on the compact orbit disk with
Dom D={psi in H1: Pi_- trace psi=0} and complementary adjoint domain
Dom D*={phi in H1: Pi_+ trace phi=0}. Suppose the unitary gamma_tau
interchanges these eigenspaces on the outer collar, and let P=gamma_tau D.
Then

    Dom P=Dom D,       Dom P*=gamma_tau Dom D*.         (1)

The latter has Pi_- trace zero because gamma_tau exchanges Pi_+ and Pi_-.
The identity is for the actual closed Hilbert-space adjoint, not merely a
formal adjoint. Therefore the positive square's composition domain is

    Dom(P*P)={psi in Dom P: P psi in Dom P*},          (2)

with both psi and P psi satisfying the Pi_- trace condition.

Fix a thermal and sphere mode, use the unitary canonical coordinate and
put eta=sqrt(f)v and xi=f(H_mu+i nu)eta as in
`euclidean-canonical-unitary-half-density.md`. On a smooth fixed outer
collar f and f^-1 are bounded with bounded derivatives. If v is in the
composition domain, v and P_sym v are H1 locally there. The first-order
expression P_sym has an invertible normal coefficient, so solving it for
partial_s v and differentiating weakly shows v is H2 locally up to the outer
boundary. The scalar multipliers also make eta,xi H1 there. Equation (2)
therefore gives the ordinary Sobolev traces

    Pi_- eta=0,       Pi_- xi=0.                       (3)

Conversely, suppose v is in Dom P_sym, is H2 locally at the outer boundary,
the formal square L_formal v is L2 on the punctured disk in the unitary
representation, and (3) holds. The first condition is already implied by
Dom P_sym but is retained for clarity. Set w=P_sym v, which is L2. The
second condition says that w has the required Pi_- trace, because xi differs
from w by the positive scalar sqrt(f) on the collar. Away from the bolt,
L_formal v is the formal adjoint applied to w; local elliptic regularity gives
w in H1, including at the outer collar from the stated H2 regularity.
At the bolt, undo the unitary spin/coordinate maps. The formal adjoint of
w is an H^(-1) distribution since w is L2; its difference from the L2
extension of L_formal v is supported at one point. As in the bolt-domain
note, no nonzero point-supported distribution is in H^(-1) in two
dimensions. The defect vanishes, and interior elliptic regularity gives
w in H1 through the bolt. Thus w belongs to Dom P*, and v belongs to the
actual composition square domain. Equality of the formal and closed actions
follows as well.

The same local argument applies at each smooth finite cut with the stated
local projector. It justifies the two homogeneous flux traces and the
positive-square resolvent domain used in the symmetric-lapse comparison,
without an artificial bolt boundary. It does not say that a local projector
at the cut equals the spectral condition transported from infinity, nor
that square domains stay fixed for general metric variations. The global
spin/copy and monopole identification, mode reduction, physical regulator and
complete response still require independent verification. No numerical
calculation is used.

Remaining to-do list: match the physical boundary and bundle, prove the full
response and common regulator, resolve prior art, prepare the manuscript, and
certify supported claims in Lean on GCP.
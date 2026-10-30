# RN bolt and the global radial gap assumption

This checks the global lower-bound hypothesis in
`variable-radial-removed-collar-square.md` for a fixed nonextremal RN-AdS
canonical radial model. It does not identify the canonical Hamiltonian with
the complete Euclidean paired operator, prove a physical response, or
provide Lean certification.

Let f be the fixed smooth RN-AdS lapse outside a horizon r_+>0, with
f(r_+)=0, f'(r_+)=k>0 and f(r)>0 for r>r_+. Let the tortoise coordinate
satisfy dx/dr=1/f(r), and use the source's canonical angular coefficient

    a(x)=sqrt(f(r(x)))/r(x).

Near r_+, integration of dx/dr gives

    x=(1/k) log(r-r_+) + O(1),   x -> -infinity.

Hence r-r_+=O(exp(kx)), a(x)=O(exp(kx/2)), and, differentiating a with
respect to x using dr/dx=f(r), also a'(x)=O(exp(kx/2)). Thus a and a'
tend to zero at the bolt end of the canonical half-line. In particular no
constant a0>0 can satisfy a(x)>=a0 on that entire half-line. A positive
lower bound on a fixed outer collar remains possible; extending it to the
bolt is the unsupported step.

For each fixed angular eigenvalue mu, consider the separated self-adjoint
canonical radial H_mu=-i sigma_2 partial_x+mu a(x) sigma_1 with any of the
local endpoint projectors used in the half-line model. Its square acts on
interior compactly supported spinors as

    H_mu²=-partial_x²+mu² a²-mu a' sigma_3.

For every k0>=0 choose smooth normalized wave packets supported farther
and farther toward x=-infinity, with support lengths tending to infinity,
and oscillation exp(i k0 x). On those supports a and a' tend uniformly to
zero, while derivatives of the envelope tend to zero. The packets lie in
the square domain because they are compactly supported away from the outer
boundary, converge weakly to zero, and satisfy

    ||(H_mu²-k0²) psi_n||_2 -> 0.

Weyl's criterion therefore puts every k0²>=0 in the essential spectrum of
H_mu². Since H_mu is self-adjoint, H_mu² is nonnegative, so its essential
spectrum is exactly [0,infinity) for each fixed mu. This conclusion is for
the declared canonical half-line realization; it does not assert that the
compact Euclidean disk square has the same spectrum.

Consequently a global lower bound H_mu²>=c mu² with c>0 cannot hold for
nonzero mu in this model, even though the outer-collar angular coefficient
is bounded away from zero. The global comparison-resolvent argument in
`variable-radial-removed-collar-square.md` is therefore unavailable on the
full RN canonical half-line as stated. A viable local estimate would need to
exploit separation from the bolt, local ellipticity, and off-diagonal decay,
or use the actual compact Euclidean realization with its own proof. This is
a limitation of that proof route, not a statement of response divergence,
wormhole existence or stability. No numerical calculation is used.

Remaining to-do list: obtain the needed local boundary estimate without a
global angular gap, recover the pending GCP run, match the physical domains
and regulator, complete novelty and manuscript work, and certify supported
claims in Lean on GCP.
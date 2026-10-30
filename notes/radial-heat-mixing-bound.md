# Conditional control of radial heat block mixing

This quantifies the off-diagonal term identified in
`radial-heat-block-mixing.md` for a specific bounded-perturbation model. It
is not a proof that the physical paired domain has this decomposition or a
Lean certificate.

For each angular eigenvalue mu, suppose the radial heat operator has a
self-adjoint decomposition on one common domain

    L_mu = L0_mu + V_mu,
    V_mu = -mu a'(x) sigma_3,

where ||a'||_infinity<=G, L0_mu is diagonal in the sigma_1 basis, and both
L_mu,L0_mu are bounded below by -kappa with kappa independent of mu. The
boundary conditions are included in L0_mu and must be the same for both
operators; the equality of interior differential expressions alone does not
establish these domain or lower-bound hypotheses. V_mu is bounded for each
fixed mu. Duhamel's formula gives

    ||exp(-tL_mu)-exp(-tL0_mu)||
       <= t |mu| G exp(kappa t).                           (1)

Since exp(-tL0_mu) is block diagonal,

    ||P_+ exp(-tL_mu) P_-||,
    ||P_- exp(-tL_mu) P_+||
       <= t |mu| G exp(kappa t).                           (2)

Now let R_mu(t) be a trace-class radial operator acting identically on both
orbit components, with ||R_mu(t)||_1<=M uniformly in mu and 0<t<=1. Form
the 2-by-2 matrix W_mu(t) whose entries are radial traces of
R_mu(t) exp(-tL_mu). Then the diagonal entries are bounded by M exp(kappa t)
and, by (2), the off-diagonal entries by M t |mu| G exp(kappa t).
The observable must actually admit this representation for the estimate to
apply; this has not been established for the physical response.

For lambda=mu A, the transport projector difference has diagonal entries
of magnitude s²<=lambda² and off-diagonal entries of magnitude |cs|<=|lambda|,
as in `transport-signed-block-cancellation.md`. If the angular heat trace
satisfies Tr exp(-tB²)<=H t^(-m/2), summing the two diagonal and two
off-diagonal contributions yields

 |sum_mu exp(-t mu²) tr_orbit[Q(mu A) W_mu(t)]|
    <= C M H exp(kappa t)
       [A² t^(-(m+2)/2) + |A| G t^(-m/2)].              (3)

Here the common estimate sum mu² exp(-t mu²)<=C H t^(-1-m/2)
controls both terms, and angular multiplicities are counted once. For m=2
and bounded G, |A|=o(t) suffices for the right side of (3) to vanish. This
is a signed observable bound; it does not contradict the sharper absolute
trace-norm obstruction for Q_A itself.

The uniform lower bound, common radial domain, radial trace-class insertion,
angular heat factor and physical boundary map are substantive unresolved
requirements. In particular, if the radial trace norm or lower bound depends
on mu or t, those dependencies must be included before summing. Equation (3)
does not establish the full geometric response or regulator limit. No
numerical calculation is used.

Remaining to-do list: match the physical radial domains and observable,
complete the response and prior-art audit, prepare the manuscript, and
certify supported claims in Lean on GCP.
# Joint infrared, angular and cut rate in the canonical model

This combines the bounds in `rn-all-mode-infrared-cut-limit.md`,
`rn-regulated-low-mass-cut-integral.md`, and
`rn-regulated-high-mass-cut-integral.md`. It concerns their localized
square-resolvent *difference* in the canonical model, not a physical common
regulator, a determinant, or a Lean certificate.

Use the same fixed RN-AdS seed, local cut projector, bounded nonnegative
integrable insertion u, and complete magnetic angular spectrum. Assume u is
cubic at the endpoint, so U_ell=integral_0^ell u=O(ell^4). Let
A=integral |a(x)| dx<infinity, and choose fixed M_*>C_a/sqrt(2). Write
D_ell(M) for the angularly weighted localized cut difference and let its
angular heat parameter be tau. Let the Gaussian mass regulator be epsilon;
the two parameters have different roles even when set equal below.

For 0<tau small, choose

    L=16(A^2+1),      M_min=exp(-L/tau),
    ell=exp(-4L/tau), epsilon=tau.                       (1)

For fixed M_*, M_min lies below min(1,M_*) when tau is sufficiently small.
The all-mode transform bound, with the angular heat count and completion of
the square, gives

    sum_mu exp(-tau mu^2+4A|mu|)
       <= exp(8A^2/tau) Theta(tau/2)
       <= C tau^(-1) exp(8A^2/tau),                     (2)

including the finite zero-mode multiplicity. Thus the integral over
0<M<M_min is bounded in trace norm by

    C U M_min tau^(-1) exp(8A^2/tau).                  (3)

This is the absolute bound from the all-mode transform, not an assumption
that each unsubtracted mass integral has a limit.

On M_min<=M<=M_* use the low-mass retained and removed bounds in the cited
low-mass note. With (1), its slowest exponential factor is
sqrt(ell) M_min^(-1)=exp(-L/tau); all remaining factors are fixed powers of
tau^(-1) and log(M_*/M_min). On M>=M_* use the high-mass bounds with
epsilon=tau: every term contains sqrt(ell) or sqrt(U U_ell)=O(ell^2), times
powers or logarithms of tau. Combining the three intervals yields, after
increasing C for sufficiently small tau,

    ||integral_0^infinity 2M exp(-tau M^2) D_ell(M) dM||_1
       <= C tau^(-3) exp[-L/(2tau)] -> 0.                (4)

For (3), L-8A^2>=L/2; the extra tau power in (4) absorbs the displayed
polynomial and logarithmic factors. The full integral is Bochner integrable:
(3) controls the infrared interval and the previously proved bounds control
the other intervals. The same upper bound controls the integral of the
trace norm, and is integrable against d tau/tau^2 near zero.

This is an explicit sufficient path, deliberately conservative: the
exponential dependence comes from the global transform estimate and is not
claimed sharp or necessary. The angular heat weight and mass Gaussian are
model choices, and the removed collar ell is distinct from any localization
scale for the physical contact. No matching to the physical Euclidean lapse,
transported boundary condition, angular/thermal normalization, metric
vertices or counterterms follows from (4). No numerical calculation is used.

Remaining to-do list: match physical domains, boundary and regulator; prove
the full subtracted response, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
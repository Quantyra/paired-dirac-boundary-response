# Frequency-dependent finite-collar transport bound

This extends `finite-cut-boundary-transport.md` to a nonzero complex spectral
parameter for its separated radial model. It gives an all-mode upper bound,
not the physical Dirichlet-to-Neumann map, a common-regulator theorem or a
Lean certificate.

On a finite collar [x0,x1], take

    H_mu=-i sigma_2 partial_x+mu a(x) sigma_1,
    H_mu psi=z psi,

with real angular eigenvalue mu, complex z and a in L¹. The equation is

    psi'=(-mu a(x) sigma_3+i z sigma_2)psi.               (1)

The two matrices in (1) need not commute, so let U be the fundamental matrix
transporting from one endpoint to the other rather than replacing it by the
exponential of an integral. Put

    A=integral_(x0)^x1 |a(x)| dx,   D=x1-x0,
    K=|mu| A+|z| D.

The Volterra equation and Gronwall's inequality give

    ||U-I|| <= exp(K)-1.                                  (2)

The inverse transport obeys the same estimate, so its orientation does not
affect the following bound. Let P0 project onto the normalized zero-angle
line at the reference endpoint, and let P_(mu,z) be the orthogonal
projection onto its image under U. A fundamental matrix is invertible, so
the image line is defined. If K is sufficiently small, normalizing Uv for
a unit vector v in the original line changes it by at most a fixed multiple
of ||U-I||; the difference of the two rank-one projections has no larger
than a fixed multiple of that vector difference. For larger K, the norm of
the difference of two orthogonal projections is at most one. Hence

    ||P_(mu,z)-P0|| <= C min(|mu| A+|z| D,1).            (3)

This is an upper bound uniform in every mode; it makes no claim of a
frequency-independent local boundary condition. At z=0 it is compatible with
the sharper exact hyperbolic formula in the earlier note.

As a model summation, suppose z ranges over the fixed (anti)periodic thermal
frequencies nu_k of a circle, and the angular operator has the heat estimate
Tr exp(-tB²)<=H t^(-m/2). Weight each transported block by
exp[-t(mu²+nu_k²)] and include angular and thermal multiplicities exactly
once. The standard Gaussian bound for the fixed thermal lattice gives its
heat sum O(t^(-1/2)) for 0<t<=1. Applying (3), the rank-two trace-norm bound,
and |x|exp(-t x²)<=C t^(-1/2)exp(-t x²/2), yields

    ||Q_(A,D) exp[-t(B²+nu²)]||
       <= C (A+D) t^(-1/2),
    ||Q_(A,D) exp[-t(B²+nu²)]||_1
       <= C H (A+D) t^(-(m+2)/2).                         (4)

For m=2, (A+D)=o(t²) is sufficient for the absolute trace-norm bound to
vanish jointly. These are sufficient estimates, not claimed sharp. The
choice z=nu_k is an explicitly declared model identification; analytic
continuation or a different relation between spectral and thermal parameters
requires a separate calculation.

A finite D and integrable a are substantive hypotheses. In particular, an
infinite coordinate interval or a singular conformal boundary cannot be
replaced silently by a finite collar. The actual physical copy maps, regular
bolt, boundary condition, time-frequency correspondence, mixed response and
regulator remain unresolved. No numerical calculation is used.

Remaining to-do list: establish physical boundary transport and observable
matching, complete the response and prior-art audit, prepare the manuscript,
and certify supported claims in Lean on GCP.
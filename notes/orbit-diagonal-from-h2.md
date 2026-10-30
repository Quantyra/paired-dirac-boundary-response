# Orbit diagonal bound from a uniform square-domain estimate

This supplies a concrete sufficient input for `lapse-diagonal-heat-input.md`
on a fixed compact two-dimensional orbit. It does not prove that the paired
comparator satisfies the input or establish a physical response.

Let X be a fixed compact smooth two-dimensional manifold with smooth
boundary and E a fixed finite-rank Hermitian bundle. Let L_ell be the
nonnegative self-adjoint positive squares of the preceding lapse comparison,
with their actual composition domains. Suppose there is a constant C_E,
independent of ell, such that

    Dom(L_ell) is contained in H²(X,E),
    ||v||_(H²) <= C_E (||L_ell v||_2+||v||_2),
                                               v in Dom(L_ell). (1)

The domain and norm on the left are fixed ambient Sobolev spaces; (1) does
not require the composition domains to be equal for different ell. A
standard fixed-domain Sobolev extension and Fourier interpolation give

    ||v||_infinity <= C_X ||v||_2^(1/2) ||v||_(H²)^(1/2). (2)

For example, on R² split the Fourier representation at a frequency R and
use Cauchy--Schwarz on both pieces: the low-frequency contribution is at
most C R ||v||_2 and the high-frequency contribution at most
C R^(-1)||v||_(H²); optimize R. A bounded H² extension, bundle charts and a
finite partition of unity supply the compact-manifold version.

Spectral calculus for the nonnegative self-adjoint L_ell gives, for t>0,

    ||exp(-t L_ell)||_(2->2) <= 1,
    ||L_ell exp(-t L_ell)||_(2->2) <= (e t)^(-1).          (3)

Apply (1)--(2) to v=exp(-t L_ell)f. For 0<t<=1 this gives uniformly

    ||exp(-t L_ell)||_(2->infinity) <= C t^(-1/2)||f||_2. (4)

More precisely, (4) is the corresponding operator norm estimate. Together
with the kernel representation, (4) implies the t^(-1) diagonal bound in
`lapse-diagonal-heat-input.md`, including the fixed fiber-rank factor. The
same argument applies to the constant-lapse comparator if it satisfies (1).
The smoothing power is the required d/4 power for d=2.

The unresolved part is (1) for the actual paired square and with a uniform
constant. The lapse cutoff has uniform positive ellipticity, a fixed upper
bound and ||dF_ell||_infinity=O(ell), but those facts alone do not identify
or prove uniform H² regularity of its mixed projector/Robin square domain.
The first-order domain, induced boundary condition, regular bolt and local
charts must be matched, and any elliptic estimate must account for boundary
coefficients and fixed global geometry. In particular an H² estimate for one
smooth fixed seed cannot be reused without controlling its constants for the
whole family. This argument provides a specific regularity target; it does
not prove the kernel bound, physical matching, mixed Hessian, common regulator
or Lean certification. No numerical calculation is used.

Remaining to-do list: prove (1) and kernel representation for the auxiliary
paired family, establish physical locality and response, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
# Localized joint cut comparison for the symmetric lapse square

This transfers the model strategy of `lapse-square-thermal-gap-joint-limit.md`
to the corrected unitary expression in
`euclidean-canonical-unitary-half-density.md`, under the explicit domains and
coefficient hypotheses below. It does not establish the global physical
spinor domain, determinant regulator, or a Lean certificate.

On a radial half-line let H_mu=-i sigma_2 partial_s+mu a sigma_1 be
self-adjoint with a fixed local sigma_1 projector, a real and bounded. Let
f>=f0>0, with f, f^-1 in W2,infinity on a fixed outer collar [0,L0]; f may
be unbounded away from it. Define the closed full and cut operators

    P_sym=sqrt(f)(H_mu+i nu)sqrt(f),  L_sym=P_sym*P_sym,

on domains contained in {v:sqrt(f)v in Dom H_mu}, and assume the local
composition-domain trace and H2 regularity in
`euclidean-canonical-unitary-half-density.md`. Use the analogous local
projector and the same bounds for cuts 0<ell<L0/2. Let nu belong to a fixed
antiperiodic lattice, so |nu|>=nu0>0. The corrected thermal-gap argument gives

    L_sym >= g0^2,  g0=f0 nu0,                         (1)

on both full and cut domains. This is a conditional model spectral bound,
not a physical admission margin.

Let u>=0 be bounded, integrable and supported in the fixed outer collar;
put S=sqrt(u), U=integral u and U_ell=integral over the removed collar.
For the full square resolvent R=(L_sym+M^2)^-1, M>=0, the removed-collar
trace estimate can be obtained without bounding f globally. On the fixed
collar, the differential expression is

    P_sym=f(H_mu+i nu)-(i/2)sigma_2 f'.                 (2)

Writing Q=|nu|+|mu| ||a||_infinity plus fixed collar coefficient bounds,
choose lambda=C(1+Q^2), C large enough. The local form then satisfies

    ||P_sym v||^2_collar+lambda||v||^2_collar
       >= c ||v'||^2_collar+||v||^2_collar,             (3)

with fixed c>0, by the elementary inequality (x-y)^2>=x^2/2-y^2. On the
remaining half-line retain only lambda||v||^2. The decoupled comparison form
has Neumann conditions at the artificial collar cut and the outer endpoint,
a scalar c(-partial^2)+1 on the collar, and lambda on the complement.
Its form domain is larger than the original, so form inverse monotonicity
applies. The finite-interval Neumann diagonal is bounded by a constant
C_collar depending only on c and L0. Because S is supported in the collar,

    Tr[S(L_sym+lambda)^(-1)S] <= C_collar U.            (4)

For spectrum x>=g0^2, (x+lambda)/(x+M^2)<=1+lambda/g0^2. Applying (4) also
to the removed insertion and using Hilbert--Schmidt factorization yields

    ||S E R S||_1 <= C_collar(1+lambda/g0^2)
                              sqrt(U U_ell),            (5)

where E is the removed-collar projection. This covers the cross term and is
uniform down to M=0. The comparison uses only the outer collar; it does not
assume a global positive angular gap or bounded lapse at the bolt.

For the retained term, use eta=sqrt(f)psi and xi=f(H_mu+i nu)eta. The exact
flux system and source in equation (6) of
`euclidean-canonical-unitary-half-density.md` have coefficient integral
h<=C ell(1+|mu|+|nu|+M^2). The fixed-collar bounds on f and f^-1 turn the
gap resolvent estimates into H1 and endpoint trace bounds for eta and xi,
using the same argument as `lapse-square-endpoint-resolvent-comparison.md`.
Construct the interior boundary lift in eta, set psi=f^-1/2 eta, and apply
the positive square resolvent to remove its interior source. The fixed collar
regularity and (1) give a Poisson constant bounded by a polynomial in
1+|mu|+|nu|+M and g0^-1. The two scalar residuals determine the solution, so

 ||J_ell R-R_ell J_ell|| <= C sqrt(ell)
                  P(1+|mu|+|nu|+M) exp(h),             (6)

with P a fixed polynomial with nonnegative coefficients, and this
restriction difference has rank at most two per mode. As before, (6)
includes sources in the removed collar. The exact full-space decomposition
and (5) give a localized trace-norm difference bounded by twice ||u||_infinity
times (6) plus (5).

If u is cubic at the cut, U_ell=O(ell^4). Sum with the recorded magnetic
sphere multiplicities and antiperiodic thermal lattice using
exp[-tau(mu^2+nu^2)], and integrate over 0<=M<infinity with
2M exp(-epsilon M^2). Gaussian moment bounds and (6), when C ell<=epsilon/2,
give finite C',N,K such that

 integral 2M exp(-epsilon M^2) sum exp[-tau(mu^2+nu^2)]
     ||localized cut difference||_1 dM
   <= C'(sqrt(ell)+ell^2) tau^(-N) epsilon^(-K)
                                 exp(C' ell^2/tau).    (7)

All constants depend on the fixed geometry, period, collar, insertion and
domain hypotheses. For epsilon=tau=t and ell=exp(-1/t), (7) tends to zero
faster than any power and is integrable against dt/t^2. The weights and
this choice are model regulators, not identified physical counterterms. The
estimate does not control metric-response vertices or prove that the global
smooth-bolt Euclidean operator has the assumed canonical domains; it also
requires the fixed-collar support of u. No numerical calculation is used.

Remaining to-do list: prove the global physical bundle and bolt domains,
match the full response and common regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
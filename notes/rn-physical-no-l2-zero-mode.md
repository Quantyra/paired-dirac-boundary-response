# No L2 zero mode for the fixed massless RN exterior

This establishes a fixed-seed zero-mode statement for the separated massless geometric Dirac expression used in `rn-physical-escaping-spinor-gap.md`. It removes one possible contribution to the fixed-operator large-time limit in `gapless-localized-heat-endpoint.md`. It does not give a spectral gap, a rate, a cut-uniform estimate, or the mixed-response endpoint.

## Claim and hypotheses

Let the regular nonextremal Euclidean RN-AdS exterior have the metric and purely magnetic, static sphere connection stated in `rn-physical-escaping-spinor-gap.md`. Assume the spin and twisting bundle on an exterior collar is the stated product bundle with its fixed thermal spin structure and smooth magnetic sphere bundle. Let D be any closed realization of the corresponding massless Dirac expression whose domain consists locally of distributional sections on that collar; allow any boundary or matching conditions elsewhere, including a finite number of paired copies. Then

  ker D = {0},        ker(D*D) = {0}.                         (1)

The conclusion concerns this fixed model and a genuinely massless geometric Dirac expression. It does not identify the source's global bundle or physical paired realization; those remain hypotheses to check. A potential, nonstatic connection, or different asymptotic operator would require a new proof.

## Proof on the end

Use radial proper distance s and the unitary density transformation in equation (3) of `rn-physical-escaping-spinor-gap.md`. On s>s0 the transformed equation D psi=0 is

  [gamma_s partial_s + a(s)^(-1) D_tau + r(s)^(-1) D_S] v = 0,  (2)

where a(s)=sqrt(F(r(s))) and a(s)^(-1),r(s)^(-1) are integrable at infinity. The latter follows from r(s) growing exponentially and a(s)/r(s)->1/L_4.

The compact cross-section is S1 times S2 with its product spin/twist bundle. The finite-dimensional mode invariance can be checked explicitly. Choose a radial product Clifford representation in which gamma_s=sigma_1 tensor I, gamma_tau=sigma_2 tensor I, and each sphere Clifford matrix is sigma_3 tensor a two-dimensional sphere Clifford matrix. Let A_S be the self-adjoint magnetic-sphere Dirac operator, defined so that the sphere summand in (2) is i sigma_3 tensor A_S/r. This uses the same Hermitian-Clifford, skew-Dirac convention as the displayed equation; changing conventions only changes harmless signs. The Pauli factors act on the orbit spinor and commute with A_S.

The thermal Fourier functions have frequencies omega in the lattice fixed by the spin structure, while compactness and ellipticity give A_S an orthonormal eigenbasis with real eigenvalues lambda, including any zero modes. The static sphere connection and radial coefficients preserve each thermal/sphere eigenspace. In a mode, the two orbit components f(s) satisfy

  [sigma_1 partial_s+i omega sigma_2/a+i lambda sigma_3/r] f=0,
  f'=[omega sigma_3/a-lambda sigma_2/r] f.                     (2a)

The same statement holds for each multiplicity vector and each physical copy. Thus equation (3) below is an explicit two-by-two system; no interchange of a mode limit with the sum over modes is required.

For each block, the corresponding component v_m is locally H1 by local elliptic regularity and satisfies the finite-dimensional ODE

  v_m'(s)=B_m(s)v_m(s),   ||B_m(s)|| <= C_m[a(s)^(-1)+r(s)^(-1)].  (3)

Consequently B_m is integrable on [s0,infinity), for each fixed block. Let U_m(s) be its fundamental matrix with U_m(s0)=I. Gronwall's inequality bounds U_m and U_m^(-1) uniformly; the integral equation then shows both converge as s->infinity. Their limits are inverse matrices, so U_m(infinity) is invertible. Explicitly, the mode equation gives ||f(s)|| >= exp(-I_m)||f(s0)|| for all s>=s0, where I_m=integral_s0^infinity (|omega|/a+|lambda|/r) ds is finite. Every solution v_m(s)=U_m(s)c_m therefore has a finite limit, and that limit is nonzero whenever c_m is nonzero. Such a component cannot lie in L2([s0,infinity),ds). Since the density transform is unitary, the L2 norm of v is the sum of the nonnegative block norms; each block must vanish. Hence v vanishes on the whole exterior collar.

A weak solution of a smooth Dirac equation has local elliptic regularity and satisfies weak unique continuation for Dirac-type operators (see [Booß-Bavnbek, Marcolli and Wang](https://doi.org/10.1016/S0926-2245(01)00056-0)), so vanishing on this open collar forces it to vanish on the connected physical copy. Apply this on each copy; local seam or bolt conditions cannot create an additional solution vanishing on an open set. This proves ker D=0. Finally, the quadratic-form identity (psi,D*D psi)=||D psi||² implies ker(D*D)=ker D.

## Bounded scalar congruence

Suppose additionally that b is real and bounded, E=exp(-b/2) acts boundedly and invertibly on L2, and the varied realization has precisely Dom(D_b)={psi : E psi in Dom(D)} and D_b psi=E D(E psi). These are domain hypotheses, not consequences of boundedness alone. If D_b psi=0, invertibility of E gives D(E psi)=0; (1) then gives psi=0. Thus ker D_b=ker(D_b*D_b)=0 for every such fixed variation. This transfers no uniform-in-b rate or cut estimate and does not verify the geometric domain identification.
## Paired adjoint consequence

If, for the same closed realization, the separate geometric and domain audit establishes D*=-J D J for a bounded unitary involution J, then ker D*=J ker D={0}. Consequently ker(DD*)=ker D*={0}, so the fixed-localization limit (4) applies to both square partners when each satisfies the stated Hilbert--Schmidt smoothing condition. This uses the closed-operator identity including its domain, not merely a formal intertwining relation or equality of local matrices. It remains conditional on the physical partner identification.
## Consequence and remaining boundary

For a self-adjoint L=D*D and bounded localization S satisfying the Hilbert--Schmidt hypothesis in `gapless-localized-heat-endpoint.md`, (1) yields

  ||S exp(-T L) S||_1 -> 0      as T->infinity.                (4)

No rate follows: the escaping-spinor construction still rules out a cut-uniform positive massless gap. Equation (4) concerns the fixed unvaried operator and fixed localization only. It does not justify differentiating the endpoint, varying S, interchanging a cut limit, or integrating the complete mixed response. The bundle identification, the domain realization and the two partners must be matched separately before applying it to the source. No numerical or Lean certification is claimed.

Remaining to-do list: verify the source-specific product bundle and partner hypotheses, prove the mixed and cut-uniform endpoint and ultraviolet regulator, complete the novelty audit and manuscript, and certify supported claims in Lean on GCP.
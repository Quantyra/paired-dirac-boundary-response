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

The compact cross-section is S1 times S2 with fixed finite-rank spin/twist fiber. Fourier modes in the thermal variable and eigenspaces of the self-adjoint elliptic magnetic-sphere Dirac operator give an orthogonal decomposition into finite-dimensional invariant blocks for gamma_s, D_tau and D_S. If a gamma matrix exchanges positive and negative sphere eigenvalues, include both in the same block; include the finite-dimensional zero eigenspace separately. The static sphere connection and coefficients depending only on s ensure that the blocks do not mix. This statement can equivalently be checked in any fixed product Clifford representation by retaining the finite fiber multiplicity.

For each block, the corresponding component v_m is locally H1 by local elliptic regularity and satisfies the finite-dimensional ODE

  v_m'(s)=B_m(s)v_m(s),   ||B_m(s)|| <= C_m[a(s)^(-1)+r(s)^(-1)].  (3)

Consequently B_m is integrable on [s0,infinity), for each fixed block. Let U_m(s) be its fundamental matrix with U_m(s0)=I. Gronwall's inequality bounds U_m and U_m^(-1) uniformly; the integral equation then shows both converge as s->infinity. Their limits are inverse matrices, so U_m(infinity) is invertible. Every solution v_m(s)=U_m(s)c_m therefore has a finite limit, and that limit is nonzero whenever c_m is nonzero. Such a component cannot lie in L2([s0,infinity),ds). Since the density transform is unitary, the L2 norm of v is the sum of the nonnegative block norms; each block must vanish. Hence v vanishes on the whole exterior collar.

A weak solution of a smooth Dirac equation has local elliptic regularity and satisfies weak unique continuation for Dirac-type operators (see [Booß-Bavnbek, Marcolli and Wang](https://doi.org/10.1016/S0926-2245(01)00056-0)), so vanishing on this open collar forces it to vanish on the connected physical copy. Apply this on each copy; local seam or bolt conditions cannot create an additional solution vanishing on an open set. This proves ker D=0. Finally, the quadratic-form identity (psi,D*D psi)=||D psi||² implies ker(D*D)=ker D.

## Bounded scalar congruence

Suppose additionally that b is real and bounded, E=exp(-b/2) acts boundedly and invertibly on L2, and the varied realization has precisely Dom(D_b)={psi : E psi in Dom(D)} and D_b psi=E D(E psi). These are domain hypotheses, not consequences of boundedness alone. If D_b psi=0, invertibility of E gives D(E psi)=0; (1) then gives psi=0. Thus ker D_b=ker(D_b*D_b)=0 for every such fixed variation. This transfers no uniform-in-b rate or cut estimate and does not verify the geometric domain identification.
## Consequence and remaining boundary

For a self-adjoint L=D*D and bounded localization S satisfying the Hilbert--Schmidt hypothesis in `gapless-localized-heat-endpoint.md`, (1) yields

  ||S exp(-T L) S||_1 -> 0      as T->infinity.                (4)

No rate follows: the escaping-spinor construction still rules out a cut-uniform positive massless gap. Equation (4) concerns the fixed unvaried operator and fixed localization only. It does not justify differentiating the endpoint, varying S, interchanging a cut limit, or integrating the complete mixed response. The bundle identification, the domain realization and the two partners must be matched separately before applying it to the source. No numerical or Lean certification is claimed.

Remaining to-do list: verify the source-specific product bundle and partner hypotheses, prove the mixed and cut-uniform endpoint and ultraviolet regulator, complete the novelty audit and manuscript, and certify supported claims in Lean on GCP.
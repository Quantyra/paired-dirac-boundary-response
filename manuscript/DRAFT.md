# Paired Dirac domains and boundary response under mass and logarithmic variations

**Working draft — incomplete, not a manuscript release.** The full tangent boundary response, source-domain identification, curved extension, prior-art decision and requested Lean certification remain open. Statements below distinguish proved conditional operator facts from the intended physical application. No existence or stability conclusion for a wormhole is made.

## Abstract (provisional)

We study a paired Dirac realization with complementary boundary domains under scalar mass and metric variations. We give an operator-domain argument for bounded Lipschitz scalar congruences and identify the associated composition square. Under an additional paired involution, the square admits a skew-adjoint factorization and a mass-dependent resolvent bound. The intended application is a complete-frequency boundary response; its physical realization, normalization and renormalized curved trace remain to be established. The general boundary theory and prior work must be compared before any novelty claim.

## 1. Scope and setup

Let X be a smooth compact Riemannian manifold with boundary and E a finite-rank Hermitian Clifford bundle. Let D be a densely defined closed first-order Dirac realization in H=L2(X;E). Fix complementary orthogonal boundary projections Pi_plus and Pi_minus and assume the *actual closed domains* satisfy

 Dom(D)={psi in H1(E): Pi_minus trace psi=0},
 Dom(D*)={phi in H1(E): Pi_plus trace phi=0}.              (1.1)

Assume the weak scalar product rule D(a psi)=a D psi+c(da)psi for bounded Lipschitz scalars a. Normalize Clifford multiplication so ||c(db)||<=||db||_infinity. These are hypotheses of the results below. Their identification with the recorded folded physical bundle and its chosen realization is an outstanding application step, not a consequence of the displayed projector alone.

The source model has a regular thermal bolt and a paired outer boundary. Its recorded domains, common bundle map, angular decomposition, state and normalization are collected in `../notes/claim-dependencies.md`; the fixed-seed compact orbit calculation is in `../notes/source-orbit-compact-bolt-check.md`. The physical trace and source matching must be stated independently of the following abstract lemma.

## 2. Scalar congruences on the paired domains

**Proposition 2.1 (conditional domain preservation).** Let b be real W1,infinity, with B=||b||_infinity and G=||db||_infinity. Put E_b=exp(-b/2) and D_b=E_b D E_b on Dom(D). Under (1.1), D_b is closed and

 Dom(D_b)=Dom(D),  D_b*=E_b D* E_b,  Dom(D_b*)=Dom(D*). (2.1)

Moreover, for every psi in Dom(D),

 ||D_b psi|| <= exp(B)(||D psi||+(G/2)||psi||),
 ||D psi|| <= exp(B)||D_b psi||+(G/2)||psi||.            (2.2)

The positive square is D_b*D_b on the composition domain {psi in Dom(D_b): D_b psi in Dom(D_b*)}; equality with the unperturbed square domain is not asserted.

*Proof.* E_b and its inverse are bounded Lipschitz scalars. The trace product rule and commutation with the boundary projections show that both preserve each domain in (1.1) bijectively. A bounded invertible left and right multiplication of a closed operator is closed; taking its adjoint gives (2.1), with the asserted domain because E_b preserves Dom(D*). The weak product rule gives [D,E_b]=-(E_b/2)c(db). Applying it to E_b psi yields the first inequality of (2.2), while E_b^(-2)D_b psi=D psi-(1/2)c(db)psi yields the second. The stated square domain is the definition of operator composition. □

The fixed-seed hypotheses and source-specific limits of this proposition are audited in `../notes/paired-multiplier-domains.md` and `../notes/finite-cut-elliptic-domain-bridge.md`. This result does not provide a uniform trace bound or a renormalized response.

## 3. Paired factorization

**Proposition 3.1 (conditional mass resolvent).** In addition to Proposition 2.1, suppose J is a bounded unitary involution, commutes with E_b, and D*=-JDJ as an equality of closed operators. Then Q_b=J D_b is skew-adjoint, D_b*D_b=-Q_b², and for M>0,

 ||(M±Q_b)^(-1)||<=1/M,
 ||(D_b*D_b+M²)^(-1)||<=1/M².                           (3.1)

*Proof.* Equation (2.1), the commutation of J and E_b, and the assumed domain identity give D_b*=-J D_b J. Hence Q_b*=D_b*J=-J D_b=-Q_b, including domains. The spectral theorem for the self-adjoint operator iQ_b gives the two bounds. Since J is unitary, Q_b*Q_b=D_b*D_b; skew-adjointness makes Q_b*Q_b=-Q_b² on its composition domain. □

The source records a candidate J and matched copy/bundle data. The algebraic transition check is in `../notes/source-paired-bundle-transition-check.md`; equality with the physical global realization remains to be checked. Equation (3.1) is a per-mode operator bound. It does not justify summing a full angular tower or removing a proper-time regulator.

## 4. Tangent boundary response — work in progress

The planned theorem must specify the physical source, full angular and thermal spectra, state, paired domains, contact terms, and common regulator. The ordinary argument and first unsupported implication are tracked in `../notes/claim-dependencies.md` and `../notes/proof-audit.md`. No response theorem is asserted in this draft section.

## 5. Curved trace extension — work in progress

The source's localized tangent-subtracted curved remainder and the endpoint conversion are distinct observables; see `../notes/p1d-response-versus-conversion.md`. Their geometric vertices, weak boundary completion, gluing and regulator limits remain open. No global extension is claimed here.

## Verification and prior art — work in progress

The exact scope of any Lean certification must match the statements actually checked on GCP and include clean source and dependency provenance. A clean replay currently covers only a limited abstract algebraic congruence, not Propositions 2.1 or 3.1 in their entirety. The general elliptic-boundary and semigroup results used here are existing mathematics. A defensible paper-level novelty decision requires the pending closest-prior-art comparison.

Remaining to-do list: verify physical domain and bundle hypotheses; complete the full tangent response and any supported curved extension; finish prior-art and manuscript review; restore GCP access and certify the supported claims in Lean.
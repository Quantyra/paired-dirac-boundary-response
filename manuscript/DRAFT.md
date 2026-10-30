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

**Proposition 3.2 (bounded resolvent variation).** Let Q0=JD, and suppose the hypotheses of Proposition 3.1 hold with ||b||_infinity<=B=1/1000. For M>0 and complex bounded z define, for each sign,

 S_plus/minus(z)=exp((b+z)/2) [M exp(b+z) +/- Q0]^(-1)
                                      exp((b+z)/2).         (3.2)

For ||z||_infinity<r=1/8, the inverse in (3.2) exists by the Neumann series and S_plus/minus is holomorphic as a bounded-operator-valued function. At z=0 its first two derivatives obey

 ||DS_plus/minus(0)[u]|| <= 10.56 ||u||_infinity/M,
 ||D²S_plus/minus(0)[u,v]|| <= 337.92 ||u||_infinity||v||_infinity/M. (3.3)

For real z with the required Lipschitz multiplier domain preservation, these operators are the actual inverses of M +/- Q_(b+z). In particular, at z=0,

 (D_b*D_b+M²)^(-1)=[S_plus(0)+S_minus(0)]/(2M).           (3.4)

*Proof.* Skew-adjointness of Q0 and positivity of M exp(b) give ||(M exp(b) +/- Q0)^(-1)||<=exp(B)/M: the same lower bound for each adjoint gives surjectivity. For complex z, the perturbation M exp(b)(exp(z)-1) relative to either inverse has norm at most q=exp(2B)(exp(r)-1)<0.134. The Neumann series gives a holomorphic inverse and, with the two exterior multiplier norms,

 ||S_plus/minus(z)|| <= exp(2B+r)/[M(1-q)] < 1.32/M.

Cauchy's estimate on a radius-r disk in the direction u gives the first bound. For the mixed derivative use two disks of radii r/(2||u||) and r/(2||v||), so their sum stays in the ball; Cauchy's coefficient bound gives 4(1.32)/(M r²)=337.92/M. Zero directions are immediate. The inverse and factorization identities on the actual domains follow by conjugating M +/- Q_b with E_b and using the spectral calculus of the skew-adjoint Q_b. The exact numerical comparisons are detailed in `../notes/resolvent-variation-constants.md`, and the domain ordering is in `../notes/paired-square-resolvent.md`. □

For arbitrary complex L-infinity z, (3.2) is a bounded analytic continuation; it does not assert that multiplication by exp(-(b+z)/2) preserves a first-order operator domain. The constants are sufficient estimates, not measured physical margins. They do not make the angular trace summable or establish the common regulator.
## 4. Tangent boundary response — work in progress

The following is a flat diagnostic with its normalization declared explicitly. It does not yet identify the source's physical response, full angular tower, state, or common regulator.

Let a=alpha(1-alpha) and define

 F(x)=1/2+(1/2) integral_0^1 (1+a x) exp(-a x) d alpha,
 R3(x)=F(x)-1+x²/120-x³/840.                              (4.1)

For real even compactly supported profiles u,w on the normal line, use the Fourier convention uhat(k)=integral exp(-iky)u(y)dy, and set

 B_t(u,w)=(1/(pi t)) integral_R conjugate(uhat(k)) what(k)
                              R3(t k²) dk/(2pi).            (4.2)

In the stipulated rank-two flat orbit model, the full-plane mixed geometric heat-trace density has multiplier 2F(tk²)/(pi t). Formula (4.2) uses the conditional per-exterior half normalization and subtracts the displayed local Taylor terms. The momentum calculation, including the second vertex, is given in `../notes/flat-tangent-multiplier.md`; the physical folding and normalization remain application hypotheses.

**Proposition 4.1 (flat cubic coefficient).** Suppose, near zero, u(y)=c_u |y|³+r_u(|y|) and w(y)=c_w |y|³+r_w(|y|), with |r^(j)(y)|<=C y^(4-j)(1+|log y|) for j<=4. Assume smoothness away from zero, compact support, and integrable exterior fourth derivatives. Then the explicitly defined bilinear form (4.2) satisfies

 lim_(t->0) t^(-5/2) B_t(u,w)
                   =-15 c_u c_w/(1024 sqrt(pi)).           (4.3)

*Proof.* Distributionally, u''''=12 c_u delta_0+g_u with g_u in L1, and likewise for w. The Riemann--Lebesgue lemma gives k⁴ uhat(k)->12 c_u and the analogous limit for w, with these quantities bounded. Set s=sqrt(t)k in (4.2). The scaled kernel R3(s²)/s⁸ is integrable: R3(x)=O(x⁴) at zero and R3(x)=O(1+x³) at infinity. Dominated convergence therefore reduces the limit to 144 c_u c_w/pi² times the integral of that kernel on (0,infinity). Direct integration gives integral_0^infinity R3(s²)ds/s⁸=-5 pi^(3/2)/49152, yielding (4.3). The integral and endpoint justifications are recorded in `../notes/tangent-integral-argument.md`; the full weighted-profile argument is in `../notes/flat-weighted-cubic-leading-limit.md`. □

The bound on the weighted remainder alone does not select a unique logarithmic jet, so no logarithmic coefficient is claimed without further hypotheses. The half normalization, all physical vertices and the curved common-regulator limit remain to be matched. A GCP Lean receipt covers the raw tangent integral at a narrower scope; it does not certify Proposition 4.1 or the physical response.

## 5. Curved trace extension — work in progress

The source's localized tangent-subtracted curved remainder and the endpoint conversion are distinct observables; see `../notes/p1d-response-versus-conversion.md`. Their geometric vertices, weak boundary completion, gluing and regulator limits remain open. No global extension is claimed here.

## Verification and prior art — work in progress

The exact scope of any Lean certification must match the statements actually checked on GCP and include clean source and dependency provenance. A clean replay currently covers only a limited abstract algebraic congruence, not Propositions 2.1 or 3.1 in their entirety. The general elliptic-boundary and semigroup results used here are existing mathematics. A defensible paper-level novelty decision requires the pending closest-prior-art comparison.

Remaining to-do list: verify physical domain and bundle hypotheses; complete the full tangent response and any supported curved extension; finish prior-art and manuscript review; restore GCP access and certify the supported claims in Lean.
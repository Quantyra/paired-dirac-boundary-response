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

**Proposition 4.2 (explicit logarithmic jet).** Let chi be real, even, smooth, compactly supported and equal to one near zero. Suppose

 u=chi(c_u |y|³+d_u |y|⁴ log|y|)+h_u,
 w=chi(c_w |y|³+d_w |y|⁴ log|y|)+h_w,

where the real even compactly supported residuals are smooth away from zero, their derivatives through order three have zero limits at zero, their fourth derivatives have equal finite one-sided limits, and their classical fifth derivatives are integrable on the two open half-lines, with no other distributional jumps. Then, for (4.2),

 B_t(u,w)=-15 c_u c_w t^(5/2)/(1024 sqrt(pi))
           -(c_u d_w+d_u c_w)t³ log(t)/(70pi)
           +o(t³ |log t|).                                  (4.4)

*Proof.* The hypotheses make each residual fifth distributional derivative integrable, hence its Fourier transform is o(|k|^-5) after division by (ik)^5. The explicit cubic and logarithmic profiles give the product tail

 conjugate(uhat) what=144 c_u c_w |k|^-8
       -288pi(c_u d_w+d_u c_w)|k|^-9+o(|k|^-9).            (4.5)

The cubic term is Proposition 4.1. For the logarithmic term, split frequencies at a fixed K and t^(-1/2), and use R3(x)=-x⁴/10080+O(x⁵) below the latter threshold. The integral of dk/k supplies -(1/2)log t; the high-frequency part is O(t³) by R3(x)=O(x³). The o(|k|^-9) remainder contributes o(t³ |log t|) by an epsilon bound on its tail. The detailed Fourier and endpoint calculations are in `../notes/flat-log-coefficient-integrable-fifth.md` and `../notes/flat-boundary-coefficients.md`. □

The remainder in (4.4) is not asserted to be O(t³). The bound on the weighted remainder alone does not select a unique logarithmic jet, so (4.4) requires the additional hypotheses above. The half normalization, all physical vertices and the curved common-regulator limit remain to be matched. A GCP Lean development receipt checks an identity between two integral representations of the tangent form factor; it does not certify the numerical integral in Proposition 4.1, the proposition as a whole, or the physical response.

**Proposition 4.3 (all-frequency flat bound).** Define R2(x)=F(x)-1+x²/120 and, with the Fourier and half-normalization conventions of (4.2),

 r_flat(t;u,w)=(1/(pi t)) integral_R conjugate(uhat(k)) what(k)
                                  R2(t k²) dk/(2pi).        (4.8)

For real even localized u,w in H3(R),

 |r_flat(t;u,w)| <= t²/(420pi) ||u'''||_(L2,half)||w'''||_(L2,half),
 integral_0^t0 |r_flat| dt/t²
       <= t0/(420pi) ||u'''||_(L2,half)||w'''||_(L2,half). (4.9)

*Proof.* For phi(z)=(1+z)exp(-z), the identity phi(z)-1+z²/2=integral_0^z s(1-exp(-s))ds and the beta integrals in (4.1) give 0<=R2(x)<=min(x³/840,x²/120) for x>=0. Use the cubic bound in (4.8), then Parseval and Cauchy--Schwarz. For even full-line fields the squared L2 norm of the third derivative is twice its half-line norm, giving the factor in (4.9). The entire Fourier integral is retained and the norms include the localization transition. □

This establishes integrability of the specified flat diagnostic, not the curved tangent-subtracted response. The source's separate sufficient target is a uniform |r_curved(t)|<=A(K)||u||_A||w||_A t^(3/2), with unknown A(K), for its fully localized mixed response. Its density, second vertex, contact, cutoff terms and common regulator must be specified and controlled together; see `../notes/p1d-response-versus-conversion.md`.
### Regulated conversion and the separate contact

The flat geometric multiplier does not by itself give the regulated action Hessian. In the source's physical-half, time-reduced trace convention, write

 T_t(u)=Tr_bar[u exp(-tL)],
 I_t(u,v)=integral_0^t Tr_bar[u exp(-(t-s)L) v exp(-sL)] ds,
 Theta(t)=sum_(n>=1) d_n exp(-t M_n²),
 M_n²=n(n+q)/b_sphere²,  d_n=2(q+2n).                     (4.6)

The source records, at positive common cutoff and under its paired-domain, grading and differentiation hypotheses,

 J_t''[u,v]=Theta(t)/2 [D_v T_t(u)+D_u T_t(v)]
                         +2 Theta'(t) I_t(u,v).             (4.7)

Here D_v denotes the geometric variation on the identified fixed Hilbert space, and J_t is the endpoint conversion between the source's geometric and variable-mass regulated actions. The contact is symmetric by trace cyclicity and s -> t-s. The n=0 sector and its lowest-Landau-level allocation are separate from the displayed n>=1 sum. A further source action normalization is not absorbed into (4.7); the angular multiplicities already contain their recorded sign degeneracy.

Equation (4.7) is a source identity whose physical hypotheses and complete trace interchanges remain to be independently verified, not a consequence of Proposition 4.1 alone. In particular, neither the geometric term nor the contact may be omitted when the common cutoff is removed. The source notation and the distinction between operator heat kernels and scalar heat traces are audited in `../notes/tangent-regulator-normalization.md`; the separate zero-sector allocation is in `../notes/source-angular-zero-mode-allocation.md`. The endpoint (4.7) must also not be identified with the tangent-subtracted P1-D proper-time remainder without an additional argument.
## 5. Curved trace extension — work in progress

The source's localized tangent-subtracted curved remainder and the endpoint conversion are distinct observables; see `../notes/p1d-response-versus-conversion.md`. Their geometric vertices, weak boundary completion, gluing and regulator limits remain open. No global extension is claimed here.

## Relation to prior work — preliminary

Local elliptic boundary conditions, adjoint boundary spaces and regularity for Dirac-type operators are part of the established theory; see [Bär and Ballmann](https://arxiv.org/abs/1307.3021). Propositions 2.1 and 3.1 apply those domain inputs to the stated congruence and paired involution; the general existence of projector boundary conditions is not claimed as a contribution here.

Heat coefficients for nonsmooth interfaces and second-order boundary couplings also have substantial prior literature. [Gilkey, Kirsten and Vassilevich on transmittal conditions](https://arxiv.org/abs/hep-th/0101105) calculate singular-surface coefficients, while their [transfer-boundary paper](https://arxiv.org/abs/hep-th/0208130) computes the first five heat coefficients for transfer conditions. A derivative jump, doubled geometry or conformal variation alone is therefore insufficient to distinguish this work. The precise relationship between the physical composed Dirac-square domain and those interface conditions still needs a term-by-term comparison.

[Smith](https://arxiv.org/abs/1809.05614) relates finite relative heat-trace expansions to Sobolev regularity for compactly supported Schrödinger potentials on complete manifolds. That result is relevant to the regularity and remainder analysis, but its hypotheses do not by themselves give the paired mixed metric-response and common-regulator estimate sought in Section 5. The flat Dirac multiplier in (4.1) is not equal, after an arbitrary local polynomial of degree at most three and constant scaling, to the specific scalar-potential multiplier x² integral_0^1 exp[-alpha(1-alpha)x] d alpha; a coefficient comparison is in `../notes/flat-dirac-scalar-form-factor-comparison.md`. This only excludes that particular reduction. It does not establish that the boundary coefficients or the complete paper are new, and the scalar jump benchmark's normalization remains unresolved.

The comparisons above are partial. Later literature, exact boundary and trace normalizations, and the completed result must be assessed before a publication or novelty decision.
## Verification and prior art — work in progress

The exact scope of Lean certification must match the declarations checked on GCP and their source and dependency provenance. The source-only replay at commit 6376ccc checked 29 repository Lean sources without reported sorryAx; a separate clean replay checked the transported-congruence algebraic declaration. The receipts are in `../evidence/gcp-clean-replay-20261030/README.md` and `../evidence/gcp-transported-congruence-20261030/README.md`. The clean replay includes abstract closedness, adjoint and composition-square declarations relevant to Proposition 2.1, under explicit invariance and symmetry assumptions; the declaration-by-declaration map is in `../notes/manuscript-lean-coverage-map.md`. These checks do not certify Propositions 2.1 or 3.1 in their entirety, their geometric hypotheses, or the response. The raw tangent form-factor development check reused a build environment with dependency worktree warnings and is not a clean acceptance replay; see `../evidence/gcp-raw-tangent-20261030/README.md`. The general elliptic-boundary and semigroup results used here are existing mathematics. A defensible paper-level novelty decision requires the pending closest-prior-art comparison.

Remaining to-do list: verify physical domain and bundle hypotheses; complete the full tangent response and any supported curved extension; finish prior-art and manuscript review; restore GCP access and certify the supported claims in Lean.
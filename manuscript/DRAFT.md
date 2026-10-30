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

### A finite-cut boundary is an additional choice

The infinity projector cannot be transported to an arbitrary finite cut merely by imposing the same matrix there. To see the distinction in a separated zero-energy test, consider H=-i sigma_2 partial_x+mu a(x) sigma_1 on x0<=x<=x1, with real integrable a, nonzero angular eigenvalue mu, and P_minus psi(x1)=0 for P_plus/minus=(1+/-sigma_1)/2. The equation H psi=0 is partial_x psi=-mu a sigma_3 psi. With lambda=mu integral_(x0)^x1 a(x)dx and sigma_1 eigenvectors v_plus/minus, the boundary data induced at x0 lie in

 span{cosh(lambda) v_plus+sinh(lambda) v_minus}.            (2.3)

Unless lambda=0, this is not the local P_minus psi(x0)=0 plane. The sign of lambda depends on radial orientation, but the mixing does not. This exact test is derived in `../notes/finite-cut-boundary-transport.md`. It does not determine the full physical Dirichlet-to-Neumann relation: nonzero spectral parameters, both copies, the other endpoint, angular sectors and inhomogeneous collar sources must also be retained. Propositions 2.1 and 3.1 apply to any realization satisfying their stated domains; applying them to a finite-cut model does not by itself identify that model with transported infinity data.
For a square resolvent the missing collar source also changes the boundary relation. In the corrected symmetric-lapse model let H_mu=-i sigma_2 partial_s+mu a(s) sigma_1, P=sqrt(f)(H_mu+i nu)sqrt(f), and consider (P*P+M²-zeta)psi=g on [s0,s1]. With eta=sqrt(f)psi and xi=f(H_mu+i nu)eta, the local equations give Y' = K_zeta Y + (0,i f^(-1/2) sigma_2 g), where Y=(eta,xi) and

 K_zeta=[ nu sigma_2-mu a sigma_3        i f^(-1) sigma_2 ]
        [ i(zeta-M²)f^(-1) sigma_2   -nu sigma_2-mu a sigma_3 ]. (2.4)

If U_zeta(s,t) is the fundamental matrix, variation of constants yields

 Y(s0)=U_zeta(s0,s1)Y(s1)
          -integral_(s0)^s1 U_zeta(s0,s)(0,i f^(-1/2) sigma_2 g(s))ds. (2.5)

Thus a homogeneous boundary plane at s1 is carried to an affine plane at s0, with a displacement depending on the removed-collar source. For bounded f^-1 and integrable coefficients, the displacement is bounded by exp(h)||f^(-1/2)||_infinity sqrt(s1-s0)||g||_L2, where h is the integral of an operator-norm majorant for K_zeta. The exact model assumptions and a fixed-mode nonreal Poisson estimate are in `../notes/symmetric-lapse-inhomogeneous-transfer.md` and `../notes/symmetric-lapse-nonreal-poisson.md`. These estimates do not by themselves establish the physical boundary relation, summability over modes, or a trace-norm regulator limit.
### Physical conformal endpoint and the mode gap

The preceding fixed-collar estimates do not automatically extend to the physical infinity limit. In the fixed RN-AdS asymptotics, let y be product-orbit proper distance from infinity, U=b_sphere/r=y/L4+O(y³), and f=b_sphere/L4+O(y²) the product lapse. The physical operator in the product Hilbert space is the congruence sqrt(U) D_hat sqrt(U). In the symmetric-lapse mode representation, F=f U and the coordinate x defined by dx/dy=1/U satisfies x=L4 log y+O(y²)+constant; the endpoint is at x=-infinity.

On compactly supported sections, unitary change of radial measure turns the mode expression sqrt(F)(-i sigma_2 partial_s+mu a+i nu)sqrt(F) into -i sigma_2 partial_x+F(mu a+i nu), where the bounded matrix a includes the angular Clifford factor. The potential tends to zero as x->-infinity for each fixed mu and nu. Translated, increasingly broad normalized compactly supported test functions have derivative norm tending to zero, and their supports escape into this end. Their images under the mode operator therefore tend to zero. For any closed realization containing this interior core, the associated positive square has no positive lower form bound. Likewise finite-cut lower bounds cannot remain uniformly positive when the cut moves beyond these supports. The calculation and hypotheses are detailed in `../notes/physical-endpoint-long-cylinder-gap.md`.

The bare conformal-log insertion has a related trace obstruction. In the x coordinate, b=log U=x/L4+O(1). For a fixed mode and positive time, disjoint compactly supported unit bumps centered at x=-k give ||sqrt(|b|) phi_k||²>=c k while their square-form energies are O(k). Spectral Jensen therefore bounds their positive localized heat expectations below by c_t k. The sum diverges, so sqrt(|b|) exp(-tP*P) sqrt(|b|) is not trace class on the infinite end under the stated core hypotheses. On a finite cut, the same test gives a lower bound proportional to log(1/delta)² for this bare positive trace. Details are in `../notes/conformal-log-gapless-trace-obstruction.md`. This result does not determine the mixed response: its direction vertices or paired terms may provide additional localization or cancellation, which must be proved before taking the cutoff limit.
This does not prove that zero is an eigenvalue or determine a renormalized physical response. It shows that the positive product-mode gap in the conditional model below cannot be imported into the physical conformal endpoint. The product-frame conversion and the physical congruenced square are distinct operators; their domains, normalization, contact terms and regulator require a separate comparison.

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

**Conditional compact-model transfer.** Fix a thermal period T>0 and a radial double of circumference 2L, with L>2R and profiles supported in [-R,R]. Under the compact form-differentiation, folding and per-exterior trace conventions stated in `../notes/compact-flat-small-time-winding.md`, the actual compact flat-model mixed derivative and its Fourier-defined counterpart differ by

  O((1+t^(-N)) exp(-c/t) ||u||_H2 ||w||_H2),              (4.6)

for some c>0 and finite N at fixed L,R,T. This comparison is between the compact derivative and the Fourier-defined cylinder form at the same fixed T. It retains radial winding and external sampling images; the compact mixed second vertex is included. A separate fixed-period comparison to the infinite-thermal-line form bounds nonzero thermal images by C ||u||_2 ||w||_2 exp[-T²/(4t)](t^-1+t^-2+t^-3), under the hypotheses of `../notes/fixed-period-flat-boundary-coefficients.md`. Both estimates are superpolynomial at fixed T; neither is uniform as T approaches zero. A common local polynomial subtraction agrees by periodic Parseval for profiles with no overlap with nonzero translates. Consequently (4.3), and (4.4) under its stronger jet assumptions, also hold for this declared compact model. This is not yet an identification with the physical curved trace or its common regulator.

The distinction between fiber and action normalization matters: the recorded folded orbit fiber is rank four, whereas F in (4.1) was computed using one rank-two sector. Under the stated flat folding identities, the unnormalized rank-four paired half trace equals the full-line rank-two trace; the extra per-exterior factor in (4.2) must come from the source's specified averaging or action convention, not be applied twice. The detailed ledger is in `../notes/flat-orbit-fiber-normalization.md` and `../notes/tangent-regulator-normalization.md`.

**Proposition 4.3 (all-frequency flat bound).** Define R2(x)=F(x)-1+x²/120 and, with the Fourier and half-normalization conventions of (4.2),

 r_flat(t;u,w)=(1/(pi t)) integral_R conjugate(uhat(k)) what(k)
                                  R2(t k²) dk/(2pi).        (4.7)

For real even localized u,w in H3(R),

 |r_flat(t;u,w)| <= t²/(420pi) ||u'''||_(L2,half)||w'''||_(L2,half),
 integral_0^t0 |r_flat| dt/t²
       <= t0/(420pi) ||u'''||_(L2,half)||w'''||_(L2,half). (4.8)

*Proof.* For phi(z)=(1+z)exp(-z), the identity phi(z)-1+z²/2=integral_0^z s(1-exp(-s))ds and the beta integrals in (4.1) give 0<=R2(x)<=min(x³/840,x²/120) for x>=0. Use the cubic bound in (4.7), then Parseval and Cauchy--Schwarz. For even full-line fields the squared L2 norm of the third derivative is twice its half-line norm, giving the factor in (4.8). The entire Fourier integral is retained and the norms include the localization transition. □

This establishes integrability of the specified flat diagnostic, not the curved tangent-subtracted response. The source's separate sufficient target is a uniform |r_curved(t)|<=A(K)||u||_A||w||_A t^(3/2), with unknown A(K), for its fully localized mixed response. Its density, second vertex, contact, cutoff terms and common regulator must be specified and controlled together; see `../notes/p1d-response-versus-conversion.md`.

### Regulated conversion and the separate contact

The flat geometric multiplier does not by itself give the regulated action Hessian. In the source's physical-half, time-reduced trace convention, write

 T_t(u)=Tr_bar[u exp(-tL)],
 I_t(u,v)=integral_0^t Tr_bar[u exp(-(t-s)L) v exp(-sL)] ds,
 Theta(t)=sum_(n>=1) d_n exp(-t M_n²),
 M_n²=n(n+q)/b_sphere²,  d_n=2(q+2n).                     (4.9)

The source records, at positive common cutoff and under its paired-domain, grading and differentiation hypotheses,

 J_t''[u,v]=Theta(t)/2 [D_v T_t(u)+D_u T_t(v)]
                         +2 Theta'(t) I_t(u,v).             (4.10)

For fixed q>=0 and b_sphere>0, the complete nonzero tower has the following small-time expansion. Put a=t/b_sphere^2. Then

 Theta(t)=2/a-q-1/3+a(q^2/6-1/30)+O_q(a^2),
 -Theta'(t)=b_sphere^(-2)[2/a^2-q^2/6+1/30+O_q(a)].        (4.9a)

To see this, set f(x)=x(x+q) and g_a(x)=2 f'(x) exp(-a f(x)). The integral of g_a is 2/a. Euler--Maclaurin through the third derivative gives the displayed endpoint coefficients; after scaling y=sqrt(a)x, the integral of |g_a^(6)| is O_q(a^2). For the derivative, apply the same argument separately to f g_a, whose integral is 2/a^2 and whose sixth-derivative integral is O_q(a); this avoids differentiating an unspecified remainder. Details are in `../notes/magnetic-angular-subleading-asymptotics.md`. The expansion keeps both nonzero sphere signs as already included in d_n. It does not allocate the finite zero sector, prove a uniform varying-q estimate, or identify the physical response.
Here D_v denotes the geometric variation on the identified fixed Hilbert space, and J_t is the endpoint conversion between the source's geometric and variable-mass regulated actions. The contact is symmetric by trace cyclicity and s -> t-s. The n=0 sector and its lowest-Landau-level allocation are separate from the displayed n>=1 sum. A further source action normalization is not absorbed into (4.10); the angular multiplicities already contain their recorded sign degeneracy.

**Conditional grading bridge.** Let V=Dom D and suppose, in addition to D*=-JDJ, that a bounded self-adjoint involution G commutes with J, maps V onto Dom D*, and satisfies D*Gx=GDx for x in V. Then H=JG preserves V and anticommutes there with Q=JD: indeed D(JGx)=-JGDx, so QHx=-GDx=-HQx. Hence H commutes with the heat semigroup of Q*Q and, for bounded scalar u,v commuting with H and with bounded B=[v,Q], conjugation changes the sign of u K_(t-s) B K_s. If the heat factors are trace class as in the compact product model, the trace of this operator vanishes. A long-time factor at least t/2 gives a uniform trace-norm bound over 0<s<t, permitting integration of the cancellation.

For that same model, put A_r(b)=exp(-r b/2)[Q+M exp(b)]exp(-r b/2) and P_r=A_r* A_r. At b=0 the first variations are (A_r)_v=-(r/2){v,Q}+(1-r)Mv and (A_r*)_v=(r/2){v,Q}+(1-r)Mv. Multiplying the two terms in (P_r)_v=(A_r*)_v(Q+M)+(-Q+M)(A_r)_v on the common core gives the vertex r L_v+2(1-r)M^2 v+(1-r)M[v,Q], with L_v the geometric form variation. The passage from this core calculation to the trace derivative uses the stated closed-form and Duhamel hypotheses. The grading removes the last term inside the scalar-smeared trace. Integrating r and keeping both mixed orderings yields the geometric coefficient 1/2 and the contact 2 Theta'(t) I_t in (4.10). The domain-aware algebra, trace-class argument and conversion are detailed in `../notes/paired-partner-chirality-conversion-bridge.md`, `../notes/graded-odd-commutator-trace-class.md` and `../notes/graded-mass-conversion-positive-cut.md`. This verifies the identity for their stipulated model and assumptions; the physical bundle, half-trace normalization and common-regulator passage remain separate.
Equation (4.10) is a source identity whose physical hypotheses and complete trace interchanges remain to be independently verified, not a consequence of Proposition 4.1 alone. In particular, neither the geometric term nor the contact may be omitted when the common cutoff is removed. The source notation and the distinction between operator heat kernels and scalar heat traces are audited in `../notes/tangent-regulator-normalization.md`; the separate zero-sector allocation is in `../notes/source-angular-zero-mode-allocation.md`. The endpoint (4.10) must also not be identified with the tangent-subtracted P1-D proper-time remainder without an additional argument.

**Assembled flat conversion at a common cutoff.** For the declared rank-two flat model with the per-exterior convention, put a=alpha(1-alpha) and define

 A(x)=integral_0^1 exp(-a x) d alpha,
 I(x)=integral_0^1 [1+x(1-2alpha)^2/4] exp(-a x) d alpha.

The geometric contribution and contact in (4.10), evaluated in this model before local subtraction, have the combined Fourier multiplier

 Theta(t) I(t k^2)/(2 pi t) + Theta'(t) A(t k^2)/(2 pi).   (4.10a)

This retains the exact nonzero angular tower in both terms. Let J_2(t;u,w) be the resulting bilinear form after subtracting the Taylor polynomials of I and A through x^2, with the same exact factors Theta and Theta'. For real even localized H^3 profiles, the all-frequency Taylor bounds and dominated convergence give

 J_2(t;u,w) = [b_sphere^2/(840 pi)] t
                 integral_0^infinity u'''(y) w'''(y) dy + o(t). (4.10b)

Indeed, the cubic coefficients of I and A are -1/1680 and -1/840, while the recorded tower has t Theta(t) -> 2 b_sphere^2 and t^2 Theta'(t) -> -2 b_sphere^2. The full-line Fourier pairing equals twice the half-line pairing for these even profiles. The geometric and contact contributions to (4.10b) have opposite signs but do not generally cancel. The individual multipliers and angular limit are derived in `../notes/flat-conversion-leading-remainder.md` and `../notes/angular-flat-contact-leading-remainder.md`.

Equation (4.10b) tends to zero at the cutoff endpoint but is generally only O(t) for this specified subtraction. Subtracting an additional cubic local term changes the pointwise remainder; the exact relation between these two subtraction conventions is in `../notes/flat-conversion-subtraction-matching.md`. This is a flat-model result, not an identification of the physical source response, its curved subtraction, or the P1-D integrand. The zero-sector allocation and physical common-regulator passage remain separate.

For the selected pure compactly localized cubic/log profiles u=chi(c_u |y|^3+d_u |y|^4 log|y|) and w=chi(c_w |y|^3+d_w |y|^4 log|y|), with real even smooth compactly supported chi equal to one near zero, the same through-quadratic subtraction also resolves the next boundary terms. Set C=2 b_sphere^2 and Q=c_u d_w+d_u c_w. Then

 J_2(t;u,w) = [C/(1680 pi)] t integral_0^infinity u''' w''' dy
   -[3 C c_u c_w/(1024 sqrt(pi))] t^(3/2)
   -[C Q/(420 pi)] t^2 log(t) + O(t^2).                  (4.10c)

The first term is the local cutoff term in (4.10b); the latter two are the explicitly resolved seam terms for this profile class. The argument is in `../notes/flat-conversion-cubic-log-seams.md` and `../notes/flat-conversion-subtraction-matching.md`. The stronger pure-profile hypothesis is essential to the stated O(t^2) remainder and logarithmic coefficient. For the broader weighted cubic class, `../notes/flat-conversion-weighted-uniform.md` instead proves a uniform O(t^2[1+|log t|^3]) remainder after the first two terms, with constants depending on the fixed class bounds. Neither assertion supplies the physical curved conversion or its regulator limit.

**Positive-cutoff tower statement for a product model.** For the stipulated compact product-mode realization, assume the common H1 projector domain, a uniform first-order graph estimate, domain-preserving W1,infinity scalar multipliers, the real mass gap, and the individual-mode form differentiability specified in `../notes/product-conversion-form-differentiability.md` and `../notes/product-conversion-neighborhood-tower-derivative.md`. On any fixed interval t in [epsilon,T], epsilon>0, the mode derivative has a summable majorant over all n>=1. In particular the mixed seed derivative of the endpoint conversion can be obtained by summing the mode derivatives and integrating the interpolation parameter, with the grading-odd term canceled only under its separate domain and trace hypotheses.

The mechanism is as follows. For A_r(b)=E_r[Q+M exp(b)]E_r and P_r=A_r* A_r, the real mass gap bounds M||psi|| by a uniform multiple of ||A_r psi||. Together with the scalar commutator bound this controls the first form derivative by the form norm of 1+P_r, uniformly in M. The trace Duhamel formula then bounds the derivative by a polynomial in t^-1 times Tr exp[-tP_r/4]. On [epsilon,T], the heat and mass-gap estimates give a polynomial in M times exp(-c_epsilon M²); the source multiplicities grow linearly while M_n² grows quadratically, so the complete nonzero tower is summable. Individual differentiability plus a uniform real-neighborhood majorant justifies termwise differentiation. A finite zero sector is handled in its separately declared allocation.

This establishes the passage only for the stated positive-cutoff product model. It does not provide a uniform complex neighborhood for all modes, prove the actual physical bundle or trace normalization, or justify epsilon->0. The detailed hypotheses and endpoint trace estimates are in the cited notes; no Lean certification is claimed for this argument.
**Zero angular sector.** For one four-dimensional Dirac species and the source's positive integer monopole charge q, the recorded sphere spectrum has q chiral zero modes. The two nonzero signs are already included in d_n=2(q+2n), so the full sphere heat trace is Theta(t)+q, without an additional factor of two on the zero modes; see `../notes/source-angular-zero-mode-allocation.md`. The source allocates the lowest-Landau-level contribution and its cocycle separately from the massive conversion. Substituting Theta+q into the massive formula is therefore a different formal observable unless that allocation and normalization are proved to match.

For a stipulated product model, suppose the complete antiperiodic thermal decomposition and its domains give a positive gap ||Q psi||>=kappa||psi||, and let E_r=exp(-r b/2) preserve Dom Q in both directions. For the massless interpolation A_r=E_r Q E_r, skew-adjointness gives A_r*=-A_r and

 ||A_r psi||>=kappa exp(-r||b||_infinity)||psi||.         (4.11)

Consequently its two partner squares agree and have a positive lower bound. With the stated compact heat and form-differentiability assumptions this supplies large-time integrability at fixed positive cutoff for the finite zero sector. The assumed thermal gap requires the actual mode domains and bolt regularity; it does not follow from antiperiodicity alone. For each fixed nonzero thermal mode, `../notes/bolt-symmetric-lapse-domain-equality.md` establishes the symmetric-lapse domain equality under explicit smooth compact product, common bundle, physical projector and graph-core hypotheses. Applying that result to the source and obtaining uniform rough-family control remain separate obligations. The detailed conditional argument is in `../notes/product-conversion-zero-sector-thermal-gap.md`.

This finite-model endpoint is not yet identified with the source's lowest-Landau-level state, cocycle, physical-half normalization or common subtraction. No zero-mode block is discarded or added twice, and no ultraviolet limit follows from (4.11).
## 5. Curved trace extension — work in progress

The source's localized tangent-subtracted curved remainder and the endpoint conversion (4.10) are distinct observables; see `../notes/p1d-response-versus-conversion.md`. To specify the mixed response before estimating it, let a positive-cutoff form family q_(s,r) have a common form domain and write its first and mixed derivatives as V_u, V_w and V_uw in a finite-dimensional Galerkin approximation. If K_t is the unperturbed heat matrix, the exact mixed heat derivative is

 K_uw(t)=integral_(a,b,c>=0; a+b+c=t)
       [K_a V_u K_b V_w K_c+K_a V_w K_b V_u K_c] da db
       -integral_0^t K_(t-s) V_uw K_s ds.                   (5.1)

The triangle has measure da db, with no additional factorial. For a parameter-dependent insertion C_(s,r), the mixed derivative of Tr[C_(s,r)K_(s,r)] contains four terms:

 Tr[C_uw K]+Tr[C_u K_w]+Tr[C_w K_u]+Tr[C K_uw].             (5.2)

The mixed square form vertex V_uw includes both cross-products of the first Dirac variations, as well as the two terms containing the mixed Dirac variation. These are retained in addition to any separate density or action-restoration terms. The Galerkin and positive-time passage under the stated holomorphic form and trace hypotheses is developed in `../notes/fixed-cut-moving-insertion-mixed-response.md`; the expressions in (5.1) are not asserted to be individually convergent unregularized form-operator integrals.

For the single V_uw term, a fixed conformal insertion b can be moved to a reference position with an explicit heat-commutator correction. At finite matrix level, for a+c=t and a>=t/2,

 Tr[b K_a V_uw K_c]=Tr[b K_t V_uw]+Tr([K_c,b]K_a V_uw). (5.3)

For c>=t/2 the reference is Tr[b V_uw K_t] and the correction is Tr([b,K_a]V_uw K_c). The reference traces are conjugate. Under the form-domain and weighted smoothing assumptions in `../notes/conformal-second-vertex-reference-traces.md`, they are bounded using the decaying directions and the commutators of b with D, without bounding the bare logarithmic insertion. The remaining correction requires an unsandwiched trace-class bound or another justified form estimate. These fixed-time conditional statements do not control the two ordered vertices or the common regulator.
For the stipulated smooth four-dimensional finite-cut model, the unweighted mixed heat response (3) of `../notes/physical-fixed-time-mixed-response-assembly.md` has a separate conditional estimate for ordered terms containing at least one first-vertex Green boundary form. This estimate does not include the additional conformal-log insertion in the bridge. Assume the uniform graph, trace, mixed-domain and heat-smoothing hypotheses and cubic boundary weights in `../notes/finite-cut-boundary-joint-proper-time-path.md`. If delta is the outer cut and 0<t<=1, their complete ordered heat contribution obeys

 |R_boundary(delta,t)| <= C[delta^(3/2)t^(-9/4)+delta^3 t^(-3/2)]. (5.4)

For the ordinary four-dimensional heat proper-time weight dt/t, the contribution over [epsilon,1] tends to zero along delta=epsilon^p for any p>3/2. This is a sufficient joint path for these boundary pieces under the stated hypotheses, not a claim of path independence. The bound already uses the assembled four-dimensional trace; applying an extra angular factor requires a separate calculation. The physical source identification, bulk-bulk and second-vertex terms, subtractions and the complete regulator remain open.
A proof of the source's sufficient t^(3/2) bound must identify the physical and tangent families, their localizations, normalization, contact and restoration terms on one regulator, and estimate their complete difference uniformly in the declared rough family. Equations (5.1)--(5.2) specify the terms but do not provide that estimate or permit the cutoff and short-time limits to be interchanged. Weak boundary completion, gluing, angular and thermal sums, and regulator limits remain open. No global extension is claimed here.

## Relation to prior work — preliminary

Local elliptic boundary conditions, adjoint boundary spaces and regularity for Dirac-type operators are part of the established theory; see [Bär and Ballmann](https://arxiv.org/abs/1307.3021). Propositions 2.1 and 3.1 apply those domain inputs to the stated congruence and paired involution; the general existence of projector boundary conditions is not claimed as a contribution here.

[Gilkey and Kirsten](https://arxiv.org/pdf/math-ph/0007015) calculate the a3 heat coefficient for a Dirac-type positive square with spectral boundary conditions on a compact smooth manifold of dimension at least four. Their nonlocal tangential spectral projector and smooth smearing differ from the local projector and rough-jet mixed tangent response studied here; the specific operator and observable comparison is recorded in `../notes/prior-art-gilkey-kirsten-spectral-a3.md`. Those differences do not themselves establish novelty.
Heat coefficients for nonsmooth interfaces and second-order boundary couplings also have substantial prior literature. [Gilkey, Kirsten and Vassilevich on transmittal conditions](https://arxiv.org/abs/hep-th/0101105) calculate singular-surface coefficients, while their [transfer-boundary paper](https://arxiv.org/abs/hep-th/0208130) computes the first five heat coefficients for transfer conditions. A derivative jump, doubled geometry or conformal variation alone is therefore insufficient to distinguish this work. The precise relationship between the physical composed Dirac-square domain and those interface conditions still needs a term-by-term comparison.

[Bandara and Rosén](https://doi.org/10.1080/03605302.2019.1611847), Theorems 2.1 and 3.1, establish functional-calculus stability under stated common-domain differential perturbations and under certain local self-adjoint Dirac boundary perturbations. The self-adjoint partner S=iJD and its scalar congruence S_b=E_b S E_b suggest a comparison with their common-domain framework, subject to its geometric, graph, core and square-regularity hypotheses. Their estimates do not by themselves establish the differentiated trace response or its common regulator. The applicability and distinction from the explicit mass-resolvent derivatives require the hypothesis audit in `../notes/prior-art-comparison.md`; operator continuity alone is not a novelty claim.
[Smith](https://arxiv.org/abs/1809.05614) relates finite relative heat-trace expansions to Sobolev regularity for compactly supported Schrödinger potentials on complete manifolds. That result is relevant to the regularity and remainder analysis, but its hypotheses do not by themselves give the paired mixed metric-response and common-regulator estimate sought in Section 5. The flat Dirac multiplier in (4.1) is not equal, after an arbitrary local polynomial of degree at most three and constant scaling, to the specific scalar-potential multiplier x² integral_0^1 exp[-alpha(1-alpha)x] d alpha; a coefficient comparison is in `../notes/flat-dirac-scalar-form-factor-comparison.md`. This only excludes that particular reduction. It does not establish that the boundary coefficients or the complete paper are new, and the scalar jump benchmark's normalization remains unresolved.

The comparisons above are partial. Later literature, exact boundary and trace normalizations, and the completed result must be assessed before a publication or novelty decision.
## Verification and prior art — work in progress

The exact scope of Lean certification must match the declarations checked on GCP and their source and dependency provenance. A clean source-only replay also checked the abstract composed lower graph estimate, with its exact overlay, pinned dependencies and axiom report recorded in `../evidence/gcp-graph-clean-20261030/README.md`. Its domain invariance and commutator bounds remain hypotheses, not verified properties of the physical realization. The source-only replay at commit 6376ccc checked 29 repository Lean sources without reported sorryAx; a separate clean replay checked the transported-congruence algebraic declaration. The receipts are in `../evidence/gcp-clean-replay-20261030/README.md` and `../evidence/gcp-transported-congruence-20261030/README.md`. The clean replay includes abstract closedness, adjoint and composition-square declarations relevant to Proposition 2.1, under explicit invariance and symmetry assumptions; the declaration-by-declaration map is in `../notes/manuscript-lean-coverage-map.md`. A separate clean replay checked the finite-matrix grading cancellation; its exact overlay and dependency evidence are in `../evidence/gcp-grading-clean-20261030/README.md`. The corresponding infinite-dimensional trace-class argument and its physical hypotheses are not certified by that lemma. These checks do not certify Propositions 2.1 or 3.1 in their entirety, their geometric hypotheses, or the response. The raw tangent form-factor development check reused a build environment with dependency worktree warnings and is not a clean acceptance replay; see `../evidence/gcp-raw-tangent-20261030/README.md`. The general elliptic-boundary and semigroup results used here are existing mathematics. A defensible paper-level novelty decision requires the pending closest-prior-art comparison.

Remaining to-do list: verify physical domain and bundle hypotheses; complete the full tangent response and any supported curved extension; finish prior-art and manuscript review; certify the supported claims in Lean on GCP.

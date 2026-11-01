# Paired Dirac domains and boundary response under mass and logarithmic variations

**Working draft — incomplete, not a manuscript release.** The full tangent boundary response, source-domain identification, curved extension and prior-art decision remain open. Lean certification is partial: the arithmetic and bounded-operator skeleton is machine-checked on GCP, while the analytic propositions and every physical identification step are not; see [`lean-certification-ledger.md`](lean-certification-ledger.md). Statements below distinguish proved conditional operator facts from the intended physical application. No existence or stability conclusion for a wormhole is made.

## Abstract (provisional)

We study a paired Dirac realization with complementary boundary domains under scalar mass and metric variations. We give an operator-domain argument for bounded Lipschitz scalar congruences and identify the associated composition square. Under an additional paired involution, the square admits a skew-adjoint factorization and a mass-dependent resolvent bound. The intended application is a complete-frequency boundary response; its physical realization, normalization and renormalized curved trace remain to be established. The general boundary theory and prior work must be compared before any novelty claim.

## 1. Scope and setup

Let X be a smooth compact Riemannian manifold with boundary and E a finite-rank Hermitian Clifford bundle. Let D be a densely defined closed first-order Dirac realization in H=L2(X;E). Fix complementary orthogonal boundary projections Pi_plus and Pi_minus and assume the *actual closed domains* satisfy

 Dom(D)={psi in H1(E): Pi_minus trace psi=0},
 Dom(D*)={phi in H1(E): Pi_plus trace phi=0}.              (1.1)

Assume the weak scalar product rule D(a psi)=a D psi+c(da)psi for bounded Lipschitz scalars a. Normalize Clifford multiplication so ||c(db)||<=||db||_infinity. These are hypotheses of the results below. Their identification with the recorded folded physical bundle and its chosen realization is an outstanding application step, not a consequence of the displayed projector alone.

The source model has a regular thermal bolt and a paired outer boundary. Its recorded domains, common bundle map, angular decomposition, state and normalization are collected in `../notes/claim-dependencies.md`; the fixed-seed compact orbit calculation is in `../notes/source-orbit-compact-bolt-check.md`. The physical trace and source matching must be stated independently of the following abstract lemma.

There is also a specific endpoint-space obstruction. In the RN compactification, `g=u^(-2) ghat` and the conformal spinor relation is `psi_g=u^(3/2) psi_hat`. The unitary map from physical `L2(g)` to compactified `L2(ghat)` sends `psi_g` to `u^(-1/2) psi_hat`. If `psi_hat` is compactified `H1` with nonzero boundary trace, this image has squared norm proportional to `integral_0^a ||psi_hat(u,.)||^2 du/u`, which diverges. On a smooth core, the physical graph norm in the compactified spinor variable is

    integral [u^(-1)|psi_hat|^2 + u|D_hat psi_hat|^2] dvol_ghat.

Its closure is the ordinary physical-domain target; it is not identified here with the unweighted `H1` projector domain. In particular, the compactified `H1` condition `Pi_- tr(psi_hat)=0`, which permits nonzero `Pi_+` trace, is not automatically the ordinary physical `L2` domain. The pinned source does specify a compactified Euclidean operator/domain prescription, with complementary adjoint and positive square by form closure. Its anomaly action compares physical and conformal effective actions only when conformally related state and domain data are defined, and does not construct those data. The remaining task is to establish that endpoint determinant/response match, including the weighted physical graph realization, boundary transgression and common regulator. The `u^-1` calculation does not invalidate the source's separately defined hatted prescription; see `../notes/conformal-infinity-l2-domain-obstruction.md` for the parent-source wording and weighted-norm audit.

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

Unless lambda=0, this is not the local P_minus psi(x0)=0 plane. The sign of lambda depends on radial orientation, but the mixing does not. This exact test is derived in `../notes/finite-cut-boundary-transport.md`. The displayed transport formula and its non-coincidence with the local plane are now machine-checked on GCP (`transportedPlane_not_local`, `transportedPlane_parallel_iff`, receipt [`gcp-manuscript-formal-20261101-r2`](../evidence/gcp-manuscript-formal-20261101-r2/README.md)); the exponential is taken as the displayed solution, not derived from `H psi=0` in Lean. It does not determine the full physical Dirichlet-to-Neumann relation: nonzero spectral parameters, both copies, the other endpoint, angular sectors and inhomogeneous collar sources must also be retained. Propositions 2.1 and 3.1 apply to any realization satisfying their stated domains; applying them to a finite-cut model does not by itself identify that model with transported infinity data.
For a square resolvent the missing collar source also changes the boundary relation. In the corrected symmetric-lapse model let H_mu=-i sigma_2 partial_s+mu a(s) sigma_1, P=sqrt(f)(H_mu+i nu)sqrt(f), and consider (P*P+M²-zeta)psi=g on [s0,s1]. With eta=sqrt(f)psi and xi=f(H_mu+i nu)eta, the local equations give Y' = K_zeta Y + (0,i f^(-1/2) sigma_2 g), where Y=(eta,xi) and

 K_zeta=[ nu sigma_2-mu a sigma_3        i f^(-1) sigma_2 ]
        [ i(zeta-M²)f^(-1) sigma_2   -nu sigma_2-mu a sigma_3 ]. (2.4)

If U_zeta(s,t) is the fundamental matrix, variation of constants yields

 Y(s0)=U_zeta(s0,s1)Y(s1)
          -integral_(s0)^s1 U_zeta(s0,s)(0,i f^(-1/2) sigma_2 g(s))ds. (2.5)

Thus a homogeneous boundary plane at s1 is carried to an affine plane at s0, with a displacement depending on the removed-collar source. The finite-dimensional telescoping identity behind (2.5) is machine-checked on GCP as `discrete_variation_of_constants` (receipt [`gcp-manuscript-formal-20261101-r4`](../evidence/gcp-manuscript-formal-20261101-r4/README.md)); the integral, the fundamental-matrix equation and the partition limit are not formalized. For bounded f^-1 and integrable coefficients, the displacement is bounded by exp(h)||f^(-1/2)||_infinity sqrt(s1-s0)||g||_L2, where h is the integral of an operator-norm majorant for K_zeta. The exact model assumptions and a fixed-mode nonreal Poisson estimate are in `../notes/symmetric-lapse-inhomogeneous-transfer.md` and `../notes/symmetric-lapse-nonreal-poisson.md`. These estimates do not by themselves establish the physical boundary relation, summability over modes, or a trace-norm regulator limit.
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

In the bounded-operator reading, the a priori inequalities behind (3.1) and the conditional inverse bounds are machine-checked on GCP (`resolvent_shift_norm_lower`, `square_shift_norm_lower`, `resolvent_norm_bound`, `square_resolvent_norm_bound`; receipt [`gcp-manuscript-formal-20261101`](../evidence/gcp-manuscript-formal-20261101/README.md)). The existence of the inverses, the unbounded realizations and the spectral step are not formalized.

### Conditional smooth finite-cut interface square

At a smooth compact cut, the source-stipulated partner involution gives an exact square-level interface realization. Let `W_b` be the density unitary from `L2(g)` to `L2(g_b)`, and let `P_b=W_b D_b W_b^{-1}` be the transported P1 operator, where `D_b=E_b D_g E_b`, `E_b=exp(-b/2)`, and `g_b=exp(2b)g`. Assume the source's global parallel unitary involution `J` commutes with the bulk expression and exchanges the actual P1 and adjoint projector domains. Extend the boundary fold `F=(1+tau_1 chi)/sqrt(2)` smoothly through a collar, using `F_theta=cos(theta)+sin(theta)tau_1 chi` and lowering `theta` from `pi/4` at the cut to zero in the interior. Set

    P'_b=F P_b F^(-1),  T=F chi F^(-1),  S=F J F^(-1).

Unitary conjugation carries the actual domains as well as the differential expression: `Dom(P'_b)=F Dom(P_b)`, `P'_b*=F P_b* F^(-1)`, and `Dom(P'_b*P'_b)=F Dom(P_b*P_b)`. The adjoint identity follows by substituting `psi=F xi` and `phi=F eta` in the Green relation and using that `F` preserves the inner product. The square-domain identity then follows from `P'_b(F xi)=F P_b xi`. On the boundary, `T` gives the transmittal continuity subspace and `S` exchanges its two side bundles. The Robin and tangential connection coefficients agree with the symmetric spinor interface data, including a nonzero normal jet, as detailed in `../notes/finite-cut-interface-square-crosswalk.md`. Define `A_b=S P'_b` on `Dom(P'_b)`. Since `S` exchanges `Dom(P'_b)` and `Dom(P'_b*)`,

    Dom(A_b*)=Dom(P'_b),
    Dom(A_b* A_b)=Dom(P'_b*P'_b),
    A_b* A_b=P'_b*P'_b.

Indeed, `A_b*=P'_b* S`; the condition `A_b psi in Dom(A_b*)` reduces to `P'_b psi in Dom(P'_b*)`, and the actions then agree. Thus the positive interface square and the density-transported P1 composition square have the same closed domain and trace multiplicity at this finite cut. This does not identify the P1 first-order operator with the self-adjoint interface Dirac. For the massless formally skew-adjoint expression, the side-sign operator is skew-adjoint and `i A_b` is a self-adjoint interface Dirac operator. Mass-dependent side endomorphisms must be retained separately.

This is conditional on the identical-copy bundle map and the maximal projector realization recorded in the fixed-cut source audit. It gives no moving-cut uniformity, full-Weyl mixed response, contact/LLL matching, common-regulator limit, or paper-level novelty result.

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

The rational arithmetic for the exponential, Neumann and Cauchy constants is
machine-checked on GCP in
[`ResolventVariationConstants.lean`](../lean/ResolventVariationConstants.lean)
(receipt [`gcp-resolvent-variation-constants-20261031`](../evidence/gcp-resolvent-variation-constants-20261031/README.md)):
`q<0.134`, `C<1.32`, `264/25` and `8448/25` are exact rational inequalities
with only the standard axioms. The draft targets only those rational
inequalities; the Taylor-tail comparison with the exponential, the
Banach-valued Cauchy estimates, the operator hypotheses and this proposition
as a whole are not formalized. See
[`lean-certification-ledger.md`](lean-certification-ledger.md).

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

This establishes integrability of the specified flat diagnostic, not the curved tangent-subtracted response. The pointwise reduction and the finite-mesh form of (4.8) are machine-checked on GCP (lat_pointwise_reduction, lat_finite_time_sum_bound, receipt [gcp-manuscript-formal-20261101-r5](../evidence/gcp-manuscript-formal-20261101-r5/README.md)); the integral itself is not, because the retained Mathlib build has no measure theory. The source's separate sufficient target is a uniform |r_curved(t)|<=A(K)||u||_A||w||_A t^(3/2), with unknown A(K), for its fully localized mixed response. Its density, second vertex, contact, cutoff terms and common regulator must be specified and controlled together; see `../notes/p1d-response-versus-conversion.md`.

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

The printed constant needs a check: the displayed step applies the multiplier bound at both occurrences of `E_r`, which yields `kappa exp(-2r||b||_infinity)`. The formal composition bound proves the `kappa*c^2` version (`congruenced_gap_composition`), not the printed one; see [`lean-certification-ledger.md`](lean-certification-ledger.md) §3. Either the constant or the argument must change.

Consequently its two partner squares agree and have a positive lower bound. With the stated compact heat and form-differentiability assumptions this supplies large-time integrability at fixed positive cutoff for the finite zero sector. The assumed thermal gap requires the actual mode domains and bolt regularity; it does not follow from antiperiodicity alone. For each fixed nonzero thermal mode, `../notes/bolt-symmetric-lapse-domain-equality.md` establishes the symmetric-lapse domain equality under explicit smooth compact product, common bundle, physical projector and graph-core hypotheses. Applying that result to the source and obtaining uniform rough-family control remain separate obligations. The detailed conditional argument is in `../notes/product-conversion-zero-sector-thermal-gap.md`.

This finite-model endpoint is not yet identified with the source's lowest-Landau-level state, cocycle, physical-half normalization or common subtraction. No zero-mode block is discarded or added twice, and no ultraviolet limit follows from (4.11).

### Flat full-Weyl and endpoint-conversion coefficient comparison

For the massive tower, write `U_j=integral u^(j)(y)w^(j)(y)dy`,
`C_0=-q-1/3`, and `C_1=q^2/6-1/30`. In the conditional physical-half
convention, the full-Weyl tangent local series is

    8 b_0^2/(pi t^2) U_0 + C_0/(pi t) U_0
      - b_0^2/(2 pi t) U_1 + O(t),                    (4.12a)

while the source endpoint-conversion bilinear is

    C_0/(2 pi t) U_0 + b_0^2/(12 pi t) U_1
      + 1/(2 pi)[-C_0 U_1/12 - b_0^2 U_2/60
                    + 2 C_1 U_0/b_0^2] + O(t).         (4.12b)

Subtracting (4.12b) from (4.12a) gives

    8 b_0^2/(pi t^2) U_0 + C_0/(2 pi t) U_0
      - 7 b_0^2/(12 pi t) U_1
      + C_0/(24 pi) U_1 + b_0^2/(120 pi) U_2
      - C_1/(pi b_0^2) U_0 + O(t).                    (4.12c)

This follows by subtracting the two displayed local series term by term. The term-by-term subtraction itself is machine-checked on GCP (`converted_series_difference`, receipt [`gcp-manuscript-formal-20261101`](../evidence/gcp-manuscript-formal-20261101/README.md)); the two series are inputs from the cited notes, not derived there.
It is an algebraic comparison only: it does not identify the residual with
the physical mixed-response difference, a local-action restoration, the
lowest-Landau-level term, or a curved-response mismatch. Those assignments
require a common-Hilbert-space derivation with the same trace density and
regulator. The finite mixed conversion coefficients separately agree with
the source finite-part formula under the declared half-line/full-line
relation; that normalization check does not settle the divergent terms or
the full-Weyl/source match. Details and coefficient sources are in
`../notes/p1d-response-versus-conversion.md`.

## 5. Curved trace extension — work in progress

The source's localized tangent-subtracted curved remainder and endpoint conversion (4.10) are distinct observables; see `../notes/p1d-response-versus-conversion.md`. The frozen source states the desired `r_curved` bound and refers back to the integrable tangent term (11) in Section 4. This supports localizing the Section 4 flat tangent as the working subtraction candidate. Full-Weyl angular-mass corrections remain in the physical response under this interpretation, unless the complete action supplies a separate subtraction. The source does not provide the cutoff maps and transition terms, nor the complete allocation of density, contact, LLL and finite local-restoration terms. The operational contract in `../notes/p1d-operational-definition-proposal.md` records this candidate and the unresolved inputs; it is not a verified transcription of the complete observable. Related product-frame moving-cut bounds require a local projector at every cut. `../notes/finite-cut-boundary-transport.md` gives an exact collar mismatch with transported infinity data, while `../notes/compactified-infinity-local-cut-limit.md` proves only a positive-lower-cutoff comparison under explicit hypotheses. Neither identifies the physical common-regulator mixed response. To specify the mixed response before estimating it, let a positive-cutoff form family q_(s,r) have a common form domain and write its first and mixed derivatives as V_u, V_w and V_uw in a finite-dimensional Galerkin approximation. If K_t is the unperturbed heat matrix, the exact mixed heat derivative is

 K_uw(t)=integral_(a,b,c>=0; a+b+c=t)
       [K_a V_u K_b V_w K_c+K_a V_w K_b V_u K_c] da db
       -integral_0^t K_(t-s) V_uw K_s ds.                   (5.1)

The triangle has measure da db, with no additional factorial. For a parameter-dependent insertion C_(s,r), the mixed derivative of Tr[C_(s,r)K_(s,r)] contains four terms:

 Tr[C_uw K]+Tr[C_u K_w]+Tr[C_w K_u]+Tr[C K_uw].             (5.2)

The mixed square form vertex V_uw includes both cross-products of the first Dirac variations, as well as the two terms containing the mixed Dirac variation. These are retained in addition to any separate density or action-restoration terms. The Galerkin and positive-time passage under the stated holomorphic form and trace hypotheses is developed in `../notes/fixed-cut-moving-insertion-mixed-response.md`; the expressions in (5.1) are not asserted to be individually convergent unregularized form-operator integrals.

There is also a fixed-positive-time assembly on the stipulated smooth four-dimensional physical finite-cut model. Write K_s=exp(-sL), let q_v be the first variation of the square form, and let q_uw be its full mixed second variation. With F_uw(s)=Tr_form[q_u K_s q_w K_(t-s)], the form-Duhamel identity is

    partial_u partial_w Tr(K_t)
      = integral_0^t (t-s)[F_uw(s)+F_wu(s)] ds
          - t Tr_form[q_uw K_t].

Under the common smooth-cut, field-approximation, form-trace and heat-smoothing hypotheses, the complete right side converges jointly in the physical cut and field approximants for each fixed t>0; its mixed second-form vertex retains all four terms. Rotation-invariant directions also permit absolute angular-block summation and mixed differentiation at each fixed compact cut and positive time. See `../notes/physical-fixed-time-mixed-response-assembly.md` for the hypotheses and convergence argument. This supplies a conditional fixed-time physical form response, not a small-time-uniform estimate, the source's product-frame physical-half observable, or a common-regulator limit.

For the single V_uw term, a fixed conformal insertion b can be moved to a reference position with an explicit heat-commutator correction. At finite matrix level, for a+c=t and a>=t/2,

 Tr[b K_a V_uw K_c]=Tr[b K_t V_uw]+Tr([K_c,b]K_a V_uw). (5.3)

The finite-matrix identity (`K_t=K_a K_c` with commuting heat factors) is machine-checked on GCP as `matrix_reference_position_identity`; the operator-level and trace-class passage in the surrounding argument is not.

For c>=t/2 the reference is Tr[b V_uw K_t] and the correction is Tr([b,K_a]V_uw K_c). The reference traces are conjugate. Under the form-domain and weighted smoothing assumptions in `../notes/conformal-second-vertex-reference-traces.md`, they are bounded using the decaying directions and the commutators of b with D, without bounding the bare logarithmic insertion. The remaining correction requires an unsandwiched trace-class bound or another justified form estimate. These fixed-time conditional statements do not control the two ordered vertices or the common regulator.
For the stipulated smooth four-dimensional finite-cut model, the unweighted mixed heat response (3) of `../notes/physical-fixed-time-mixed-response-assembly.md` has a separate conditional estimate for ordered terms containing at least one first-vertex Green boundary form. This estimate does not include the additional conformal-log insertion in the bridge. Assume the uniform graph, trace, mixed-domain and heat-smoothing hypotheses and cubic boundary weights in `../notes/finite-cut-boundary-joint-proper-time-path.md`. If delta is the outer cut and 0<t<=1, their complete ordered heat contribution obeys

 |R_boundary(delta,t)| <= C[delta^(3/2)t^(-9/4)+delta^3 t^(-3/2)]. (5.4)

For the ordinary four-dimensional heat proper-time weight dt/t, the contribution over [epsilon,1] tends to zero along delta=epsilon^p for any p>3/2. This is a sufficient joint path for these boundary pieces under the stated hypotheses, not a claim of path independence. The bound already uses the assembled four-dimensional trace; applying an extra angular factor requires a separate calculation. A later audit constructs the matched projector, uniform graph and scalar Davies estimates for an explicitly imposed auxiliary family of concentric RN cuts; see `../notes/rn-spherical-auxiliary-cut-family-instantiation.md`. The cut-to-complete locality and power-path endpoint estimates assemble for that family under the stated mixed H3/H5 and trace hypotheses. This does not identify its regulated trace with the canonical conformal-infinity source response. That trace conversion, the bulk-bulk and second-vertex terms in the source observable, their subtractions, and the complete regulator remain open.
A proof of the source's sufficient t^(3/2) bound must identify the physical and tangent families, their localizations, normalization, contact and restoration terms on one regulator, and estimate their complete difference uniformly in the declared rough family. Equations (5.1)--(5.2) specify the terms but do not provide that estimate or permit the cutoff and short-time limits to be interchanged. Weak boundary completion, gluing, angular and thermal sums, and regulator limits remain open. No global extension is claimed here.

For each angular mode, the full-Weyl congruence also changes the angular part of the square. Relative to the orbit-only square with the angular mass held fixed, its exact seed vertices are `Delta'[u]=-2 mu^2 u-i mu G c(du)` and `Delta''[u,w]=4 mu^2 uw+2i mu G c(d(uw))`. The mixed positive-time heat response therefore adds the two ordered cross terms with the orbit vertices and the ordered pair of correction vertices, as well as this mixed second vertex; see `../notes/full-weyl-orbit-correction-vertices.md` for the Duhamel formula. These operator identities make the correction explicit but establish no angular-summed heat bound, physical density/contact transfer, or common-regulator source matching. The parent curved orbit-sector remainder cannot be transferred to the full-Weyl response until those terms are controlled.

The curved odd-odd boundary-layer estimate is currently conditional on the bilocal Gaussian trace input in `../notes/full-weyl-commutator-joint-hit-bound.md`. It applies to the boundary-condition defect `exp(-r Q_X)-exp(-r Q)` after separating the same-boundary pair for the bulk/tangent subtraction. The input weights `u'(y)` and a Gaussian average of `w'(y')`, since the two insertions occur at distinct normal coordinates. A same-point product estimate is not asserted for general independent directions. Under the bilocal input and cubic jets the `O(t^(3/2))` boundary-layer power follows, but the input for the physical complementary-domain semigroups is not proved. In the pinned compactified product realization, both mode squares differ from their mass-free squares by the same scalar `mu^2 I`; the Duhamel heat times sum to `t`, so `exp(-t mu^2)` factors exactly and the remaining word is independent of `mu`. This does not extend to arbitrary finite radial cuts where the transported boundary subspace can depend on `mu`. This is only the defect component; the non-hit term and complete odd-odd response remain open.

### Smooth-interior scalar/contact comparison

In the scalar angular-mass subfamily, combine the path-Hessian coefficient `K_2` with the explicit path term `H_1`. For `J=u'X_w+w'X_u`, direct substitution of the source jets `f_u=-uf+f'X_u`, `X_u'=-u` and their `w` counterparts gives the local identity

    K_2+H_1 = -2u'w'/f + (f'J/(3f^2))' + (2f'/(3f^2))(uw)'.

The seam and outer fluxes vanish under the stated cubic source jets and compact direction localization. With `g=dy^2+f(y)^(-2)d tau^2`, `R=2f''/f-4(f'/f)^2` and `dmu=dy/f`, integration gives

    integral (K_2+H_1)dy = -6 integral (Ruw/6+u'w'/3)dmu.   (5.5)

Thus, under the conditional physical-half normalization, this scalar coefficient is `-3` times the specified source-contact coefficient. The pair in the `D_scalar-C_src` bracket contributes `-4` times that contact coefficient; the scalar subfamily alone does not cancel the source contact. The derivation and pointwise jet algebra are recorded in `../notes/full-weyl-curved-scalar-interior-leading-coefficient.md` and `../notes/proof-audit.md`. This is not the full physical response: the curved commutator, orbit, density, boundary transgression, LLL, local restorations, moving-cut endpoint and common-regulator matching remain open.

### Odd-odd gradient pair: fixed-boundary and interior split

After sign pairing, the surviving odd-odd Duhamel words have the form

    mu^2 integral_0^t (t-r) Tr[exp(-(t-r)Q) M_(u')
                                      exp(-r Q_X) M_(w')] dr,

plus the reversed ordering. Split the middle semigroup as
`exp(-r Q_X)=exp(-r Q)+(exp(-r Q_X)-exp(-r Q))`. The first term is the
same-boundary scalar-gradient word and belongs in the tangent/local
subtraction. The defect is a separate boundary and conjugation contribution.
This distinction matters already in the flat product: for constant `X`, the
defect vanishes, while the same-boundary word carries the previously
calculated `U_1/t` gradient-gradient coefficient. The flat coefficient must
not be attributed to the curved interior defect.

For the pinned compactified product, the orbit square is Laplace type on the
smooth compact orbit disk with smooth local mixed Dirichlet/Robin boundary
data. Its fixed-model heat kernel has the two-dimensional Gaussian bound
`||K_Q(t;z,z')|| <= C t^(-1) exp(-d(z,z')^2/(c t))`; exact pointwise unitary
conjugation gives the same fiber-norm bound for `Q_X`. Combining the kernels
and restricting both insertions to `y,y' <= R sqrt(t)` gives an
`O_R(UW t^(3/2))` fixed-window odd-odd boundary-layer contribution, uniform
at the Duhamel endpoints and after the sign-paired angular sum. A collar of
width `A sqrt(t log(t0/t))` adds a `log^(5/2)(t0/t)` factor, still integrable
against `dt/t^2`; under the reflected-kernel Gaussian, the outside
boundary-reflected tail can be made higher order by increasing `A`. These
fixed-pinned component estimates and their parametrix hypotheses are detailed
in `../notes/full-weyl-commutator-joint-hit-bound.md`.

For smooth insertions supported in a fixed interior region, the same-boundary
word and the conjugation defect can also be combined after subtracting the
flat `a_0` term. In raw rank-two orbit normalization, their spatially
integrated odd-odd sector is

    R_same+defect,int(t)
      = -b_S^2/(6 pi) integral [h' u'w' + u''w''] dmu + O(t),
      dmu=dy/f,  h=f'/f.                                  (5.6)

The `h^2 u'w'` contributions cancel between the smooth-interior heat
coefficient and the defect. Formula (5.6) is not the complete response or a
physical subtraction term: it omits other vertices, density, source contact,
LLL, boundary transgression and local restorations, and it has not been
transferred through the moving physical cut. In particular, its order-zero
coefficient must be identified in the source's tangent/cutoff ledger before
using a curved `t^(3/2)` remainder claim. The derivation and normalization
limits are recorded in `../notes/full-weyl-commutator-joint-hit-bound.md`.

This gives a necessary coefficient test for P1-D. At a fixed cut, suppose
the complete post-subtraction response admits an expansion
`r_curved(t)=C_odd+C_other+o(1)`, where `C_odd` includes the odd-odd sector
in (5.6) and `C_other` contains every other vertex, density/contact,
boundary, LLL and cutoff/restoration term after the same subtraction. Then
the claimed `O(t^(3/2))` bound forces
`C_other=+(b_S^2/(6 pi)) integral (h' u'w'+u''w'') dmu` in the raw rank-two
normalization. Existence and physical normalization of `C_other`, and this
cancellation identity, have not been proved. This is a necessary matching
condition, not a disproof of the complete bound.

At a fixed finite cut and positive time, a second exact ledger compares the
full-Weyl heat Hessian with the source's geometric/variable-mass conversion.
Assume the massive-mode sums, common form domains, trace density and Duhamel
identities in `../notes/p1d-response-versus-conversion.md` hold on the same
Hilbert space. Write `H_FW=H_orb+D`, where `D` contains the mixed correction
vertex and both ordered orbit/correction and correction/correction terms,
and write `J_src''=G_src+C_src`, with `C_src=2 Theta'(t) I_t`. Then

    H_FW(t)-J_src''(t)
      =[H_orb(t)-G_src(t)]+[D(t)-C_src(t)].             (5.7)

This is an algebraic identity under those common-cut assumptions; neither
bracket is shown to vanish. In particular, `D` is not the conversion contact,
and `J_src''` is not the localized tangent. To turn (5.7) into a formula for
`r_curved`, one must still match its tangent and cutoff terms, physical
density, boundary transgression, LLL, and local restorations under the same
regulator. Equation (5.7) does not identify `r_curved` with either bracket
or justify the cut and proper-time limits.

In the flat constant-direction model, the leading coefficients in (5.7) can
be checked under the declared common normalization. Set `C=2 b_0^2` and
`U_0=integral_R uw`. The source contact identity and even folding give
`C_src=-(C/(2 pi)) U_0 t^(-2)`; the full-Weyl correction vertices give
`D_flat=(3C/pi) U_0 t^(-2)`, so
`D_flat-C_src=(7C/(2 pi)) U_0 t^(-2)`. The orbit bracket contributes
`(C/(2 pi)) U_0 t^(-2)`, and their sum is
`(4C/pi) U_0 t^(-2)`, matching the full-Weyl coefficient in this model.
The earlier `4C/pi` assignment to `D_flat-C_src` used a factor-two error in
the source contact and is superseded. This is rational coefficient
bookkeeping for a flat diagnostic; it does not match the curved sectors,
identify the source's `r_curved`, or prove the common-regulator endpoint.
`../lean/FlatSourceContactLedger.lean` records only the rational arithmetic.
It compiles on GCP with Lean 4.30.0, exit code 0, standard axioms only and no
reported `sorryAx` (receipt `gcp-flat-source-contact-ledger-20261031`); that
certificate covers the coefficient algebra alone.

For the still-unadopted candidate `r_cand,eta=H_FW+A_eta-T_4,chi`, with
`A_eta` the signed action terms assigned outside `H_FW`, the same finite-cut
ledger would read

    r_cand,eta
      =[H_orb-G_src]+[D-C_src]+[J_src''-T_4,chi]+A_eta. (5.8)

Equation (5.8) requires every bracket to use the same Hilbert space, trace
density and regulator. It makes the four order-zero matching obligations
visible, but does not define the frozen source's `r_curved`, establish the
term allocation in `A_eta`, or prove a cancellation. The candidate and the
unresolved allocation are detailed in
`../notes/p1d-operational-definition-proposal.md`.

There is an exact finite-cut identity for the conformal congruence that
specifies what a physical-to-product trace comparison must retain. Let `D`
be closed and densely defined on the fixed-cut Hilbert space, let bounded real
`b` have exponentials preserving both first-order domains, and put
`E_r=exp(r b/2)`, `A_r=E_r D E_r`, `L_r=A_r^*A_r`, and
`Lbar_r=A_r A_r^*`. For `0<epsilon<T`, define

    Gamma_(epsilon,T)(r)=1/2 integral_epsilon^T Tr(exp(-t L_r)) dt/t.

If the fixed-cut form derivatives and heat traces satisfy the stated cyclicity
and trace-class hypotheses, then

    Gamma_(epsilon,T)(1)-Gamma_(epsilon,T)(0)
      = 1/2 integral_0^1 Tr{b[K_r(T)+Kbar_r(T)
                              -K_r(epsilon)-Kbar_r(epsilon)]} dr,

where `K_r(t)=exp(-t L_r)` and `Kbar_r(t)=exp(-t Lbar_r)`. Both partner
operators and both proper-time endpoints occur; neither a spectral-gap
assumption nor equality of the partner traces is used. This follows by
differentiating `A_r`, applying form-Duhamel and integrating
`L exp(-tL)` in proper time. The derivation and exact operator-domain
hypotheses are in `../notes/physical-product-congruence-cutoff-bridge.md`.
It gives a fixed-cut comparison identity, not equality of the two regulated
actions or removal of either endpoint. A mixed mass/log derivative must also
differentiate the `r`-family and any moving conformal multiplier, retain all
vertices and local terms, and justify the common regulator. The source's
physical-half, angular/thermal, LLL and restoration allocations remain
unmatched.

When the conformal ratio itself varies, write `b=b(s,v)` and
`B_r(s,v)=K_r(T)+Kbar_r(T)-K_r(epsilon)-Kbar_r(epsilon)`. Under the same
uniform domain and trace-norm differentiability hypotheses, the mixed
derivative of this endpoint comparison is

    1/2 integral_0^1 Tr[b_sv B_r+b_s B_(r,v)+b_v B_(r,s)
                          +b B_(r,sv)] dr.

The last term differentiates both partner heat families through their full
ordered and mixed second-form vertices; the first three retain the moving
conformal insertion. Moving density, localization and local action terms
must be differentiated separately. This is the complete fixed-cut
positive-endpoint identity for the declared interpolation, not an estimate or
the source's common-regulator response; details and hypotheses are in
`../notes/physical-product-mixed-cutoff-bridge.md`.
This physical/product-frame congruence is distinct from the parent source's
geometric/variable-mass interpolation, whose second variation contains the
separate `2 Theta'(t) I_t` contact; the two identities are not interchangeable
without an additional common-Hilbert-space derivation (see
`../notes/source-conversion-response-crosswalk.md`).

Away from the seam, use a smooth cutoff `chi_rho` vanishing near the boundary
and set `F=chi_rho X`, `G=chi_rho X^(-1)`. The exact localized identity is

    chi_rho (exp(-r Q_X)-exp(-r Q)) chi_rho
       = [F, exp(-r Q)] G + [exp(-r Q), chi_rho] chi_rho.

Both cutoff multipliers preserve the mixed domain of `Q`, so the commutators
admit common-domain Duhamel representations. For `Q=nabla^*nabla+V` with
positive connection Laplacian, the smooth-core formula is

    [Q,A] = -2 (nabla^i A) nabla_i
             - (nabla^i nabla_i A) + [V,A].

In the source orbit metric `dy^2+f(y)^(-2)d tau^2`, let
`h=f'/f`, `e_y=partial_y`, `e_tau=f partial_tau`, and
`X=epsilon c(e_tau)`. Then

    [Q,X] = -2 epsilon h c(e_y) nabla_(e_tau) + h^2 X + [V,X].

In the source's product reduction, `V` is the scalar orbit Lichnerowicz
endomorphism, so `[V,X]=0`; the monopole connection belongs to the sphere
operator and its angular spectrum. Terms with derivatives of `chi_rho` are
off diagonal from insertions beyond the transition strip and are Gaussian
suppressed on the pinned smooth collar.
The remaining local term involving `[Q,X]` still requires its localized
trace expansion and coefficient matching. No moving-cut uniformity follows
from this fixed-model calculation.

This split does not complete the curved response. The same-boundary word,
the local conjugation defect, density/contact, boundary transgression, LLL,
local restorations, moving-cut limits and the physical common regulator must
all be matched before a physical remainder claim or novelty decision.

## Relation to prior work — preliminary

Local elliptic boundary conditions, adjoint boundary spaces and regularity for Dirac-type operators are part of the established theory; see [Bär and Ballmann](https://arxiv.org/abs/1307.3021). Propositions 2.1 and 3.1 apply those domain inputs to the stated congruence and paired involution; the general existence of projector boundary conditions is not claimed as a contribution here.

Esposito, Gilkey and Kirsten's [chiral-bag heat-coefficient analysis](https://arxiv.org/abs/math/0510156) computes the boundary parts of the smeared Dirac heat coefficients `a_1` and `a_2`; at zero bag angle their condition is standard mixed boundary data. This is prior art for low-order local coefficients and the smooth mixed boundary class. It does not compute the mass/log mixed response or the rough cubic/log seam terms pursued here; the exact scope comparison is in `../notes/prior-art-comparison.md`.

Beneventano and Santangelo's [finite-temperature local-boundary Dirac calculation](https://arxiv.org/abs/hep-th/0404115v2), Sections 3-5, computes the spectrum and zeta-regularized free energy of a free 1+1D Euclidean Dirac operator on a segment with local self-adjoint boundary conditions, including a separate asymmetric boundary-spectrum contribution. Thus finite temperature, local Dirac boundary data, zeta regularization and this spectral-asymmetry bookkeeping are prior art. Their model does not address the curved four-dimensional paired operator, the mixed mass/log Hessian, the angular tower/LLL allocation, or the rough common-regulator response considered here. The detailed scope comparison is in `../notes/prior-art-comparison.md`; this difference alone is not a novelty claim.

Ivanov and Vassilevich's [*Anomaly inflow for local boundary conditions*](https://arxiv.org/abs/2208.00476v2), JHEP 09 (2022) 250, study eta-invariant variations for strongly elliptic local Dirac boundary problems by heat-kernel methods, including metric variation. This is adjacent prior art for local projectors and boundary anomaly methods. It does not give the even paired full-Weyl mixed mass/log heat response or its angular tower, LLL, rough-seam and physical common-regulator terms. The precise specialization to P1's final projector and operator remains to be checked, so this comparison does not establish novelty.

[Gilkey and Kirsten](https://arxiv.org/pdf/math-ph/0007015) calculate the a3 heat coefficient for a Dirac-type positive square with spectral boundary conditions on a compact smooth manifold of dimension at least four. Their nonlocal tangential spectral projector and smooth smearing differ from the local projector and rough-jet mixed tangent response studied here; the specific operator and observable comparison is recorded in `../notes/prior-art-gilkey-kirsten-spectral-a3.md`. Those differences do not themselves establish novelty.
Faraji Astaneh and Solodukhin ([2023 PRD article](https://arxiv.org/abs/2308.10351v3)) compute fermionic conformal anomalies in dimensions three, four and five, including the four-dimensional boundary terms; their four-dimensional derivation reproduces established results. This is direct prior art for the smooth four-dimensional anomaly and prevents treating that coefficient alone as new. Their calculation does not provide the full scalar-congruence mixed response for the rough cubic/logarithmic directions considered here. The newer Paci--Solodukhin [higher-derivative boundary CFT paper](https://arxiv.org/abs/2512.18017v1) concerns a scalar fourth-order operator and is adjacent boundary-anomaly context, not a paired Dirac response comparison. The theorem-specific overlap and remaining differences are tracked in `../notes/prior-art-comparison.md`; they do not yet establish novelty.

Heat coefficients for nonsmooth interfaces and second-order boundary couplings also have substantial prior literature. [Gilkey, Kirsten and Vassilevich on transmittal conditions](https://arxiv.org/abs/hep-th/0101105) calculate singular-surface coefficients, while their [transfer-boundary paper](https://arxiv.org/abs/hep-th/0208130) computes the first five heat coefficients for transfer conditions. [Herzog, Huang and Vassilevich](https://arxiv.org/abs/2005.01689) give the symmetric spinor-interface matching law and its four-dimensional anomaly. The smooth finite-cut P1 composition square is now identified conditionally with a folded spinor-interface square under the pinned global partner hypothesis; its nonzero-normal-jet Robin and tangential connection coefficients agree after normal alignment. Thus a derivative jump, doubled geometry, conformal variation, or smooth interface anomaly is not by itself a new contribution. The physical full-Weyl mixed response, source normalization, common-regulator limit and higher-order coefficient comparison remain open, so novelty is not decided.

[Bandara and Rosén](https://doi.org/10.1080/03605302.2019.1611847), Theorems 2.1 and 3.1, establish functional-calculus stability under stated common-domain differential perturbations and under certain local self-adjoint Dirac boundary perturbations. The self-adjoint partner S=iJD and its scalar congruence S_b=E_b S E_b suggest a comparison with their common-domain framework, subject to its geometric, graph, core and square-regularity hypotheses. Their estimates do not by themselves establish the differentiated trace response or its common regulator. The applicability and distinction from the explicit mass-resolvent derivatives require the hypothesis audit in `../notes/prior-art-comparison.md`; operator continuity alone is not a novelty claim.
[Smith](https://arxiv.org/abs/1809.05614) relates finite relative heat-trace expansions to Sobolev regularity for compactly supported Schrödinger potentials on complete manifolds. That result is relevant to the regularity and remainder analysis, but its hypotheses do not by themselves give the paired mixed metric-response and common-regulator estimate sought in Section 5. The flat Dirac multiplier in (4.1) is not equal, after an arbitrary local polynomial of degree at most three and constant scaling, to the specific scalar-potential multiplier x² integral_0^1 exp[-alpha(1-alpha)x] d alpha; a coefficient comparison is in `../notes/flat-dirac-scalar-form-factor-comparison.md`. This only excludes that particular reduction. It does not establish that the boundary coefficients or the complete paper are new, and the scalar jump benchmark's normalization remains unresolved.

More precisely, Smith's Theorem 1.1 assumes a real bounded compactly supported scalar potential on a complete manifold with Ricci curvature bounded below, and for dimension at least four also assumes a local trace-class estimate. It equates `H^m` regularity with the stated finite-order relative heat-trace expansion and bounded remainder. This is substantial finite-regularity prior art. The P1 operator also varies its principal symbol and its composed mixed boundary realization; that difference does not itself prove novelty. A P1 extension still needs estimates for its matrix, boundary and common-regulator terms in the relevant remainder norm.

The interface literature also covers substantial parts of the smooth square-level setup. Gilkey, Kirsten and Vassilevich's [transfer result](https://arxiv.org/abs/hep-th/0208130v1), Eq. (1.1) and Theorem 1.2, gives the first five heat coefficients for compact smooth Laplace-type problems with finite matrix impedance conditions. Their [transmittal result](https://arxiv.org/abs/hep-th/0101105v1), Theorem 2.3 and Section 7, determines interface invariants through `a_4`, with only a restricted reflection-symmetric `a_5` case in Section 8. The P1 square has a mixed Dirichlet/Robin trace space and is conditionally crosswalked to an interface Laplace-type square. Consequently, the mixed boundary structure and smooth low-order coefficients cannot be claimed as new by themselves. These results do not compute the full-Weyl mixed mass/log response, rough seam terms, LLL/local allocation or the physical common-regulator endpoint. The exact comparison and remaining novelty gate are recorded in `../notes/prior-art-comparison.md`.

The comparisons above are partial. Later literature, exact boundary and trace normalizations, and the completed result must be assessed before a publication or novelty decision.
## Verification and prior art — work in progress

The exact scope of Lean certification must match the declarations checked on GCP and their source and dependency provenance. A clean source-only replay also checked the abstract composed lower graph estimate, with its exact overlay, pinned dependencies and axiom report recorded in `../evidence/gcp-graph-clean-20261030/README.md`. Its domain invariance and commutator bounds remain hypotheses, not verified properties of the physical realization. The source-only replay at commit 6376ccc checked 29 repository Lean sources without reported sorryAx; a separate clean replay checked the transported-congruence algebraic declaration. The receipts are in `../evidence/gcp-clean-replay-20261030/README.md` and `../evidence/gcp-transported-congruence-20261030/README.md`. The clean replay includes abstract closedness, adjoint and composition-square declarations relevant to Proposition 2.1, under explicit invariance and symmetry assumptions; the declaration-by-declaration map is in `../notes/manuscript-lean-coverage-map.md`. A clean source-only replay also checked the natural partner square action under the assumed partner identity; the pinned base and exact overlay are in `../evidence/gcp-partner-action-clean-20261030/README.md`. The partner identity itself and resolvent bounds remain outside that check. A further clean replay checks the skew-adjoint operator equality for JD from explicit density, unitary and partner assumptions; its two source overlays and dependency evidence are in `../evidence/gcp-partner-skew-operator-clean-20261030/README.md`. It does not establish those assumptions in the physical geometry or the spectral resolvent bounds. A separate clean replay checked the finite-matrix grading cancellation; its exact overlay and dependency evidence are in `../evidence/gcp-grading-clean-20261030/README.md`. The corresponding infinite-dimensional trace-class argument and its physical hypotheses are not certified by that lemma. The rational-constant source and runner described after Proposition 3.2 are pending exact-source GCP replay; no receipt certifies those bounds yet. These checks do not certify Propositions 2.1 or 3.1 in their entirety, their geometric hypotheses, or the response. The raw tangent form-factor development check reused a build environment with dependency worktree warnings and is not a clean acceptance replay; see `../evidence/gcp-raw-tangent-20261030/README.md`. The general elliptic-boundary and semigroup results used here are existing mathematics. A defensible paper-level novelty decision requires the pending closest-prior-art comparison.

The `../lean/CurvedScalarContactJet.lean` source states the pointwise rational-jet regrouping in (5.5) and the flat coefficient subtraction in (4.12c). It compiles on GCP with Lean 4.30.0, exit code 0, standard axioms only and no reported `sorryAx`; the receipt is `gcp-curved-scalar-contact-jet-20261031` and the certified source SHA-256 is `e8bc85145e142ea6fd0dea295fe37f2297343ab5d803bb7a02e566512c770ba1`. An earlier source, `6a952be2f8139ac62cc6e1e84aef31bda5ccb814f080a57cb6b3b5ebb51255b3`, failed and is retained. The certificate covers only these algebraic identities, not the Hessian formula, integration by parts, heat trace or physical response.

Remaining to-do list: verify physical domain and bundle hypotheses; complete the full tangent response and any supported curved extension; finish prior-art and manuscript review; certify the supported claims in Lean on GCP.

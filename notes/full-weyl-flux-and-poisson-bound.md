# Full Weyl collar flux traces and a conditional Poisson bound

This extends `full-weyl-symmetric-lapse-transfer.md` using the composition-domain argument of `symmetric-lapse-square-domain-traces.md`. It is a local fixed-collar model theorem under explicit closed-domain and regularity assumptions, not a physical boundary or common-regulator theorem.

Use P_b=sqrt(F)(H_mu+i nu)sqrt(F), F=f exp(-b), and its actual nonnegative square A_b=P_b*P_b. Assume F,F^-1 are uniformly W2,infinity and bounded away from zero on a fixed outer collar, and that the closed first-order domains of P_b and P_b* are both the local Pi_minus H1 trace space in the canonical representation. This latter statement follows from the source-type complementary Dirac domains and the gamma_tau projector flip only when the asserted unitary and bundle maps are valid. Assume the local H2 regularity needed for square traces.

For psi in Dom(A_b), both psi and P_b psi belong to those first-order domains. With eta=sqrt(F)psi and xi=F(H_mu+i nu)eta=sqrt(F)P_b psi, scalar multiplication preserves the projector traces, so

  Pi_minus eta=0,  Pi_minus xi=0.                           (1)

These are the same abstract flux-plane conditions as the seed, but xi depends on b. They do not state that a projector at a finite cut is the transported physical infinity condition.

Let zeta lie outside the spectrum of A_b, d=dist(zeta,spec A_b)>0, and psi=(A_b-zeta)^(-1)g. Spectral calculus gives

 ||psi|| <= d^-1||g||,
 ||P_b psi|| <= [d^(-1/2)+sqrt(|zeta|)/d]||g||.          (2)

Indeed lambda/|lambda-zeta|² <= 1/|lambda-zeta|+|zeta|/|lambda-zeta|² for lambda>=0. On the fixed collar, the first-order transfer equations and uniform F,F^-1 bounds convert (2) into H1 bounds for eta,xi. Their coefficient is a polynomial in 1+|mu|+|nu|+|zeta|, d^-1 and d^-1/2, with fixed collar constants; the fixed-interval trace inequality gives the same type of bound for the endpoint flux.

For prescribed r,gamma in Ran(Pi_minus), choose a compactly supported H2 lift eta0 near the endpoint with Pi_minus eta0=r and choose its complementary normal derivative to impose Pi_minus xi0=gamma, where xi0=F(H_mu+i nu)eta0. The normal coefficient -i F sigma_2 maps the complementary eigenspace isomorphically onto Ran(Pi_minus); uniform lower and W2,infinity bounds for F give a lift psi0=F^(-1/2)eta0 satisfying

 ||psi0||+||(A_b,formal-zeta)psi0||
       <= C P(1+|mu|+|nu|+|zeta|)(|r|+|gamma|).          (3)

Here P is a fixed polynomial and C depends on the collar coefficient bounds, not on the mode or cut. If the resolvent maps into the assumed homogeneous square domain, then

 w=psi0-(A_b-zeta)^(-1)(A_b,formal-zeta)psi0               (4)

has the prescribed flux data and solves the homogeneous equation, with norm at most C(1+d^-1)P(...)(|r|+|gamma|). The uniqueness argument uses the same condition at the opposite endpoint and zeta outside the spectrum. Equations (3)--(4) are uniform only when the collar length and lift profile are fixed and all stated coefficient and domain bounds are uniform.

On a contour shifted by a common lower bound lambda_(mu,nu), the distance d is bounded below by dist(z,[0,infinity)) for z=zeta-lambda_(mu,nu). Combining this Poisson construction with the affine transfer from the preceding note is a candidate route to a uniform fixed-mode resolvent comparison. It still requires an explicit comparison formula, removed-collar trace estimate, summation and physical boundary identification. The true projector, H2 domain, angular/thermal modes and lower bound must be established for the source; none follows merely from (1)--(4). No Lean certification is claimed.

Remaining to-do list: prove source domain and uniform coefficient hypotheses, complete the localized full-Weyl resolvent and heat comparison, establish the response and regulator, resolve novelty, finish the manuscript, and certify supported claims on GCP.
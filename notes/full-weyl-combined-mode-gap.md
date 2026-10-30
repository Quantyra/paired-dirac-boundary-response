# Combined angular and thermal gap under full Weyl congruence

This supplies a sufficient lower bound for the full Weyl mode square discussed in `full-weyl-angular-mode-correction.md`. It does not assert an exact scalar mass shift or establish the source's global physical mode domains.

Let D be a closed orbit operator on V, and let G be a bounded self-adjoint involution satisfying G V subset Dom(D*) and D* G=G D on V. Let the scalar multiplier m=exp(-b/2), for real |b|<=B, and its inverse preserve V and commute with G. On V define the full congruenced mode

  P_mu,b=m(D+i mu G)m,    mu real.                         (1)

For z in V the complementary-domain identity gives <D z,G z> real. Consequently

  ||(D+i mu G)z||²=||D z||²+mu²||z||².                    (2)

This is the quadratic identity for the seed mode; no commutator with b is discarded because m is applied before and after the entire seed operator. Since m>=exp(-B/2), (1)--(2) yield the unconditional angular lower bound under these assumptions

  ||P_mu,b psi||² >= exp(-2B) mu² ||psi||².               (3)

If, in addition, a fixed thermal mode nu has ||D z||>=kappa |nu| ||z|| for all z in its actual domain and multiplication by m preserves that mode, then the same argument gives

  P_mu,b* P_mu,b >= exp(-2B)(mu²+kappa² nu²)              (4)

as a form inequality on V. The two factors exp(-B/2) arise from the outer and inner multipliers. The same bound holds for a cut family only if its seed mode identity, thermal estimate, multiplier invariance and constants hold uniformly on the cut domains. A bounded congruence does not establish these domain properties by itself.

Inequality (4) supplies the common angular and thermal lower bound required for a shifted contour with lambda=exp(-2B)(mu²+kappa² nu²). It is a lower-bound shift of the complete nonconstant mode square, not an assertion that its angular contribution is the constant mu². In particular the gradient-dependent term in `full-weyl-angular-vertices.md` and all its variations remain present in the response. To use (4) in the transfer estimate, the shifted parameter contributes a term proportional to mu²+nu² in h, which can be absorbed by the heat factor when ell/t is sufficiently small as in the summability test.

## Shifted contour without scalar factorization

Let A_(mu,nu) denote the complete self-adjoint square in (4), and let lambda_(mu,nu)=exp(-2B)(mu²+kappa² nu²). Since A_(mu,nu)-lambda_(mu,nu)>=0, the shifted functional calculus formula applies directly to this *whole* operator:

 exp(-t A_(mu,nu))=(1/(2pi i)) integral_(Gamma_t)
   exp[-t(lambda_(mu,nu)+z)] (lambda_(mu,nu)+z-A_(mu,nu))^(-1) dz. (5)

Here Gamma_t is the contour in `shifted-heat-contour-mode-damping.md`. This yields the factor exp[-t lambda_(mu,nu)] without writing A as a scalar shift plus an independent orbit operator. If the full and cut squares share the same lower-bound constants, they can use the same lambda and contour. The remaining shifted resolvent depends on the full varied mode operator, including its nonconstant angular term.

The fixed symmetric-lapse transfer matrix in `symmetric-lapse-inhomogeneous-transfer.md` was derived for its own separated expression. It cannot be substituted into (5) for the full Weyl operator without deriving its conjugation, source term, boundary flux and actual domains. A sufficient future estimate would bound the resulting full-Weyl transfer exponent by C ell(1+mu²+nu²+|z|+|mu|+|nu|), with constants uniform in the declared field family and cut; combined with (5) and sufficiently small ell/t, the elementary absorption argument applies. This is a target hypothesis, not an established transfer bound.
For the physical source, the complementary-domain relation, fixed-mode decomposition, thermal bound including the bolt, uniform cut constants, and identification of the canonical transfer variables remain to be verified. A square lower bound alone does not prove mode-uniform Poisson trace estimates, geometric vertices, a regulator limit, or a physical admission margin. No Lean certification is claimed.

Remaining to-do list: verify physical mode domains and uniform gap hypotheses, prove shifted-contour trace estimates and boundary matching, complete the response and regulator, resolve novelty, finish the manuscript, and certify supported claims on GCP.
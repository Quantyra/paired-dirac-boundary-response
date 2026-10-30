# Full Weyl congruence in symmetric-lapse collar variables

This derives the local transfer system requested in `full-weyl-combined-mode-gap.md` for the stated scalar-congruence product model. It does not identify the physical global domains, prove uniform Poisson estimates, or establish the response regulator.

On a fixed canonical collar [s0,s1], let the seed thermal-angular mode in the unitary half-density representation be

  P0=sqrt(f)(H_mu+i nu)sqrt(f),
  H_mu=-i sigma_2 partial_s+mu a(s) sigma_1,                (1)

as in `euclidean-canonical-unitary-half-density.md`. Let b(s) be real and stationary, m=exp(-b/2), and assume m commutes with the fixed matrix gamma_tau used in the unitary conversion. Full scalar congruence of the seed mode is

  P_b=m P0 m=sqrt(F)(H_mu+i nu)sqrt(F),
  F=f m²=f exp(-b).                                        (2)

The equality is an operator-expression identity on the common smooth core: the adjacent scalar factors commute, while H_mu remains between them. It does not replace a derivative term by a formal scalar mass shift. Indeed the zeroth-order angular contribution to P_b is mu F a sigma_1; its b variation and the derivatives generated when H_mu acts on sqrt(F) are retained. Equation (2) requires the same fixed canonical coordinate, half-density unitary and product-mode representation; other Weyl conventions require their own transport.

For (P_b* P_b+M²-zeta)psi=g, where M² is an independent external square shift and is not the angular parameter mu already in H_mu, define

  eta=sqrt(F)psi,  xi=F(H_mu+i nu)eta.

On the common smooth core, and distributionally under the corresponding local regularity, the exact system is

  Y'=K_b,zeta Y+(0,i F^(-1/2) sigma_2 g),  Y=(eta,xi),
  K_b,zeta=[ nu sigma_2-mu a sigma_3        i F^(-1) sigma_2 ]
           [ i(zeta-M²)F^(-1) sigma_2   -nu sigma_2-mu a sigma_3 ]. (3)

It follows by applying the derivation in `symmetric-lapse-inhomogeneous-transfer.md` with f replaced everywhere by F. The flux contains the derivative of F implicitly; no derivative of b is omitted in recovering the original second-order equation. At the unshifted full Weyl square take M=0. If a separate mass shift is present, its origin must be specified independently to avoid double counting.

Assume on the collar f and f^-1 are bounded, |b|<=B, and the coefficient a is uniformly bounded. Then F^-1<=exp(B)||f^-1||_infinity and the fundamental matrix U_b satisfies

 ||U_b(s,t)||<=exp(h_b),
 h_b<=C ell [1+|nu|+|mu|+|zeta-M²|], ell=s1-s0,           (4)

with C uniform under those stated bounds. Variation of constants supplies the source displacement and its estimate C exp(h_b) sqrt(ell)||g||_L2. On a shifted contour with |zeta| bounded by a constant times mu²+nu²+|z|, (4) has the polynomial growth required by the absorption test in `full-weyl-combined-mode-gap.md`. This is a local fundamental-matrix bound, not a Poisson or trace-norm bound.

The square boundary plane in (eta,xi) and its source-dependent transport must be checked against the actual first-order and adjoint traces. Smooth or W2,infinity coefficient bounds required for the endpoint lift, uniform thermal/angular mode decomposition, full/cut gap, spin and bundle identifications, and physical matching are independent assumptions. In particular (2)--(4) do not prove the full geometric response, common regulator, or Lean certification.

Remaining to-do list: verify physical domains and mode maps, derive uniform full-Weyl Poisson and trace estimates, establish boundary and regulator limits, resolve novelty, finish the manuscript, and certify supported claims on GCP.
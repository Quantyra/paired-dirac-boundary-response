# Mode damping from a shifted positive-square heat contour

This supplies a conditional source of the angular and thermal exponential factors assumed in `symmetric-lapse-transfer-summability-test.md`. It extends the fixed-mode contour bookkeeping in `symmetric-lapse-localized-heat-contour.md`; it does not prove that the physical operator has the stated mode decomposition or uniform gap.

Let L_j and L_(ell,j) be nonnegative self-adjoint full and cut mode squares, and assume the common lower bound

  L_j >= g nu_j²,  L_(ell,j) >= g nu_j²,  g>0,             (1)

on their actual domains. Suppose the separated angular contribution is exactly a scalar shift M_n² on both operators. This is an assumption about the particular decomposition; if an angular mass is already inside L_j, it cannot be inserted a second time. Let A_(n,j)=L_j+M_n² and set lambda_(n,j)=M_n²+g nu_j².

For the fixed angle theta in (0,pi/2), take a contour Gamma_t surrounding [0,infinity) with rays z=r exp(+-i theta), r>=1/t, joined by the radius-1/t arc through the negative axis, oriented for the standard Dunford formula. Since A_(n,j)-lambda_(n,j)>=0, functional calculus gives

 exp(-t A_(n,j))=(1/(2pi i)) integral_(Gamma_t)
          exp[-t(lambda_(n,j)+z)] (lambda_(n,j)+z-A_(n,j))^(-1) dz. (2)

The same identity holds for the cut operator with the same shift, provided the lower bound (1) is common. The heat factor in (2) is exactly exp[-t M_n²] exp[-g t nu_j²] exp(-t z). On the rays, |exp(-t z)|=exp[-t r cos(theta)]; on the arc it is uniformly bounded by exp(1). The zero angular sector M=0 can be included separately if (1) holds for it; it is not assigned an angular mass gap.

In the symmetric-lapse transfer system the relevant coefficient is |zeta-M_n²|, where zeta=lambda_(n,j)+z. Thus

 |zeta-M_n²| <= g nu_j²+|z|,                               (3)

and the elementary transfer majorant has the schematic form

 h <= C ell [1+|mu_n|+|nu_j|+g nu_j²+|z|],               (4)

with C uniform only if the collar and lift hypotheses are uniform. For ell<=c t/C with c small enough, the exp(h) growth in nu_j² and the ray variable |z| is absorbed by the explicit thermal and contour heat factors. Linear |mu_n| and |nu_j| terms are absorbed by Young's inequality when |mu_n| is controlled by a fixed multiple of 1+M_n. The angular exp(-t M_n²) then provides the Gaussian mass damping. The resulting polynomial sums are of the type estimated in `symmetric-lapse-transfer-summability-test.md`.

## Source-family qualification

The scalar-shift hypothesis is compatible with the source's recorded separated seed square L2+M_n². It is not automatic for its full Weyl family. In `full-weyl-angular-vertices.md`, the full congruenced mode square has angular contribution

  exp(-2b)[mu²-i mu G c(db)].                              (5)

For nonconstant b this is a bounded position-dependent endomorphism, including a gradient term, rather than the constant mu² identity. At b=0 it reduces to the scalar shift mu²; even a nonzero constant b changes the scalar value to mu² exp(-2b). Hence the shifted contour using M_n² cannot be applied uniformly to that full family by the seed separation alone. A separately proved lower bound for the complete mode square may still supply damping, but it must retain its own actual domain and vertices.

Likewise the interpolating variable-mass conversion family contains M exp((1-r)b) in its first-order operator. Its real mass-gap proof yields a Gaussian majorant without asserting exact scalar-shift factorization. These are distinct mechanisms: (2) uses an exact spectral shift, while the product conversion uses an inequality. Neither proves the physical curved tangent subtraction.
The shift does not prove a trace-norm resolvent comparison or a uniformly polynomial Poisson constant. Those must hold on the shifted contour, including the arc and its distance to the actual spectrum, with all boundary-source and removed-collar terms. If the mode gap, scalar mass separation, or common full/cut domain fails, the displayed damping is not available in this form. In particular no inference is made from the product-model gap to the physical rough geometry without proving those hypotheses. This is not a common-regulator theorem or Lean certification.

Remaining to-do list: establish physical mode separation and uniform gaps, prove shifted-contour trace-norm estimates and boundary matching, complete the response and regulator, resolve novelty, finish the manuscript, and certify supported claims on GCP.
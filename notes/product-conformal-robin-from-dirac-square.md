# Robin data from the conformally transported Dirac square

This derives the Robin-form hypothesis of `product-conformal-boundary-data-variation.md` for a stipulated two-dimensional geometric Dirac square. It is a local and fixed-cut argument with explicit closed-domain assumptions, not an identification of the source's global physical realization or a Lean certificate.

Let g be a smooth orbit metric on a compact cut, D its geometric paired Dirac expression, and Pi_minus/Pi_plus the fixed complementary boundary projectors in a conformal spin-bundle identification. Suppose the H1 realization of D and its complementary adjoint are exactly the projector domains of `multiplier-square-boundary.md`, and that the same Gauss decomposition and intrinsic boundary flip hold for each smooth conformal metric below. Let b be real and smooth, identical on the copies, and put

  ghat=exp(2b)g,  E=exp(-b/2),  D_b=E D E.

Under the standard pointwise conformal spinor identification in dimension two,

  D_ghat=exp(-3b/2) D exp(b/2).                              (1)

The map U_b: L2(g)->L2(ghat), U_b psi=exp(-b)psi, is unitary. Equation (1) gives

  U_b D_b U_b^(-1)=D_ghat.                                   (2)

Because the scalar factors are smooth and nonzero on the fixed cut, they preserve the H1 projector spaces. If those are the declared closed domains, (2) is an operator identity, not just a formal equality. Taking adjoints and compositions transports D_b*D_b to D_ghat*D_ghat with its actual square domain; no fixed square domain is assumed.

In the ghat normal frame write the geometric Gauss decomposition in the source's convention as

  D_ghat=gamma_(n_hat)(nabla^hat_(n_hat)+sigma K_hat)
             + D_intr,hat,                                    (3)

where sigma is the fixed sign/coefficient determined by that convention, with |sigma|=1/2 in the recorded decomposition. The assumed boundary intrinsic operator exchanges the projector subbundles and gamma_(n_hat) preserves them. Thus the composition-domain condition Pi_plus D_ghat phi=0, together with Pi_minus phi=0, is equivalent on H2 sections to

  Pi_plus(nabla^hat_(n_hat)+sigma K_hat)phi=0.               (4)

The first-order regularity argument in `multiplier-square-boundary.md` gives the H2 characterization under the stated elliptic projector hypotheses. In a normal-parallel projector frame, (4) is the standard mixed condition with S_b=sigma K_hat Pi_plus. The projector trace is conformally invariant under the chosen normalized Clifford/spin identification; this is an assumption about the actual source bundle, not a consequence of equality of scalar metrics alone.

Define K=div_boundary n for the chosen unit normal. In boundary dimension one,

  K_hat=exp(-b)(K+n b).                                      (5)

If the Gauss convention uses the opposite curvature sign, sigma and the signed K are changed consistently; the following bound is unaffected. Equations (4)--(5) give

  S_b=exp(-b)[sigma K Pi_plus+sigma(n b)Pi_plus].             (6)

This is the structural form assumed in `product-conformal-boundary-data-variation.md`, with S_0=sigma K Pi_plus and c=sigma, for this stipulated geometric square. Its first variation is therefore bounded by C(|v|+|dv|) on bounded b and geometry families. The fixed-Hilbert-space Robin expression containing K/2-(n b)/2 in `multiplier-square-boundary.md` uses the base spin connection and base normal; (6) uses the ghat spin connection and ghat unit normal. Their coefficients must not be compared without the unitary/spin-connection transformation.

The argument excludes extra boundary endomorphisms not present in (3); a varying twist or additional physical boundary coupling needs its own term. It also assumes the source's actual spin/copy and magnetic maps, intrinsic flip, closed projector domains and finite-cut boundary prescription match this model. It gives no uniform differentiated heat remainder, physical regulator limit, numerical certificate or Lean verification.

Remaining to-do list: verify those global source and cut-domain hypotheses, prove the full rough response and common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
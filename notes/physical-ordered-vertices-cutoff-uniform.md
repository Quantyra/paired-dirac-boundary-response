# Cutoff-uniform ordered vertices at positive time

This supplies the long-heat smoothing hypothesis of
`physical-ordered-vertices-positive-time.md` for the radial weighted
approximants of `physical-rough-family-heat-diagonal.md`, on a fixed complete
RN physical seed. It does not establish a finite-cut boundary estimate,
small-time subtracted remainder, physical determinant or Lean certificate.

Use the fixed physical charts, uniform metric and connection bounds, and
radial b_e with uniform weighted derivatives through order five from the
rough-family note. Assume its uniform C5 interior extension and smooth
approximants, the common closed domains, and the standard uniform local
elliptic estimates on nested physical charts. Let D_e=E_e D E_e and
L_e=D_e*D_e. In these charts the coefficient derivatives of L_e through order
three are uniformly bounded: the zeroth-order part uses derivatives of b_e
through two, so three more require at most five. The leading coefficients are
uniformly elliptic. This uses scaled physical charts, not a uniform fifth
compactified-coordinate derivative.

For a positive heat time s, spectral calculus and L_e=D_e*D_e give uniformly
in e

    ||L_e^j K_(e,s)|| <= C_j(1+s^(-j)),       j<=2,
    ||D_e L_e^2 K_(e,s)|| <= C(1+s^(-5/2)).           (1)

On nested fixed-radius charts, the first-order interior graph estimate
controls the H1 norm of L_e^2 K_(e,s)h by the last term in (1) and its L2
norm. Apply second-order elliptic regularity twice: first control L_e K h
in H3 from L_e^2 K h in H1, then K h in H5 from L_e K h in H3. The nested
cutoffs and lower-order terms are absorbed in the same uniform local
estimates. Thus

    ||K_(e,s)h||_H5(smaller chart)
       <= C(1+s^(-5/2)) ||h||_2.                        (2)

The required H5 local estimate is justified by the uniform W3,infinity
coefficients stated above; all constants are independent of e on the fixed
seed. In four dimensions H5 embeds into C2. Point evaluation and the Riesz
representation then give uniform diagonal bounds for K_(e,s) and its
spatial derivatives through order two. For s in [t/4,t], their weighted
Hilbert--Schmidt estimates have a common finite constant C_t, independent of
e. The adjoint factors follow by taking adjoints of the same heat operators.

Suppose u_e,w_e have uniform physical L2 norms of their values, gradients
and Hessians, with the regularity required for the product rules in the
ordered-vertex note. The radial cubic/log bounds give these norms and the
O(delta^(3/2)) norm of a smoothly localized outer tail, as shown in
`physical-cubic-bilinear-integrability.md`. Substitution of the uniform
long-heat estimates into the endpoint argument of
`physical-ordered-vertices-positive-time.md` gives

    |F_(u_e,w_e)(s)| <= C_t [min(s,t-s)]^(-1/2)
                                  N(u_e)N(w_e), 0<s<t,  (3)

with C_t independent of e. Thus each ordered term is absolutely integrable
at every fixed t>0 uniformly in e. Replacing one direction by its smooth
outer tail makes its contribution O_t(delta^(3/2)), uniformly in e. The
single mixed second vertex has the separate uniform bound from
`physical-rough-family-heat-diagonal.md`.

The derivative-transfer and form-trace manipulations in the ordered-vertex
note must hold on the declared smooth cores; (3) does not extend them to an
unmatched finite-cut boundary. The constant C_t can diverge rapidly as t->0,
and no t^(3/2) curved remainder or proper-time integrability follows.
Physical source and regulator matching, the full normalized action and
novelty remain open. No numerical calculation is used.

Remaining to-do list: establish finite-cut and physical boundary matching,
prove the subtracted response and common regulator, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
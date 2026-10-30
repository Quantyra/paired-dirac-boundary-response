# Full Weyl mode sum on the product H1 domain

This combines the existing product H1-domain identification with scalar
congruence for the full Weyl family, including the angular factor that varies
with the multiplier. It is a conditional ordinary argument for the compact
constructed product, not a physical pullback proof or Lean certificate.

Use the product, orbit operator D, chirality Gamma, sphere operator B, and
orthogonal angular eigenmodes in `product-h1-projector-domain.md`. Let P be
the closed product realization, so Dom(P) is the H1 projector space and
P is the direct sum of P_mu=D+i mu Gamma. Let real b depend only on orbit
coordinates, with ||b||_infinity<=B0 and ||db||_infinity<=G0, and let
E=exp(-b/2). Assume the scalar product and trace rules used in
`paired-multiplier-domains.md`.

E and E^(-1) preserve the H1 projector domain and commute with all angular
spectral projections. Therefore the full congruence

    P_b=E P E,       Dom(P_b)=Dom(P),                   (1)

is closed and its domain remains the product H1 projector space. Its action
on mode mu is P_mu,b=E D E+i mu E^2 Gamma. Thus this is the full Weyl family,
not the different orbit-only family with an unchanged angular shift.

The following graph bounds hold with constants independent of mu:

    ||P_mu,b v|| <= exp(B0)(||P_mu v||+G0 ||v||/2),
    ||P_mu v|| <= exp(B0)||P_mu,b v||+G0 ||v||/2.       (2)

Indeed [P_mu,E]=[D,E]=-(E/2)c(db): E commutes with Gamma and the sphere
mass term. The weak product rule yields (2), just as for the full Dirac
operator. In particular, for any sequence v_mu in the individual H1 orbit
projector domain, the sums of ||v_mu||^2+||P_mu v_mu||^2 and of
||v_mu||^2+||P_mu,b v_mu||^2 are finite together. The inequalities have no
uncontrolled |mu| constant.

Since E is bounded and commutes with mode projections, the direct sum of
P_mu,b with its natural graph domain equals P_b in (1), including equality
of domains and actions. Spectral truncation of a product H1 section converges
in the P_b graph norm by (2), so finite sums of the mode domains form a core
for every such b. The complementary adjoint is the bounded-congruence adjoint
E P* E under the separately established adjoint-domain preservation.

This argument supplies the missing verification behind the mode-reduction
hypothesis for the constructed full Weyl family at first-order domain level.
It does not restore tensor-factorization of the square, justify separating
individual infinite-mode Duhamel terms, or give bounds uniform as heat time
approaches zero. If b depends on angular coordinates, spectral projections
need not commute with E and the conclusion about mode reduction fails without
additional analysis. The actual physical product, copy/spin and magnetic
identifications and cut matching remain separate hypotheses. No numerical
calculation is used.

Remaining to-do list: prove the physical identifications and complete the
full response and regulator, resolve prior art, prepare the manuscript, and
certify supported claims on GCP.
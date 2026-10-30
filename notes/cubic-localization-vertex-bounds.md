# Derivative cost of cubic localization in geometric vertices

This checks the scaled-cutoff derivatives left open in
`lapse-cubic-localization-scales.md`. It concerns fixed-domain form vertices
under the multiplier hypotheses below, not the complete heat response or a
Lean certificate.

Let u have the one-sided weighted cubic bounds on a fixed collar, so for
j=0,1,2,3,

    |u^(j)(s)| <= K_j s^(3-j),                             (1)

with fixed constants; the weighted remainder s^(4-j)(1+log(1/s)) is absorbed
on a sufficiently small fixed collar. Let chi be a fixed smooth cutoff
supported in [0,rho], equal to one near zero, and put
u_ell(s)=chi(s/ell)u(s). Leibniz's rule gives

    ||u_ell^(j)||∞ <= C_j K ell^(3-j),   j=0,1,2,3,       (2)

where C_j includes the fixed cutoff derivatives and coordinate-comparison
constants. In a transition term, ell^(-k) u^(j-k) is
O(ell^(-k) ell^(3-j+k))=O(ell^(3-j)). Thus the shrinking cutoff does not
make these first three derivatives blow up for a cubic direction. The third
derivative need not converge in L-infinity as ell->0 and its even reflection
can retain a seam jump; (2) asserts only a uniform bound there. Fourth and
higher derivatives are not covered by (2).

Let D_b be the fixed-domain first-order operator in
`mixed-heat-vertex-inventory.md`, with scalar product rule
[D_b,u]=E_b² c(du), ||E_b² c(du)||<=C_b ||du||∞. Define the graph norm
||psi||_V=||D_b psi||+||psi||. For the first variation

    D_u= -u D_b -(1/2) E_b² c(du),

(2) implies

    ||D_(u_ell) psi|| <= C ell² ||psi||_V                  (3)

for 0<ell<=1, with fixed coefficient and direction bounds. The first square
form vertex therefore obeys

    |q_(u_ell)(phi,psi)| <= C ell² ||phi||_V ||psi||_V.  (4)

For two cubic-localized directions u_ell,w_ell, the mixed first-order
variation has the exact simplification

    D_uw = u w D_b +(1/2) E_b² [u c(dw)+w c(du)].          (5)

This follows by expanding the four terms of the source formula with the
weak product rule. Equations (2) and (5) give
||D_(u_ell,w_ell) psi||<=C ell^5 ||psi||_V. The two products of first
vertices in the mixed square form are O(ell^4), so the complete mixed form
vertex obeys the conservative bound

    |q_(u_ell,w_ell)(phi,psi)| <= C ell^4 ||phi||_V ||psi||_V. (6)

These estimates assume real scalar directions, fixed domain preservation,
and a common first-order graph norm. They account for both product and
coincidence terms; they do not control the physical heat trace, the scaled
locality cutoffs, or the fixed-direction contribution outside the shrinking
collar. Passing (4)--(6) through heat factors and angular sums requires its
own estimates, particularly at Duhamel endpoints. No numerical calculation
is used.

Remaining to-do list: estimate the full localized and complementary heat
vertices, verify physical domains and regulator, decide novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

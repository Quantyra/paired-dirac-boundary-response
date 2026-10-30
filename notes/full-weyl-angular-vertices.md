# Angular vertices for the full Weyl mode family

This derives the angular-dependent first and mixed square vertices omitted by
holding the product sphere fixed during full four-dimensional scalar
congruence. It supplements `mixed-heat-vertex-inventory.md`; it does not
replace that inventory or prove a physical heat response or Lean certificate.

Use the assumptions and composition-domain identity in
`full-weyl-angular-mode-correction.md`. Write m_b=exp(-b/2), M_b=exp(-b),
D_b=m_b D m_b, L_b=D_b*D_b, with real b,u,w having the required bounded
W^{1,infinity} multiplier properties. For the mode obtained by congruencing
the *whole* seed P_mu=D+i mu G, the square action is

    P_mu,b* P_mu,b = L_b + A_mu(b),
    A_mu(b) = exp(-2b) [mu² - i mu G c(db)].                 (1)

Here c(db) denotes the principal-symbol multiplication in [D,b]=c(db).
Equation (1) follows from M_b c(dM_b)=-exp(-2b)c(db), and is an equality
on the actual composition domain at b. A_mu(b) is bounded on L² for each
fixed mu under these hypotheses; its norm need not be uniform in mu.

For b(s,r)=b+s u+r w, differentiation in bounded-operator norm gives

    A_u = exp(-2b) [-2 mu² u
                     + i mu G (2u c(db)-c(du))],            (2)
    A_uw = exp(-2b) [4 mu² u w
                     + i mu G (-4u w c(db)
                                  +2u c(dw)+2w c(du))].     (3)

At the product seed b=0 these simplify to

    A_u  = -2 mu² u - i mu G c(du),
    A_uw = 4 mu² u w + 2 i mu G [u c(dw)+w c(du)].         (4)

These are additive to the first and mixed derivatives of the orbit square
L_b in the full mode family. They are not extra terms to add a second time
when using the full first-order form vertices q_u,q_w,q_uw already written
in `mixed-heat-vertex-inventory.md`: those vertices vary the full D and
therefore already contain (2)--(3). The formulas expose precisely which
parts disappear if one mistakenly substitutes the fixed-angular family.

As a check, constant b,u,w make all gradient terms vanish, while the angular
shift is mu² exp(-2b), with derivatives -2mu²u exp(-2b) and
4mu²uw exp(-2b). At mu=0 every displayed angular contribution vanishes.
For a general family, the square domains may move: (2)--(4) state the
bounded angular contributions and can be inserted into the fixed form-domain
variation, without assuming an operator derivative on a common square domain.

For a fixed positive time and a finite set of modes, add the angular form
vertices to the orbit vertices in the resolvent/Duhamel identity, including
both orders of the first-vertex pair and the entire mixed vertex. Passage to
an infinite angular tower needs a separate summability argument because the
coefficients grow as mu and mu²; differentiation under the common regulator,
physical density/contact normalization, and the small-time tangent
subtraction also require proof. A possible cancellation between opposite
mu sectors must be proved for the actual multiplicities and domain, not
assumed from oddness of an isolated vertex.

No numerical calculation is needed for these algebraic derivatives.
Physical spin/bundle identification and the real family hypotheses remain
open; this note establishes neither the curved remainder nor novelty.

Remaining to-do list: prove the angular-sector summation and physical
subtraction with all vertices, complete the physical-domain and novelty
audits, prepare the manuscript, and certify supported claims in Lean on GCP.

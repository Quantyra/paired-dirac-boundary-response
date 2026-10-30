# Constant Weyl diagnostic for angular heat factors

This is an exact fixed-positive-time normalization test for the full product
operator. It sharpens `full-weyl-angular-mode-correction.md`; it does not
claim that a constant direction satisfies the paper's cubic boundary class,
that the source's full action uses this unnormalized trace, or that the
physical curved regulator or Lean certification is established.

Let P be a closed product-frame first-order operator with positive square
L=P*P, and suppose its heat trace factors at the unvaried seed as

  H(t)=Tr exp(-tL)=T(t) Theta(t),                         (1)

on the declared compact finite-cut model and angular sector. All included
multiplicities belong in Theta; any physical-half, time-reduction or copy
factor must be applied consistently to the whole expression. Assume the
factorization and differentiation hypotheses of
`product-sphere-mixed-response.md`.

For a spatially constant scalar b, congruencing the *whole* first-order
operator gives P_b=exp(-b)P, with unchanged first-order and square domains,
so L_b=exp(-2b)L. For constant directions u,w, boundedness and trace-norm
heat differentiability at t>0 imply

  partial_u partial_w Tr exp(-t L_b)|_(b=0)
    =4 u w [t H'(t)+t^2 H''(t)].                        (2)

Indeed for x=t exp(-2b), dx/db=-2x and d^2x/db^2=4x. This calculation
retains the entire mixed second variation, including all second vertices;
it is not a calculation of only the two first insertions.

If instead only the orbit square is rescaled and the angular square remains
fixed, the heat trace is Theta(t)T(t exp(-2b)); its mixed constant-direction
response is 4uw Theta(t)[t T'(t)+t^2 T''(t)]. The difference from (2) is
exactly

  4 u w [t Theta'(t) T(t)+t^2 Theta''(t) T(t)
                   +2 t^2 Theta'(t) T'(t)].              (3)

All derivatives of the angular factor appear from the full congruence.
For a single orbit eigenvalue lambda>=0 and nonzero angular eigenvalue mu,
the difference becomes

  4 u w t mu^2 [t(2lambda+mu^2)-1]
                     exp[-t(lambda+mu^2)].               (4)

This is nonzero for generic positive t, so the two differentiated families
cannot be identified as general heat-trace identities even in this simplest
constant model. Particular sectors or times can of course cancel, and a
sum of such terms needs its own spectral and normalization analysis.

Equations (2)--(4) are a consistency check on the full angular vertex
inventory, not a claim that the difference equals the endpoint contact
conversion in `tangent-regulator-normalization.md`. The latter is a
separately defined observable with its own Theta-prime contact, local
restorations and normalization. In particular the constant diagnostic does
not justify adding that conversion contact to (2), nor does it establish the
original physical cut, bolt, density or common regulator.

Remaining to-do list: match the product-frame/source observable and full
angular vertices, establish the curved subtraction and physical domains,
finish novelty and manuscript, and certify supported claims in Lean on GCP.
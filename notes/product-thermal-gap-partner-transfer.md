# Partner transfer of the product-frame thermal gap

This supplements `rn-product-lapse-uniform-lower-bound.md` under the paired
closed-domain hypotheses in `paired-partner-chirality-conversion-bridge.md`.
It gives a product-frame model result; the global physical pullbacks and
transported infinity boundary remain to be verified.

Let D be a closed densely defined paired first-order realization, and let
J and G_tau be bounded self-adjoint unitary involutions with J G_tau=G_tau J.
Assume the closed-operator identity

  D*=-J D J,                                                   (1)

including its domain, and define P=G_tau D on Dom D. Put K=J G_tau. Then K is
a self-adjoint unitary involution, and the bounded-unitary adjoint rule gives

  P*=D* G_tau=-J D J G_tau=-K P K.                             (2)

Equality in (2) includes the adjoint domain: both rightmost factors are
bounded and the domain of K P K is {x:Kx in Dom P}. The signs cancel on
composition, yielding the equality of actual positive squares

  P P*=K(P*P)K,                                                 (3)

with their composition domains carried into each other by K. This follows
by inserting (2) and K^2=1, or by checking that x is in Dom(P P*) exactly
when Kx is in Dom(P*P). Thus any form lower bound P*P>=g^2 transfers with
the same constant to P P*. The heat semigroups are likewise related by
unitary conjugation for t>0; a scalar insertion has equal partner traces
only if it commutes with K and the traces exist.

In the local matrices recorded in the partner/chirality note,
J=tau_1 tensor sigma_1 and G_tau=-tau_3 tensor sigma_3 commute: both tensor
factors anticommute separately. Their product is therefore a self-adjoint
unitary involution. If these matrices extend to the global parallel maps and
closed domains assumed in (1), and if P is the same unitary fixed thermal
mode as in `euclidean-canonical-unitary-half-density.md`, the conditional
product-frame thermal bound from `rn-product-lapse-uniform-lower-bound.md`
transfers to both square partners with the same cut-independent constant.
This conclusion needs the mode restrictions to be invariant under K or the
corresponding paired sector to be carried to its partner; the local matrix
calculation alone does not establish that global fact.

The transfer is for real unperturbed operators. A uniform complex-parameter
gap, trace-class prefactors, physical congruence and upper-time limit require
additional estimates. In particular, the physical/product conformal factor
can still make the available gap bound deteriorate with the cut. No Lean
certificate is claimed for (2)--(3), and no numerical calculation is used.

Remaining to-do list: verify global partner and mode-domain identification,
obtain the physical mixed-response and regulator bounds, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.

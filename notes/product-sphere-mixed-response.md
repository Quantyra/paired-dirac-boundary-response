# Product-sphere separation with complementary paired domains

This corrects the earlier skew-adjoint orbit model at commit 0371a4e: the source's paired first-order orbit operator has complementary adjoint domains, and orbit chirality exchanges them. The calculation below uses those actual domain relationships. It remains conditional on the global physical bundle identification and the product-domain realization in [the pinned conformal-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md).

Let D_b be a closed densely defined orbit operator on V, with adjoint domain V*, and let Gamma be a bounded self-adjoint involution such that

    Gamma V=V*,             D_b* Gamma psi=Gamma D_b psi (psi in V).  (1)

For the source's formally skew Dirac expression, Gamma=i gamma_n gamma_tau anticommutes with the bulk expression and with the boundary involution chi. Thus it exchanges the two projector trace spaces and (1) follows if those are the actual H1 domains. Scalar conformal multipliers commute with Gamma, so the same relation holds for the congruence D_b when their action preserves both domains. These geometric and domain hypotheses must still be established for the physical realization.

Let B be the self-adjoint sphere Dirac operator divided by the fixed sphere radius. For one eigenvalue mu define the orbit mode operator

    P_mu=D_b+i mu Gamma,       Dom(P_mu)=V.                    (2)

Bounded perturbation gives P_mu*=D_b*−i mu Gamma with domain V*. Since Gamma maps V into V*, the condition P_mu psi in V* is equivalent to D_b psi in V*. Hence

    Dom(P_mu* P_mu)=Dom(D_b*D_b),
    P_mu*P_mu=D_b*D_b+mu²                                    (3)

on that domain. Indeed the cross term is i mu (D_b* Gamma−Gamma D_b)=0 by (1). This proof retains the complementary adjoint domain rather than assuming D_b is skew-adjoint or that Gamma preserves V. It also does not assume a common square domain across different b: (3) compares the two squares at the same b.

Assume the actual product-frame first-order operator is the orthogonal direct sum of these mode operators, with the declared spin/magnetic and boundary identifications. Then its positive square is the direct sum of (3), equivalently the self-adjoint tensor sum L_b tensor 1+1 tensor B². This is an explicit remaining physical realization hypothesis; equality of formal expressions alone does not establish it. For each t>0 the associated heat semigroup factors. For a sector I with finite sphere heat trace Theta_I(t), and trace-class orbit mixed derivatives as in [the paired positive-time result](paired-positive-time-mixed-identity.md),

    partial_u partial_w Tr_I exp(−t P_b*P_b)
      = Theta_I(t) partial_u partial_w Tr_o exp(−t L_b).       (4)

The radius, angular connection, sectors and multiplicities are fixed in (4). All included angular modes are summed through Theta_I; the zero sector and source's per-exterior/time normalization must be allocated separately. If these angular data vary, their derivatives contribute. The distinct endpoint conversion contains a Theta' contact and is not removed by (4).

This establishes the mode-square algebra and its domain consequence under (1)–(2), correcting the earlier inappropriate physical-domain assumption. It does not prove the global product decomposition, physical spin/copy map, common-regulator limit or a Lean certificate. The canonical Hamiltonian trace already contains angular eigenvalues and cannot be multiplied by an extra Theta without a separate derivation.

Remaining to-do list: verify the source's global product and complementary domains, match normalization and all physical response vertices, complete novelty and manuscript, and certify supported claims in Lean on GCP.

# Rough half-cylinder adjoint via the paired partner

This extends `smooth-capped-half-cylinder-adjoint-domain.md` to the stipulated Lipschitz coefficient using the source's constant copy-exchanging partner. It is a first-order domain argument on the auxiliary cylinder; it does not prove the global physical bundle or bolt identification.

Let f be real W1,infinity on the half-line, with 0<m<=f<=M, and let D_f=gamma_y partial_y+gamma_tau f partial_tau on V_plus={psi in H1: Pi_minus trace psi=0}, with the fixed thermal spin structure. Let J0 be a constant unitary self-adjoint involution which commutes with both Clifford matrices and anticommutes with the boundary involution C. In the source representation J0=tau_1 tensor sigma_1 satisfies these identities. It maps V_plus unitarily onto V_minus={psi in H1: Pi_plus trace psi=0}.

Choose a smooth positive f0 with the same uniform lower bound up to a fixed factor, bounded first derivative, and ||f-f0||_infinity as small as desired; for example, extend the Lipschitz function and mollify it. Let D_0 be the corresponding plus-domain operator. The smooth-cap adjoint result gives D_0*=-J0 D_0 J0, so Q0=J0 D_0 is skew-adjoint on V_plus. Its graph estimate from `local-paired-projector-graph-closure.md` is uniform when the lower bound, upper bound and ||f0'||_infinity are uniformly controlled:

  ||partial_tau psi|| <= C (||Q0 psi||+||psi||).          (1)

Define B=J0 gamma_tau (f-f0) partial_tau on V_plus. Since J0 and gamma_tau are commuting Hermitian matrices, their product is Hermitian; the real coefficient depends only on y, and integration by parts in the periodic or antiperiodic tau variable shows B is skew-symmetric on V_plus. By (1),

  ||B psi|| <= C ||f-f0||_infinity (||Q0 psi||+||psi||). (2)

Choose f0 so the relative coefficient is strictly less than one. The [Kato--Rellich theorem](https://arxiv.org/abs/1604.00293), applied to the self-adjoint operator iQ0 and symmetric perturbation iB, implies i(Q0+B) is self-adjoint on V_plus. Hence Q_f=J0 D_f=Q0+B is skew-adjoint on that exact domain. This argument proves equality of first-order domains directly; it does not infer them from convergence of squares.

Taking adjoints of Q_f=J0 D_f and using J0²=1 yields

  D_f*=-J0 D_f J0,
  Dom(D_f*)=J0 V_plus=V_minus.                              (3)

The action on that domain is the distributional -D_f, because J0 commutes with both Clifford matrices and the scalar f. Thus the rough auxiliary half-cylinder has exactly the complementary H1 adjoint domain. The graph closure and form identification from the preceding notes apply with the same coefficient hypotheses.

The result relies on a globally defined constant J0 commuting with the full local operator; extra copy-mixing connections, nonidentical copies or varying projectors require a new argument. Establishing the physical spin/magnetic bundle transitions, regular bolt domain, and gluing to the auxiliary cap remains separate. No Lean certification is claimed.

Remaining to-do list: verify global physical domain and gluing, control the complete response and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
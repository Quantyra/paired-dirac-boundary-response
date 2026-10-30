# Paired positive-time heat variation and partner factor

This derives the source's density-inclusive first-variation identity under explicit compact finite-cut operator hypotheses. It complements [the mixed form identity](mixed-form-resolvent-identity.md) and the [fiber normalization audit](flat-orbit-fiber-normalization.md). It does not independently establish that the physical seed satisfies these hypotheses, or prove a short-time remainder or Lean certificate.

Let D be closed and densely defined on a fixed Hilbert space with L=D*D and Lbar=DD*. Assume compactness and positive-time heat smoothing sufficient that the following heat traces and products are trace class; in particular D exp(−tL/2) is Hilbert–Schmidt for t>0. Let J be a fixed unitary involution satisfying the closed-operator identity D*=−JDJ. Let u be a real bounded scalar multiplier preserving Dom(D) and Dom(D*) and commuting with J. Define D_s=exp(−su/2) D exp(−su/2) on the common first-order domain and L_s=D_s*D_s on its actual composition domain. Assume the holomorphic form and trace-norm differentiability hypotheses established conditionally in [the compact paired argument](paired-positive-time-trace-derivatives.md).

The fixed-Hilbert-space first-order vertex is

    dot D=−(uD+Du)/2.

With q_s the form of L_s, differentiating its two factors gives the first heat-trace variation

    d/ds Tr(exp(−t L_s))|_0
       = −t Tr[dot L exp(−tL)],                            (1)

where the right side denotes the trace of the form derivative paired with heat smoothing, rather than an assumed bounded operator dot L. It can be obtained from the form-resolvent contour, or from a smooth-core Duhamel approximation under the stated trace convergence. Cyclicity of the trace-class smoothed products gives

    Tr[dot L exp(−tL)]
      = −Tr[u L exp(−tL)] − Tr[u Lbar exp(−t Lbar)].       (2)

Indeed, expanding dot D*D+D*dot D yields two terms involving D* u D and one each involving L u and u L. The latter have the same trace after heat smoothing. For the former, the polar decomposition intertwines D exp(−tL) D* with Lbar exp(−t Lbar); the expression is trace class because the two half-heat factors with D are Hilbert–Schmidt. This also handles zero modes: the factor Lbar annihilates them.

The closed partner identity implies Lbar=J L J including domains. Since [u,J]=0,

    Tr[u Lbar exp(−t Lbar)] = Tr[u L exp(−tL)].            (3)

Combining (1)–(3) and differentiating the positive-time heat trace gives

    d/ds Tr(exp(−t L_s))|_0
       = 2t Tr[u L exp(−tL)]
       = −2t partial_t Tr[u exp(−tL)].                     (4)

The factor two in (4) comes from the two partner squares. It is not a copy-count, angular-degeneracy or per-exterior factor. A fixed scalar normalization of both traces preserves (4); the rank-two physical-half convention must still be identified with the actual source observable. If u or the trace density changes with the parameter, its separate derivative must be added. Equation (4) is a fixed positive-time identity and does not interchange a regulator limit or prove the mixed tangent coefficient.

The trace-class assumptions hold for the intended compact elliptic model only after its H1 projector domains and graph/heat estimates are verified. The formula also assumes the displayed closed partner identity, not just its local matrix algebra. No physical global matching, nonlinear family, curved response or stability result follows.

Remaining to-do list: verify the physical seed and per-exterior normalization, differentiate (4) for the exact mixed observable with all moving terms, prove the tangent/curved regulator bridge, complete novelty and manuscript, and certify supported claims in Lean on GCP.

# Trace-class grading cancellation for the source commutator

This supplies the trace-class and domain step behind the grading-odd term in `graded-mass-conversion-positive-cut.md`, for the stipulated compact product-orbit realization. It is an ordinary infinite-dimensional argument; the separate finite-matrix Lean draft is not a certification of this result.

Let Q be a densely defined skew-adjoint operator, L=Q*Q, and Gamma a unitary involution with Gamma Dom Q=Dom Q and Gamma Q Gamma=-Q on that domain. Let U,V be bounded scalar multipliers commuting with Gamma. Assume V preserves Dom Q and B=[V,Q], initially defined on Dom Q, extends to a bounded operator. Assume K_t=exp(-tL) is trace class for every t>0.

The domain identity gives Gamma L Gamma=L as self-adjoint operators, including the natural square domain. Functional calculus therefore gives Gamma K_t Gamma=K_t. Moreover Gamma V Gamma=V and Gamma Q Gamma=-Q on Dom Q imply Gamma B Gamma=-B on the dense domain, and hence as bounded operators. For 0<s<t put

  T_s=U K_(t-s) B K_s.                                       (1)

T_s is trace class: at least one of K_s,K_(t-s) has time >=t/2 and hence is trace class, while the remaining factors are bounded. In particular,

  ||T_s||_1 <= ||U|| ||B|| Tr K_(t/2),   0<s<t,              (2)

because L>=0 and Tr K_a<=Tr K_(t/2) for a>=t/2. This bound includes both time endpoints as limits. The same reasoning shows trace-norm continuity on (0,t), and continuity to the endpoints follows by multiplying a fixed trace-class long-time factor by the strongly convergent short-time heat factors.

Conjugation by Gamma sends T_s to -T_s. Trace invariance under bounded unitary conjugation therefore yields

  Tr[U K_(t-s) [V,Q] K_s]=0,  0<s<t.                         (3)

The bounded extension B is the operator in the trace. Equation (2) permits integrating the zero term over the complete time interval without imposing an additional endpoint integrability assumption. The argument also works for the finite zero mode, when present; it does not discard that sector.

For the source interpolation at the product seed, the derivative vertex in `graded-mass-conversion-positive-cut.md` contains (1-r)M[V,Q]. Under the stated domain and grading hypotheses, its scalar-smeared Duhamel contribution vanishes exactly, and the other geometric and contact vertices remain. This is not an assertion that the commutator itself vanishes, that a non-grading-invariant insertion has zero trace, or that the same cancellation holds away from the seed. The physical grading and bundle, first-order domains, trace normalization, full common-regulator limit and the ordinary geometric terms still require their separate proofs. No numerical computation or Lean certification is claimed.

Remaining to-do list: verify the physical grading and domains, complete the mixed source and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
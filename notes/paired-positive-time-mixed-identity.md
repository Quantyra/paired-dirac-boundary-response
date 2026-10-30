# Positive-time paired mixed response from fixed-domain forms

This extends [the paired first-variation identity](paired-positive-time-variation-identity.md) to the mixed derivative on a fixed compact seed. It justifies the stated identity at positive time under the hypotheses below; it does not identify the physical tangent or establish a uniform short-time bound.

Let D, J, u satisfy the hypotheses of the first-variation note. Let w be another real bounded W1,infinity scalar multiplier preserving both first-order domains and commuting with J. Assume the common compact H1 elliptic graph, form-holomorphy and trace-class heat hypotheses of [the paired positive-time argument](paired-positive-time-trace-derivatives.md), uniformly on a sufficiently small parameter neighborhood. Set

    D_r=exp(−r w/2) D exp(−r w/2),    L_r=D_r*D_r,
    K(r,t)=Tr(exp(−t L_r)),          T_u(r,t)=Tr[u exp(−t L_r)].

The square has its composition domain for each r. Because the scalar multipliers commute with J and preserve the complementary first-order domains, D_r*=−J D_r J as a closed identity. The first-variation proof therefore applies at every sufficiently small real r, with u fixed in the fixed Hilbert-space identification:

    partial_s K_u(s,r,t)|_(s=0) = −2t partial_t T_u(r,t),      (1)

where K_u uses the further scalar congruence in direction u. For each fixed t>0, the compact form theorem gives trace-norm holomorphy in the two parameters. Analytic semigroup estimates and the same Schatten factorization give trace-norm holomorphy in t on a small complex neighborhood of each positive real t, locally uniform in the parameter polydisc. Cauchy's formula then permits the parameter derivative to pass through partial_t. Thus

    partial_r partial_s K_u(s,r,t)|_(s=r=0)
       = −2t partial_t [partial_r T_u(r,t)|_(r=0)].          (2)

Equality of mixed derivatives follows from the same two-variable holomorphy. Equation (2) includes the mixed second vertex through differentiation of the entire heat operator; it is not an instruction to keep only two first-vertex insertions. Its explicit form-resolvent inventory is given in [the mixed vertex note](mixed-form-resolvent-identity.md).

The insertion u and trace density are fixed in (1)–(2). If a physical parametrization moves either, their derivatives must be added before identifying its observable with this formula. Multiplying both sides by a fixed per-exterior normalization does not change the identity. The source's stated rank-two physical-half trace is a convention to be matched to the actual folded bundle and angular sectors; (2) does not supply that match.

The result holds for each positive t and locally uniformly away from zero. It does not bound partial_t uniformly as t approaches zero, justify summing a separately decomposed angular or thermal tower, or commute a physical common-regulator limit. The global physical domain, the closed J identity, and identification of the fixed Hilbert space remain hypotheses rather than consequences of this note. No numerical or Lean certification is claimed.

Remaining to-do list: establish those physical hypotheses and moving terms, match the tangent subtraction, prove the uniform curved remainder, complete novelty and manuscript, and certify supported claims in Lean on GCP.

# Mass-weighted coercivity for the conversion family

This strengthens `conversion-moving-cut-form-fixed-mass.md` at real fields.
The result supplies a mass-uniform form norm for the stipulated compact
model; it does not by itself prove a complex heat estimate or perform an
angular sum.

Let Q_delta be skew-adjoint on the common domain V, with the uniform graph
estimate

  ||v||_V <= G (||Q_delta v||+||v||),                          (1)

and let real b_delta have uniformly bounded W1,infinity norm. Assume the
multipliers exp(+-r b_delta/2) preserve V and have uniformly bounded
commutators with Q_delta, uniformly for r in [0,1] and the regulator.
Write E=exp(-r b_delta/2), F=exp(b_delta), and A=E(Q_delta+MF)E,
where M>=1. All scalar bounds below are uniform in delta, r, M and the
stated real-field family.

Set y=Ev. Since Q_delta is skew-adjoint and F>=exp(-B)>0,

  ||(Q_delta+MF)y|| >= M exp(-B)||y||.                         (2)

The same estimate holds for the adjoint, so the middle operator is
onto and ||A^(-1)||<=C/M, as in
`graded-conversion-regulated-endpoints.md`. In particular,

  M||v|| <= C||Av||.                                           (3)

Also Q_delta y=E^(-1)Av-MFy, hence

  ||Q_delta y|| <= C(||Av||+M||v||) <= C'||Av||.              (4)

The product rule Q_delta(Ev)=E Q_delta v+[Q_delta,E]v and the bounded
commutator give ||Q_delta v||<=C(||Q_delta y||+||v||). Together with
(1), (3) and (4), this gives

  ||v||_V+M||v|| <= C_* ||Av||,                 M>=1.          (5)

Conversely, bounded scalar multipliers and commutators show
||Av||<=C_*(||v||_V+M||v||). Thus the natural form norm
||v||_(V,M)=||v||_V+M||v|| is uniformly equivalent to ||Av||. In
particular A* A >= c M^2 as a quadratic-form inequality, with a single
positive c. This is a model spectral bound, not a physical admission margin.

Under the W1,infinity O(delta) comparison hypotheses of the fixed-mass
note, a factor-by-factor expansion improves its estimate to

  ||(A_delta-A_0)v|| <= C delta ||v||_(V,M),                   (6)
  |q_delta(v,h)-q_0(v,h)|
       <= C delta ||v||_(V,M)||h||_(V,M),                      (7)

where q is the real positive form and constants are uniform in M>=1.
The first-order difference contributes C delta||v||_V, while the scalar
mass difference contributes C delta M||v||; neither requires a factor M
in front of the V part. The same expansion works on a bounded complex
parameter polydisc, but (5) was proved only at real parameters. To use
Cauchy estimates one must additionally prove a common complex sectorial
neighborhood with the mass gap and suitable heat bounds; (7) alone is not
that proof.

The M=0 sector is excluded and must be treated separately. The actual
product and physical-domain identification, angular degeneracies, uniform
field convergence, heat trace comparison, counterterms and regulator limits
remain open. No numerical calculation or Lean certification is claimed.

Remaining to-do list: prove the complex mass-uniform heat and angular bounds,
match the physical conversion and curved response, complete the novelty audit
and manuscript, and certify supported claims in Lean on GCP.

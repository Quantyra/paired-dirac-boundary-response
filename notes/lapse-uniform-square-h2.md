# Uniform H2 estimate for the multiplicative lapse comparator

This proves the regularity implication left conditional in
`orbit-diagonal-from-h2.md` for the special comparator P_ell=F_ell A. It
uses explicit first-order-domain and seed-regularity hypotheses, which still
must be matched to the physical paired geometry. It is not a theorem about
the different congruence E D E, the full response, or Lean certification.

Let A be closed and densely defined on L² sections of a fixed compact
smooth surface with boundary. Suppose

* Dom(A*) is the H¹ space with a fixed fiberwise projector trace condition;
* real W1,infinity scalar multipliers and their bounded W1,infinity inverses
  preserve Dom(A*), and the weak product rule satisfies
  ||[A*,m]v||_2 <= C_A ||dm||_infinity ||v||_2;
* L0=F0² A* A has Dom(L0) contained in H² and obeys
  ||u||_(H²) <= C0 (||L0 u||_2+||u||_2).

Let m_ell=F_ell² be real W1,infinity scalar multipliers with uniform bounds
0<m_*<=m_ell<=m^* and ||dm_ell||_infinity<=M, and define
L_ell=(F_ell A)*(F_ell A). Since F_ell is bounded and self-adjoint,
(F_ell A)*=A* F_ell. Hence the actual composition domain is

    Dom(L_ell)={u in Dom(A): m_ell Au in Dom(A*)}.          (1)

The multiplier and inverse preservation in the first hypothesis prove

    Dom(L_ell)=Dom(A* A)=Dom(L0).                           (2)

This is a proved property of this one-sided multiplier construction, not an
assumption that square domains remain fixed under arbitrary metric variation.
For u in this common domain the product rule gives

    L_ell u = m_ell A* A u + [A*,m_ell] Au.                (3)

Consequently, using (3), the multiplier lower bound and the commutator bound,

    ||L0 u||_2 <= (F0²/m_*) [||L_ell u||_2
                                + C_A M ||Au||_2].          (4)

The positive form of L_ell satisfies

    m_* ||Au||_2² <= <L_ell u,u>
                     <= ||L_ell u||_2 ||u||_2.              (5)

By the arithmetic-geometric mean, ||Au||_2 is bounded by a fixed multiple
of ||L_ell u||_2+||u||_2, uniformly in ell. Combining (4)--(5) with the
seed H² estimate yields

    ||u||_(H²) <= C (||L_ell u||_2+||u||_2),               (6)

with C independent of ell. The same conclusion includes L0. Thus, under
these hypotheses and a heat-kernel representation, the interpolation and
spectral-calculus argument in `orbit-diagonal-from-h2.md` supplies the
uniform t^(-1) diagonal bound, and hence the auxiliary localized volume
gain. For the constructed cutoff, the recorded uniform lower bound and
||dF_ell||_infinity=O(ell) give uniform m_*,m^*,M on the fixed seed.

The first unsupported inputs are the actual complementary H¹ realization,
the first-order product rule with uniform coefficient constant, and the
seed square H² estimate on the specified compact orbit. These are not
inferred merely from a formal boundary projector. The physical-to-auxiliary
collar comparison, fixed-direction complement, mixed vertices, regulator and
angular normalization remain separate. No numerical calculation is used.

Remaining to-do list: verify the seed and physical domain hypotheses, prove
locality and the mixed response, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
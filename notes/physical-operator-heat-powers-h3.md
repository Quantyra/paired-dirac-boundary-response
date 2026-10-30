# Weighted operator heat powers from H3 smoothing

This extends `physical-dirac-heat-h3-factor.md` to the specific L K_s factor
in `physical-ordered-vertices-positive-time.md`. It is a fixed-positive-time
estimate for the stipulated finite-cut model; it does not prove the full
ordered-vertex trace, spatial Hessian estimates, or Lean certification.

Use the closed partner identity D*=-JDJ, Q=JD skew-adjoint and L=-Q^2,
with J a fiberwise unitary involution. Assume the uniform point-evaluation
bound from `physical-contact-h3-literature-closure.md`:

  ||evaluation_x K_r|| <= C(1+r^(-3/2)),  r>0.            (1)

All constants below are uniform in the finite cut, field approximant and
physical chart under that note's fixed-seed hypotheses. For any integer
m>=0, spectral calculus gives

  ||L^m K_(s/2)|| <= C_m s^(-m),
  ||Q L^m K_(s/2)|| <= C_m s^(-m-1/2),                  (2)

for s>0, with C_m depending only on m. Since K commutes with Q and L,

  L^m K_s = K_(s/2) L^m K_(s/2),
  D L^m K_s = J K_(s/2) Q L^m K_(s/2).                  (3)

These are bounded-operator identities; their products map into the natural
unbounded-operator domains by heat smoothing. Taking point evaluations and
using the pointwise unitarity of J gives

  ||evaluation_x L^m K_s||
      <= C_m s^(-m)(1+s^(-3/2)),
  ||evaluation_x D L^m K_s||
      <= C_m s^(-m-1/2)(1+s^(-3/2)).                    (4)

For finite fiber rank, the corresponding pointwise squared row norms are
bounded by a fixed rank factor times the squares of these estimates. Hence,
for every scalar a in physical L2,

  ||M_a L^m K_s||_2 <= C_m s^(-m)(1+s^(-3/2)) ||a||_2,
  ||M_a D L^m K_s||_2
      <= C_m s^(-m-1/2)(1+s^(-3/2)) ||a||_2.           (5)

Matrix weights obey the same estimates with their fiber operator norm in
L2. Taking adjoints gives the corresponding right-weighted factors; the
order of unbounded operators is retained in those adjoints.

In particular, for r in [t/2,t] and fixed t>0, (5) controls both long
factors M_w L K_(r/2) and K_(r/2) D* M_u appearing in the scalar
principal-vertex example of the ordered-response argument, by a constant
C_t ||w||_2 and C_t ||u||_2 respectively. This removes the need to assume
a full pointwise spatial Hessian bound merely to bound those two factors.
It does not justify the intervening derivative transfer at a finite cut:
the Green boundary term in `ordered-vertex-finite-cut-boundary-term.md`
remains. Nor does (5) bound arbitrary covariant gradient or Hessian kernels;
the noncommuting Clifford-multiplier terms and their product rules require
separate analysis. The bounds deteriorate as s approaches zero and do not
supply the small-time subtracted remainder or common regulator.

Remaining to-do list: control the remaining ordered terms and boundary Green
factor, verify physical partner/source matching, finish the novelty audit
and manuscript, and certify supported claims in Lean on GCP.
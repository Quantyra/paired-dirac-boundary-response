# First-form vertices paired with a finite-cut boundary form

This extends `finite-cut-principal-boundary-ordered-term.md` to all three
first-form vertex types in `physical-ordered-vertices-positive-time.md`.
The conclusion is conditional on the stated uniform estimates and on the
identification of a particular Green contribution with the boundary form;
it is not a full physical regulator theorem.

Let D, L=D*D, K_s, gamma, and Q_h be as in the principal-vertex note. Let
A, B, C be bounded matrix-valued bulk multipliers with finite physical L2
norm, with all products acting between the appropriate Dirac bundles. Define
form vertices on Dom D by

  V_A(f,g)=<Df,A Dg>, V_B(f,g)=<Df,Bg>,
  V_C(f,g)=<Cf,Dg>.                                    (1)

Assume uniform first-order graph and multiplicative trace estimates, smooth
heat kernels, and for tau in [t/4,t/2] uniform diagonal bounds implying

  ||M_h gamma K_tau||_2 <= C_t ||h||_2,
  ||M_F K_tau||_2 + ||M_F D K_tau||_2 <= C_t ||F||_2 (2)

for the coefficient matrices F, and the corresponding adjoint bounds.
These are assumptions for the actual moving-cut realization, not proved here.

For 0<s<=t/2, r=t-s, the boundary traces of the heat-smoothed pairings
factor as follows (gamma* is interpreted by the bounded extensions):

  T_A = Tr[(M_h gamma K_(r/2))(K_(r/2) D* M_A)
                                            (D K_s gamma*)],
  T_B = Tr[(M_h gamma K_(r/2))(K_(r/2) D* M_B)
                                              (K_s gamma*)],
  T_C = Tr[(M_h gamma K_(r/2))(K_(r/2) M_C)
                                            (D K_s gamma*)].          (3)

The trace is over the boundary Hilbert space. The first two factors in each
line are Hilbert--Schmidt by (2), including the relevant coefficient adjoints.
The graph and trace inequalities give

  ||K_s gamma*|| <= C_t s^(-1/4),
  ||D K_s gamma*|| <= C_t s^(-3/4).                  (4)

The first follows from ||K_s||<=1, ||D K_s||<=C s^(-1/2) and the
multiplicative trace estimate; the second is proved in the principal-vertex
note. Schatten Holder yields

  |T_A|+|T_C| <= C_t s^(-3/4)||h||_2 (||A||_2+||C||_2),
  |T_B| <= C_t s^(-1/4)||h||_2 ||B||_2.             (5)

These formulas also apply to the adjoint coefficient matrices. For the other
half of the time interval, taking the adjoint and cyclically exchanging the
insertions replaces each vertex with its adjoint (A*, and B/C exchanged)
and exchanges s with t-s. Both exponents in (5) are integrable, so the
integral over 0<s<t is bounded by

  C_t ||h||_2 (||A||_2+||B||_2+||C||_2).            (6)

For radial cubic/log fields with the physical norms used in the cited
positive-time note, the coefficient L2 norms are bounded by the field and
first-derivative L2 norms, with bounded base multipliers. For the radial
Green coefficient h=E_b^4 partial_n w on u=delta, the prior boundary audit
supplies ||h||_2=O(delta^(3/2)). Under uniform hypotheses, (6) therefore
vanishes at that rate for each fixed positive t. Matrix boundary coefficients
obey the same argument when their operator norm has that L2 bound.

This accounts for the three listed first-form vertex types against an
independently specified Q_h. It does not show that every boundary term from
the actual ordered derivative transfer is Q_h, prove its sign or matrix
projection, establish the required uniform estimates, or control the t->0
subtracted integral. Density, second vertices, source matching and the common
regulator remain separate obligations. No numerical calculation or Lean
certificate is claimed.

Remaining to-do list: derive the complete physical Green insertions, prove
the uniform analytic assumptions and regulator matching, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
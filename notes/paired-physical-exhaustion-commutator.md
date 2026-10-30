# Fixed-time commutator limit for a paired physical exhaustion model

This assembles `complete-lipschitz-domain-product-rule.md`,
`paired-core-strong-heat-factors.md` and
`changing-family-heat-commutator.md` on the specified zero-angle common
bundle. It is conditional on the displayed geometric, operator and field
hypotheses; it does not identify the source's infinity boundary condition or
prove the complete mixed response.

Let X be the complete smooth fixed RN seed with its regular bolt, as in
`rn-physical-metric-completeness.md`, and H=L2(X,E) for the common doubled
spin/twisting bundle. Assume the global parallel unitary involution J and
smooth paired first-order seed D_0 satisfy the closed partner and symbol
hypotheses of `complete-physical-paired-core.md`. Let beta be a real
W1,infinity field and put D_beta=E_beta D_0 E_beta. By
`complete-lipschitz-domain-product-rule.md` and
`rough-paired-core-congruence.md`, A=i J D_beta is self-adjoint and
C_c^infinity(X,E) is a graph core.

Let X_n be smooth finite outer cuts exhausting X. On each X_n assume the
zero-angle H1 projector realization and its complementary adjoint are those
of `finite-cut-elliptic-domain-bridge.md`, with the restriction of the same
parallel J. Let beta_n be real W1,infinity, with a common global bound on
beta_n and its first derivative, and suppose beta_n->beta in W1,infinity on
every compact subset after the prescribed identifications. Define the
finite-cut D_n by the same scalar congruence and extend D_n by the zero
operator on L2(X\X_n). Let J act on both the cut and complement. Since J is
fiberwise and commutes with the cut projection, D_n*=-J D_n J holds for the
direct sum when it holds on the cut. Thus A_n=i J D_n is self-adjoint.

For any phi in C_c^infinity, its support lies inside X_n for large n. The
weak product rule and local W1,infinity convergence give

  A_n phi -> A phi in H.                                       (1)

The paired-core argument therefore gives strong resolvent convergence and,
for every fixed s>0, strong convergence of K_n(s), D_n K_n(s), and their
adjoints. Here K_n(s)=exp(-s D_n*D_n) includes the identity on the complement.
The zero-extended finite-cut heat semigroup instead omits that identity;
the two differ by the complement projection, which tends strongly to zero.
The distinction is retained rather than calling the zero extension a
semigroup with identity at time zero on H.

Let b=log(b_sphere/r) on the fixed physical exterior and choose smooth
bounded truncations b_n=theta_n(b), with |theta_n'|<=1 and theta_n'(x)->1.
The scalar b_n preserves each local H1 projector domain. The fixed-seed
bound on |db|_g and the common beta_n bounds give uniformly bounded
C_n=[D_n,b_n], extended by zero on the complement. Local convergence of
beta_n, pointwise convergence of theta_n'(b), and exhaustion give strong
convergence of C_n and C_n* to the corresponding bounded physical
commutator C and C*. This uses the explicitly assumed common bundle and
local Clifford maps, plus dominated convergence; no bound on ||b_n|| is
needed. The changing-family lemma now yields, at each fixed t>0, strong
convergence of b_n K_n(t)-K_n(t)b_n to its bounded form-integral limit.
If X_n,Y_n are independently shown to converge in Hilbert--Schmidt norm,
their sandwiches with this commutator converge in trace norm.

This conclusion applies to the stipulated local-cut exhaustion. It does
not show that its finite-cut projector is the transported physical infinity
condition, prove the actual source's global copy/monopole maps, or supply the
Hilbert--Schmidt vertex factors, boundary terms, uniform small-time bounds,
normalization or common regulator. The complement construction also does
not assert convergence of unlocalized heat traces. No numerical or Lean
certificate is claimed.

Remaining to-do list: verify the physical bundle and boundary matching,
complete the weighted mixed trace and regulator, resolve novelty, finish the
manuscript, and certify supported claims in Lean on GCP.

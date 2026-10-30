# Fixed-time convergence of one weighted bulk simplex sector

This combines `paired-physical-exhaustion-commutator.md`,
`finite-cut-bulk-interior-time-convergence.md` and
`conformal-commutator-long-middle-simplex.md`. It proves one fixed-time
model-sector limit under their common hypotheses; it is not the complete
physical mixed trace or a regulator theorem.

Use the zero-angle common-bundle local-cut exhaustion and bounded
conformal-log truncations b_n of the paired-exhaustion note. Let K_n(s)
be its direct-sum heat semigroup on H and K(s) the limiting heat semigroup.
Let V_(u,n),V_(w,n) be the Hermitian bulk form expressions, extended by
zero on the complementary space. Assume all of the H5 local smoothing,
weighted heat diagonal, field/direction convergence and chart-summation
hypotheses of `finite-cut-bulk-interior-time-convergence.md` hold uniformly
for this same exhaustion, and that the finite-cut form and boundary
separation are the ones used in `finite-cut-ordered-bulk-endpoints.md`.
In particular, for each fixed p>0,

  T_(v,n)(p)=V_(v,n) K_n(p) -> T_v(p)=V_v K(p) in S2,        (1)

for v=u,w. The complement part of K_n is harmless in (1) because the bulk
vertex is extended by zero there. Assume also the same smoothing estimates
supply a common constant C_t for p in [t/6,t/2] and uniform boundedness of
N(u_n),N(w_n), at a fixed t>0. This compact interval extension is an
explicit hypothesis of the long-middle note, not inferred merely from a
single-time bound.

For a,c>=0 and b_time=t-a-c>=t/3 define B_n(a)=b_n K_n(a)-K_n(a)b_n and

  E_n(a,c)=Tr[K_n(c) B_n(a) T_(u,n)(b_time/2)
                              T_(w,n)(b_time/2)*].             (2)

For a,c>0, the paired-exhaustion commutator result gives B_n(a)->B(a)
strongly and uniformly bounded; the heat operators K_n(c) converge strongly.
Equation (1) and its adjoint give S2 convergence of both vertex factors.
Products of uniformly bounded strongly convergent operators with convergent
S2 operators converge in S2; Schatten Holder then yields

  E_n(a,c)->Tr[K(c) B(a) T_u(b_time/2) T_w(b_time/2)*].       (3)

The measure-zero edges a=0 or c=0 need not be assigned limiting values.
Uniform commutator and vertex estimates give the integrable fixed-t majorant

  |E_n(a,c)| <= C c_b sqrt(a) C_t² N(u_n)N(w_n).              (4)

Consequently dominated convergence applies on the triangular sector
b_time>=t/3. The opposite ordering u<->w is analogous. This proves
convergence of this one commutator correction under the common model
hypotheses, including sources in the stated L2 direction class; it does not
require an L1 bound on the conformal-log times a single cubic direction.

The limit depends on the physical cut/bundle identification and H5/S2
hypotheses, which are not independently established here. The other simplex
sectors, boundary-form terms, mixed second vertex, partner traces and
normalization must still be assembled. C_t can diverge at t=0, so (3)--(4)
do not prove the P1-D remainder or interchange the common proper-time and
cut limits. No numerical or Lean certification is claimed.

Remaining to-do list: verify physical maps and uniform hypotheses, control
all remaining mixed sectors and regulator, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.

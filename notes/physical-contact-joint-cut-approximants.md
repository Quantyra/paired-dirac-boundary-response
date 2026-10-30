# Joint cut and field-approximant limit for the contact

This extends `physical-contact-positive-time-cut-limit.md` along a joint
sequence of physical cuts and field approximants. It is conditional on the
uniform boundary diagonals and local semigroup estimates cited below. It does
not remove the proper-time regulator or identify the physical trace density.

Fix t>0. Let X_j exhaust the complete physical seed X, and let K_(j,e,s)
be the zero-extended finite-cut heat semigroup for a real field b_e, with
K_(j,0,s) the finite-cut semigroup for the limiting real field b. Let K_s be
the complete-space semigroup for b. Assume the common-domain form estimates
and physical W1,infinity convergence b_e->b from
`physical-localized-variation-uniform-approximants.md`, including its
uniform positive-time operator-norm semigroup comparison on the finite cuts.
Assume its localized trace-norm comparison for a fixed compact smooth
multiplier and the fixed-b cut convergence in
`physical-localized-heat-trace-cut-limit.md`. Assume also the uniform volume
heat diagonals of `physical-finite-cut-uniform-heat-diagonal.md` for the
family and the complete limit, at times in [t/2,t]. These are explicit
analytic inputs; the uniform boundary estimates are not proved here.

Let u_e,v_e be real bounded multipliers with

  ||u_e-u||_2 + ||v_e-v||_2 -> 0,
  sup_e (||u_e||_infinity+||v_e||_infinity) < infinity, (1)

where u,v belong to physical L2 intersect L-infinity. Then, along every
joint sequence j->infinity and e->0,

  integral_0^t Tr[M_(u_e) K_(j,e,t-s) M_(v_e) K_(j,e,s)] ds
      -> integral_0^t Tr[M_u K_(t-s) M_v K_s] ds.       (2)

For fixed smooth compact chi, the cited localized comparison and fixed-b
cut limit give trace-norm convergence of chi K_(j,e,r) chi to chi K_r chi
for every r>0. Operator-norm comparison with b, together with strong cut
convergence at b, gives strong convergence of K_(j,e,r/2) to K_(r/2).
Therefore chi K_(j,e,r/2) converges in Hilbert--Schmidt norm: its squared
norm is Tr[chi K_(j,e,r) chi], its norms converge, and strong operator
convergence plus a uniform Hilbert--Schmidt bound gives weak convergence in
the Hilbert--Schmidt space. For arbitrary L2 multiplier u, approximate by
smooth compact chi; the uniform diagonal bound makes the Hilbert--Schmidt
error at r/2 at most C_t ||u-chi||_2. Finally (1) controls replacement of u
by u_e, even without operator-norm convergence of the multipliers. The same
argument applies to v and adjoints.

For r=t-s>=t/2, split the long heat factor at r/2. The two resulting
weighted factors converge in Hilbert--Schmidt norm, while the short heat
factor converges strongly and is uniformly bounded. Their trace product
therefore converges pointwise for 0<s<t; exchange the factors for s>=t/2.
The common diagonal bound gives

  |integrand| <= C_t ||u_e||_2 ||v_e||_2,                (3)

on both halves, so dominated convergence proves (2). The constants need not
be uniform as t approaches zero. This is a joint-sequence statement for the
listed convergent families, not a uniform theorem over an arbitrary bounded
noncompact set of fields. The zero extension, physical bundle map, and
identification with the source's time-reduced half-trace still require their
separate hypotheses. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the boundary estimates and field hypotheses,
match the physical trace and proper-time regulator, complete other vertices
and prior art, prepare the manuscript, and certify supported claims in Lean
on GCP.
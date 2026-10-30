# Trace-class contact and half trace at the free tangent seed

This discharges the trace-class and time-integrability assumptions for the
specific free-seed contact in `flat-paired-folding.md`. It is a flat-cylinder
result, not an identification of the physical curved trace, a geometric
variation theorem, a common-regulator limit or a Lean certificate.

Let H=L2(R_y x S1_T; C^r), with a fixed periodic or antiperiodic unitary
spin structure and finite-dimensional fiber. Let L_0=-partial_y^2-partial_tau^2
with the corresponding free heat semigroup K_t, t>0. Use the Clifford,
reflection U and Gamma assumptions in `flat-paired-folding.md`. Let u,v be
bounded, real, even functions in L2 of the cylinder; in particular, bounded
compactly supported radial profiles qualify. Write M_u,M_v for multiplication.
For 0<s<t consider

  A_s=M_u K_(t-s) M_v K_s.                                   (1)

## Trace class and endpoint control

The diagonal trace of the free heat kernel is independent of position:

  k(q)=r (4 pi q)^(-1/2) T^(-1) sum_(n in Z) exp(-q nu_n^2),    (2)

where nu_n is the appropriate thermal lattice. It is finite and nonincreasing
for q>0. By the semigroup identity and integration of the squared kernel,
for f in L2 and q>0,

  ||M_f K_(q/2)||_2^2 = k(q)||f||_2^2,
  ||K_(q/2) M_f||_2^2 = k(q)||f||_2^2.                      (3)

This follows by integrating tr[K_(q/2)(x,y)K_(q/2)(y,x)] over x and y;
the periodic or antiperiodic phases do not change the diagonal identity.
Consequently M_u K_((t-s)/2) and K_((t-s)/2) M_v are Hilbert--Schmidt, so
(1) is trace class for every 0<s<t. Factoring its first heat interval gives

  |Tr A_s| <= k(t-s)||u||_2||v||_2.                           (4)

When s>=t/2, cyclicity of the trace for these trace-class products permits
rotation to M_v K_s M_u K_(t-s), yielding the same estimate with k(s).
Thus for all 0<s<t,

  |Tr A_s| <= k(t/2)||u||_2||v||_2.                           (5)

The time-dependent trace is measurable (indeed continuous in the open
interval, by Hilbert--Schmidt continuity of the heat factors). It follows
that the scalar contact

  I_t(u,v)=integral_0^t Tr[M_u K_(t-s) M_v K_s] ds             (6)

is absolutely convergent, with |I_t|<=t k(t/2)||u||_2||v||_2. This is a
bound on the scalar trace after cyclic rotation; it is not a claim that
(1) has an endpoint-uniform trace norm or that its operator-valued integral
converges in trace norm.

## Exact half-domain factor

Because u and v are even scalars, their multipliers and K_q commute with U
and Gamma. Each A_s is therefore trace class and commutes with both. Gamma
is unitary and anticommutes with U, so trace invariance under conjugation
gives Tr(U A_s)=0. The even-sector trace is consequently

  Tr[P_even A_s]=(1/2)Tr[A_s],  P_even=(1+U)/2.               (7)

The H1 extension and actual square-domain identification in the folding note
map the free half-cylinder square to the U-even full square. The restrictions
of the even multipliers correspond under that unitary map. Equation (7)
therefore holds for the half-cylinder contact integrand, and (5) permits
integration in s:

  I_t^half(u,v)=(1/2) I_t^full(u,v).                          (8)

Both sides use the same full fiber, thermal period and trace convention.
Any per-exterior or copy-rank normalization must be applied separately, as
in `flat-orbit-fiber-normalization.md`. The argument covers the free seed
and fixed positive t; it does not establish the full nonlinear heat family,
metric derivative, thermal-length limit, angular tower, physical source or
UV subtraction. No numerical calculation is used.

Remaining to-do list: match the physical domains and complete response,
prove regulator and novelty claims, complete the manuscript, and certify
supported statements in Lean on GCP.

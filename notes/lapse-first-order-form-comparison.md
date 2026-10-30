# Lapse comparison on the first-order form domain

This refines `rn-lapse-boundary-commutator.md` using quadratic forms. It
requires an identified closed first-order operator and its domain; it does
not establish that identification for the physical paired geometry, or
provide a heat-trace or Lean certificate.

Let A be a closed densely defined first-order operator on a Hilbert space,
with domain V and local differential action on a stationary collar. Let F
be a real bounded multiplier with F and F^(-1) bounded, and set P=F A on
V. Then P is closed and densely defined, and its positive square has the
closed form

    q_F(u,v)=<F A u,F A v>,       Dom q_F=V.                (1)

For any constant F0>0, the comparison operator P0=F0 A has the same
first-order domain and form q_0(u,v)=F0²<Au,Av>. Their actual square
domains are defined by composition and need not agree. If u,v are supported
inside a collar C_ell and A is local there, then

 |q_F(u,v)-q_0(u,v)|
   <= ||F²-F0²||_{L∞(C_ell)} ||Au||_2 ||Av||_2.            (2)

This follows directly from (1); no derivative of F or square-domain
identification is needed. If only one argument is collar-supported, the
same inequality holds with the local norm of A applied to the other
argument. For the fixed RN product seed, choose F0²=1/X. The boundary
expansion in the preceding note gives

    |q_F(u,v)-q_0(u,v)| <= C ell² ||Au||_2 ||Av||_2         (3)

for collar-supported u,v and sufficiently small ell. The support is for
the actual localized form vectors, not merely for an observable inserted
elsewhere in a heat trace.

This form estimate complements the O(ell) commutator appearing when the
square is expanded as a differential expression: the derivative term is
already encoded in the form and must not be added again to (2). It does not
imply a global resolvent difference of order ell², because F need not be
close to F0 outside the shrinking collar. A localized resolvent or heat
comparison requires cutoffs, off-diagonal/commutator estimates and the
actual boundary trace domains; a trace additionally needs angular and
thermal summability.

The abstract closure uses bounded invertibility of F, while geometric
application must identify P=FA, the first-order domain and its adjoint
with the physical unitary frame, including the bolt and finite-cut limit.
No numerical calculation is used.

Remaining to-do list: establish that physical mapping and localized heat
comparison, control the common regulator, complete novelty and manuscript,
and certify supported claims in Lean on GCP.

# Positive-time localized physical heat variations at the cut limit

This extends `physical-localized-heat-trace-cut-limit.md` to mixed variations
for smooth compactly supported scalar directions. The result concerns a
fixed interior-localized physical Euclidean trace, not boundary-reaching
fields, a full determinant, small-time regulator removal, or Lean
certification.

Use the complete smooth physical exterior X, its finite cuts X_R and the
closed local-projector Dirac realizations D_R of the preceding note. Let
b,u,w be fixed real smooth compactly supported scalar fields, identical on
paired copies. For real z=(z1,z2), let

    E_z=exp[-(b+z1 u+z2 w)/2],  D_R,z=E_z D_R E_z,
    L_R,z=D_R,z*D_R,z,                                  (1)

and define D_z,L_z on the complete space in the same fixed Hilbert frame.
For large R, all multiplier supports and a fixed compact neighborhood of a
smooth insertion chi lie strictly inside X_R. Scalar multipliers preserve
the local projector domains. Assume the common spin/bundle identification and
the usual smooth elliptic local estimates in that neighborhood.

For each real z in a sufficiently small rectangle, D_z is formally skew and
agrees with the complete seed outside a compact set. Its compactly supported
smooth core is essentially skew-adjoint: the cutoff deficiency proof in
`physical-euclidean-complete-dirac-domain.md` applies, since the principal
symbol is bounded relative to the seed and equals it outside a compact set.
The proof of `physical-euclidean-finite-cut-strong-limit.md` therefore applies
to D_z and D_R,z for each such real z. The local smoothing proof in
`physical-localized-heat-trace-cut-limit.md` gives

    F_R(z,t):=Tr[M_chi J_R*exp(-t L_R,z)J_R M_chi]
       -> F(z,t):=Tr[M_chi exp(-t L_z)M_chi]           (2)

for each real z and fixed t>0, including trace-norm convergence of the
localized operators.

For complex z use the holomorphic common-domain forms defined in
`paired-positive-time-trace-derivatives.md`. Their perturbation from z=0 is
uniformly bounded by a small multiple of ||D_R v||^2+||v||^2, with constants
independent of R: the multipliers and derivatives are fixed and bounded,
and the product rule uses only those constants. After a common shift the
forms are uniformly sectorial on a small polydisc. The same construction
applies to the complete operator. On every smaller polydisc, standard
sectorial semigroup estimates give uniform bounds on
(L_R,z+shift)^j exp(-t L_R,z) for j<=3 at a fixed positive t.

The coefficients on the nested fixed interior neighborhoods are smooth,
uniformly elliptic and depend holomorphically on z. Uniform interior
elliptic estimates therefore give H6 smoothing of
M_chi exp(-t L_R,z)J_R, with constants independent of R and z on that
polydisc. The compact H6->L2 singular-value bound from the preceding note
shows that the localized operators are trace class with uniformly bounded
trace norms. The same holds for the complete operator. Form holomorphy,
sectorial smoothing and the local elliptic estimates give holomorphy of
F_R and F in z; the localization makes the trace meaningful without a
global trace-class assumption.

The family F_R is locally bounded and holomorphic in two variables. By
Montel's theorem every subsequence has a locally uniformly convergent
subsequence; (2) identifies its limit on a real rectangle. The identity
theorem applied successively in the two variables makes that limit F on
the polydisc. Hence the entire sequence converges locally uniformly there,
and Cauchy's formula yields, at z=0,

    partial_z1 partial_z2 F_R(0,t)
       -> partial_z1 partial_z2 F(0,t),  t>0.          (3)

This is a scalar localized mixed-trace limit. It retains all terms in the
mixed derivative but does not assert trace-norm convergence of the derivative
operator, a rate uniform as t->0, or convergence of separately regularized
Duhamel vertices. The compact support of b,u,w and chi is essential here;
the mass/log boundary layer, moving insertions, canonical source space,
physical normalization, counterterms and common regulator remain open. No
numerical calculation is used.

Remaining to-do list: extend or match the boundary-reaching response,
resolve the physical source and regulator, complete prior art and manuscript,
and certify supported claims in Lean on GCP.
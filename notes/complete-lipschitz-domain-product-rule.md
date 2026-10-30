# Complete-model domain invariance for Lipschitz scalar multipliers

This verifies the scalar product-rule and domain-invariance hypotheses of
`rough-paired-core-congruence.md` for the complete smooth model in
`complete-physical-paired-core.md`. It does not verify that the model's
bundle and operator are the actual physical paired realization.

Let X be complete and smooth, E a smooth Hermitian bundle, and A_0 the
self-adjoint closure of a formally symmetric smooth first-order differential
operator on C_c^infinity(X,E). Assume C_c^infinity is a graph core and its
principal symbol satisfies ||sigma_A(x,xi)||<=C_sigma |xi|_g. Let
m be a bounded real W1,infinity scalar, with its weak gradient measured in
the fixed metric. Then multiplication by m maps Dom A_0 into itself and

  A_0(m psi)=m A_0 psi+sigma_A(dm) psi,
  ||sigma_A(dm)|| <= C_sigma ||dm||_infinity.                 (1)

The symbol convention absorbs any factor of i; (1) uses the same commutator
convention as A_0(m psi)-m A_0 psi. To prove it, first take a smooth compactly
supported section phi. The product m phi is compactly supported H1. On a
finite collection of smooth charts it can be approximated by smooth compactly
supported sections in H1, using a partition of unity and local mollification.
The first-order operator with smooth coefficients is continuous H1->L2 on
that compact set, so closedness puts m phi in Dom A_0 and the weak Leibniz
rule gives (1).

For arbitrary psi in Dom A_0, choose phi_j in the graph core with
phi_j->psi and A_0 phi_j->A_0 psi in L2. Boundedness of m and sigma_A(dm)
shows both m phi_j and A_0(m phi_j) converge in L2. Closedness of A_0 then
proves (1) for psi. No global H1 identification of Dom A_0 and no boundary
trace are needed for this complete boundaryless model.

For real beta in W1,infinity, E_beta=exp(-beta/2) and E_beta^-1 are bounded
W1,infinity. Applying (1) to each shows that they both preserve Dom A_0;
since they are inverses, each maps the domain onto itself. The chain rule
gives

  ||[A_0,E_beta]|| <= (C_sigma/2)e^(||beta||_infinity/2)
                                      ||d beta||_infinity.     (2)

Therefore all product-rule and domain-invariance assumptions of
`rough-paired-core-congruence.md` hold in this complete smooth-seed model,
and its real rough congruence is self-adjoint with the same graph core.
This conclusion uses the seed core and symbol hypotheses; it does not prove
that the original source's global copy map, paired operator or rough fields
have been identified with this model.

The finite-cut boundary realization is a separate issue: a nonlocal
transported boundary condition need not be preserved merely because the
complete model has no boundary. The trace, mixed response, regulator and
Lean certification are also not established. No numerical calculation is
used.

Remaining to-do list: verify the source's global paired bundle and finite-cut
maps, complete the mixed trace and regulator, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

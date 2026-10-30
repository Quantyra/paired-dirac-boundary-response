# Nonuniform angular convergence of the transported boundary projector

This extends the zero-energy collar calculation in
`finite-cut-boundary-transport.md`. It is a model obstruction to a particular
operator-norm matching argument, not a no-go theorem for the physical
boundary realization, the full response, or a Lean certificate.

Use the collar equation and projector conventions of that note. Let B be the
self-adjoint angular operator with compact resolvent and unbounded absolute
eigenvalues mu_j, and write

    A_cut=integral_from_cut_to_reference a(x) dx.

Assume A_cut is finite and tends to zero as the cut approaches the reference
boundary, but A_cut is nonzero at each finite cut. In the mu_j sector put
lambda_j=mu_j A_cut. The transported allowed line is spanned by
cosh(lambda_j)v_+ + sinh(lambda_j)v_-. Let P(lambda) be its orthogonal
projection and P(0) the original zero-angle projection. The difference of
rank-one projections has operator norm

    ||P(lambda)-P(0)||
       = |sinh(lambda)| / sqrt(cosh(2 lambda))
       <= min(|lambda|, 1/sqrt(2)).                        (1)

Indeed the norm equals the sine of the angle between the two unit vectors;
cosh²(lambda)+sinh²(lambda)=cosh(2 lambda). It tends to 1/sqrt(2) as
|lambda| tends to infinity.

On the boundary Hilbert space, define the transported projector by the
orthogonal direct sum of P(mu_j A_cut), including eigenspace multiplicities.
For every fixed mode it tends to P(0) as A_cut tends to zero. Since the
projector differences are uniformly bounded, dominated convergence in the
mode sum implies strong convergence on L² for each fixed boundary vector.
However, unbounded |mu_j| and nonzero A_cut imply

    ||P_cut-P_0||_(L² -> L²) = 1/sqrt(2)                   (2)

for every such cut: the displayed value is a supremum, not necessarily an
attained maximum. Thus fixed-mode convergence is not operator-norm
convergence on the full angular L² space.

There is a useful regularity-qualified estimate. With
||f||_(H_B^s)=||(1+B²)^(s/2) f||_2, s>0, (1) yields, for |A_cut|<=1,

    ||P_cut-P_0||_(H_B^s -> L²)
       <= C_s |A_cut|^min(s,1).                            (3)

For 0<s<=1, min(|lambda|,1)<=|lambda|^s; for s>=1 use the linear
bound. The spectral weight absorbs |mu_j|^min(s,1). This is an operator
bound on the indicated angular Sobolev space; it does not justify a trace,
frequency integral or regulator limit by itself.

The calculation applies to the separated zero-spectral-parameter collar
problem with the displayed transport equation. It does not determine the
nonzero-frequency boundary map or establish that the physical problem uses
this particular effective projector. It does show that a proof relying on
uniform L² operator-norm convergence across all angular modes needs another
mechanism or stronger input; a strong or Sobolev-to-L² limit is a different
statement. No numerical calculation is used.

Remaining to-do list: determine the physical frequency-dependent boundary
matching, verify bundle and domains, complete response and novelty audits,
prepare the manuscript, and certify supported claims in Lean on GCP.
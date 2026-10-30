# Uniform upper endpoint for the mixed congruence bridge

This gives a sufficient upper-time condition for
`physical-product-mixed-cutoff-bridge.md`. It does not assume that the
condition holds for the physical zero sector or moving-cut family, and it
does not address the ultraviolet endpoint.

Use the compact fixed-cut interpolating forms of that bridge. Suppose that
for both positive-square partners and every r in [0,1] there is a common
complex two-parameter polydisc of radii rho_u,rho_w>0 on which the associated
trace-class holomorphic heat operators K_(r,z)(t), Kbar_(r,z)(t) satisfy

  ||K_(r,z)(t)|| <= exp(-g t),
  ||Kbar_(r,z)(t)|| <= exp(-g t),                             (1)

for t>=0 with one g>0, and

  ||K_(r,z)(1)||_1 + ||Kbar_(r,z)(1)||_1 <= C_1               (2)

uniformly in r and z. In applications to a moving cut or field regulator,
these same constants must be uniform in those parameters. Equations (1)--(2)
are explicit assumptions; a real seed gap alone does not provide them on a
complex polydisc or uniformly in a family.

For T>=1 the semigroup property and trace ideal inequality give

  ||K_(r,z)(T)||_1 + ||Kbar_(r,z)(T)||_1
        <= C_1 exp[-g(T-1)].                                  (3)

Cauchy's two-variable formula on fixed circles inside the polydisc yields

  ||partial_u partial_w K_r(T)||_1
   +||partial_u partial_w Kbar_r(T)||_1
    <= C_2 exp[-g(T-1)],                                      (4)

where C_2 depends on C_1 and the reciprocal circle radii. This uses
trace-norm holomorphy and the full complex-circle bound, not differentiation
of a real-axis operator-norm estimate. For bounded fixed b, integration over
r and |Tr(b X)|<=||b||_infinity||X||_1 bound the complete upper-endpoint
contribution in equation (2) of the mixed bridge by

  (1/2)||b||_infinity C_2 exp[-g(T-1)].                        (5)

Thus it tends to zero uniformly in any additional parameters covered by the
same constants. The two partner terms are retained and the estimate controls
the complete mixed derivative, including both first-vertex orderings and the
mixed second vertex through holomorphic differentiation.

For the physical RN-AdS conformal interpolation, `conformal-interpolation-gap-loss.md` gives interior trial functions showing that the assumed positive gap cannot be uniform in both the interpolation parameter and moving cutoff, even before the endpoint r=1 is reached. Thus (5) is not a proof of that physical limit; a different weighted estimate or cancellation is needed.

If either partner has a zero mode, the simple gap assumption can fail. A
projection onto a nonzero spectral subspace and differentiation of its
parameter-dependent kernel projection would need a separate argument; (5)
cannot be used to erase an LLL contribution. Likewise, in the conformal
physical/product comparison ||b||_infinity may grow as the cut moves, so
uniformity requires a bound on the whole product in (5), not just g and
C_1. No assertion is made for the physical source, angular sum,
small-time subtractions, common regulator, or Lean certification.

Remaining to-do list: establish the physical/sector-specific hypotheses and
mixed ultraviolet remainder, match the regulator and normalization, resolve
novelty, complete the manuscript, and certify supported claims in Lean on
GCP.

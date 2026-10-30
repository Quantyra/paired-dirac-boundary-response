# Green boundary form of the first metric vertex

This derives the boundary form associated with the gradient pieces of the
first square-form vertex. It connects the coefficient audit in
`ordered-vertex-finite-cut-boundary-term.md` with the conditional ordered
pairing estimates in `finite-cut-first-vertex-boundary-pairing.md`. It does
not establish the full regulated response.

Fix a smooth finite cut and use the convention that the inner product is
conjugate-linear in its first argument. Write P=Pi_+, so allowed boundary
traces satisfy gamma f=P gamma f. Let D=D_b, let D^dagger be its formal
adjoint, and define the normal Green matrix S by

  <Df,z> - <f,D^dagger z> = <gamma f,S gamma z>_boundary. (1)

The sign of S is fixed by (1); in a convention where S=E_b^2 c(n), the
orientation and Clifford convention are incorporated in that equality. For
a real radial direction v set C_v=E_b^2 c(dv). The first variation of
D is D_v=-vD-C_v/2, hence its square-form derivative is exactly

  q_v(f,g)=-2<Df,v Dg> - (1/2)<C_v f,Dg>
                        - (1/2)<Df,C_v g>.                 (2)

For smooth f,g in the actual first-order domain, apply (1) to z=v Dg
and z=C_v g, and apply its conjugate to the other gradient term. The bulk
expression q_v^bulk uses the formal differential adjoints, and the full
boundary contribution is

  q_v(f,g) - q_v^bulk(f,g)
    = -2<gamma f,S v gamma(Dg)>
      - (1/2)<gamma f,(S C_v + C_v* S*)gamma g>.             (3)

The first term depends on the trace of Dg; it is not a boundary multiplier
on gamma g and is not generally zero on the first-order domain.

For g in Dom L,
gamma(Dg) belongs to the complementary adjoint trace subspace. The Green
annihilator property therefore makes that principal boundary pairing zero.
It must not be discarded for arbitrary g merely in the first-order domain.
Thus, for smooth g in Dom L and smooth f in Dom D, the boundary contribution
is <gamma f,H_v gamma g> with multiplier

  H_v = -(1/2) P(S C_v + C_v* S*)P.                        (5)

Under the explicitly chosen convention S=E_b^2 c(n), self-adjoint normal
Clifford multiplication with c(n)^2=1, and radial v, the projected product
S C_v=E_b^4 partial_n v P is real and self-adjoint. Consequently

  H_v = -E_b^4 partial_n v P.                               (6)

If another Green convention is used, (5), not the sign in (6), determines
the result. The factor of two in (6) comes from both gradient terms in (2);
it must not be counted twice elsewhere. The bulk term in (3) is a formal
operator expression whose domain and derivative-transfer use still require
justification. Equation (3) is first an identity on smooth boundary-compatible
inputs, extended only where the indicated forms are meaningful.

For heat-smoothed g=K_s x with s>0, g belongs to Dom L and the cancellation
above applies. Whenever the ordered trace manipulation legitimately replaces
q_v by the bulk expression plus (5), the boundary part is exactly the Q_H
form considered in the pairing note, with the coefficient and sign fixed by
(5). Its conditional endpoint bound then applies to each listed first-form
vertex on the other side, provided all graph, trace, heat-kernel and
trace-cyclicity hypotheses there hold uniformly. This identifies one complete
first-vertex Green insertion; it does not show that all rearrangements, density
or second vertices introduce no additional terms. No numerical run or Lean
certificate is claimed.

Remaining to-do list: justify the complete ordered trace transfer and all
other insertions, prove the uniform analytic estimates and common regulator,
resolve prior art, prepare the manuscript, and certify supported claims in
Lean on GCP.
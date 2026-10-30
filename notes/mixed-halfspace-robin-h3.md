# Mixed half-space H3 estimate with a bounded Robin coefficient

This extends `mixed-halfspace-constant-h3.md` from homogeneous Neumann to a
zeroth-order Robin condition. It keeps the principal operator flat and the
projector constant; variable principal coefficients and projector geometry
remain to be handled separately.

Let H=R^(d-1) x (0,infinity), P a constant orthogonal fiber projection,
and S(x') a smooth endomorphism of the P subspace with uniformly bounded
partial derivatives through order three. For smooth compactly supported f
satisfying

  (1-P)f|_0=0,  P(partial_n f+S f)|_0=0,               (1)

there is a constant C depending only on dimension and the indicated bounds
for S such that

  ||f||_H3(H) <= C (||Delta f||_H1(H)+||f||_L2(H)).  (2)

Choose a fixed smooth eta(x_n), equal to 1 near zero and supported in
[0,1). Extend S by zero to the complementary fiber, and set

  G(x',x_n)=(1-P)+P exp[x_n eta(x_n) S(x')] P,
  g=G f.                                               (3)

Both G and G^(-1), with derivatives through order three, are bounded by
constants determined by the bounds for S. At the boundary G=1 and
partial_n G=S on the P subspace. Therefore (1) gives

  (1-P)g|_0=0,  P partial_n g|_0=0.                   (4)

The constant-projector estimate of the preceding note applies to g.
Expanding Delta(Gf) and differentiating once yields

  ||Delta g||_H1
     <= C (||Delta f||_H1+||f||_H2),
  ||g||_H1 <= C ||f||_H1.                              (5)

Using the H3 multiplier bound for G^(-1), the Neumann estimate and (5)
therefore gives

  ||f||_H3 <= C (||Delta f||_H1+||f||_H2).            (6)

The standard half-space interpolation inequality
||f||_H2 <= eps ||f||_H3+C_eps ||f||_L2, followed by absorption, proves
(2). This is an a priori estimate on smooth inputs; applying it to weak
solutions requires a compatible regularization and elliptic regularity
argument. The signs in (3) correspond to the inward coordinate x_n used in
(1); a reversed normal changes the sign in the exponent.

For the radial RN cuts, the scalar Robin coefficient is bounded and
constant along the cut under the hypotheses in
`rn-mixed-robin-coefficient-bounds.md`, so the S bounds are uniform in that
model after choosing a constant projector frame. The latter frame choice,
variable metric/principal coefficients, connection terms and physical
realization still require their own uniform comparison. Equation (2) alone
does not prove the desired physical H3 estimate or any regulator limit. No
numerical run or Lean certificate is claimed.

Remaining to-do list: handle variable principal coefficients and projector
frames, verify the physical bundle/source maps, complete the regulator and
prior-art audits, prepare the manuscript, and certify claims in Lean on GCP.
# Commuting the conformal insertion through a first Dirac vertex

This supplies a finite-cut algebraic step toward a weighted mixed heat
factorization. It uses the first-order vertex convention in
`geometric-locality-vertex.md`; it is not an equality of complete heat
traces or a physical regulator theorem.

Let D_beta=E_beta D_0 E_beta on the common first-order domain V, where
E_beta=exp(-beta/2), and assume the scalar product rule

  [D_beta,f]=C_f:=E_beta² c(df)                                (1)

on V for the scalar multipliers used below. Let V_v denote the derivative
of D_beta in the scalar congruence direction v. Then

  V_v=-(v D_beta+D_beta v)/2=-v D_beta-C_v/2.                  (2)

On a fixed cut, let b be a smooth bounded scalar with bounded first
weak derivative, and suppose b, v and bv preserve V. The product rule
C_(bv)=b C_v+v C_b gives the two distinct identities

  b V_v = V_(bv) + (v/2) C_b,
  V_v b = V_(bv) - (v/2) C_b.                                 (3)

For the second equality use [D_beta,b]=C_b, hence
[V_v,b]=-v C_b. These identities are on the declared first-order domain;
all scalar multipliers and Clifford multiplication operators are in their
shown order. They do not assert that an unbounded b preserves the domain on
the limiting noncompact space.

For the fixed RN physical exterior, take b=log(b_sphere/r). Its physical
gradient has norm sqrt(F)/r, which is uniformly bounded on the exterior for
a fixed nonextremal seed. Its physical Hessian is also bounded: in the
proper radial coordinate partial_s b=-sqrt(F)/r and its derivative and the
warped tangential connection coefficients have finite limits at infinity
and are bounded across a regular fixed seed. Assuming the base beta and its
first physical derivative are uniformly bounded, (1) implies that C_b and
its first physical covariant derivative are bounded on that fixed geometry.
For an admitted stationary radial v, `conformal-log-direction-physical-volume.md`
gives bv, v and their relevant first derivatives in physical L2, with
tail O(R^(-3/2)(1+log R)) for bv and at least O(R^(-3/2)) for v. Therefore

  ||v C_b||_(L2(r>=R)) + ||nabla(v C_b)||_(L2(r>=R))
       <= C R^(-3/2)                                         (4)

under the stated fixed-geometry and base bounds. This controls the explicit
coefficient of the correction in (3), not its placement inside a heat trace.
For a family of geometries or beta fields, the constants in (4) must be
proved uniform separately.

Equation (3) shows exactly what is lost by replacing b V_v with V_(bv): the
bounded-gradient correction has opposite signs depending on the order.
The full square form vertex contains both D_beta and V_v, and the mixed
response contains two ordered first vertices and the mixed second vertex.
An actual trace argument must preserve these terms and justify all
unbounded-operator products, boundary forms, Schatten estimates and limit
interchanges. In particular (3)--(4) do not establish P1-D, a physical
finite part or Lean certification. No numerical calculation is used.

Remaining to-do list: incorporate (3) into the complete mixed trace with
physical boundary and regulator control, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.

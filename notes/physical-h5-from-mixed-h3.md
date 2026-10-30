# Second spatial heat derivatives from mixed H3 regularity

This continues `physical-h4-from-mixed-h3.md` under the same stipulated
smooth finite-cut domains, uniform physical charts, C5 field bounds, and
order-five frame bounds. It uses the mixed H3 theorem with differentiated
inhomogeneous boundary data. The conclusion is conditional on those model
and source identifications; it is not a physical regulator theorem or Lean
certification.

## One more regularity step

In a constant-projector boundary-normal frame, use the notation of equation
(1) of the H4 note. The scalar principal coefficient a^ij is uniformly
elliptic, all coefficients of L and the Robin S are uniformly bounded in
W^(3,infinity), and the mixed boundary data of f are homogeneous. Suppose
f is locally H4 and Lf is locally H3. For two tangential coordinates put
h=partial_a partial_b f. Its Dirichlet datum is zero and its Robin datum is

 P(partial_n+S)h = -P[(partial_a S) partial_b f
                       +(partial_b S) partial_a f
                       +(partial_a partial_b S) f].       (1)

The trace theorem and uniform product bounds control this datum in H^(3/2)
by C||f||_H4 on a larger half-chart. Also

 Lh=partial_a partial_b(Lf)-[partial_a partial_b,L]f,
 ||Lh||_H1 <= C (||Lf||_H3+||f||_H4).                    (2)

For example, the leading commutator terms contain one coefficient
derivative times third derivatives of f, or two coefficient derivatives
times second derivatives. One further derivative in the H1 norm needs at
most third coefficient derivatives and fourth derivatives of f. The mixed
H3 theorem applied to h, with (1), yields on a smaller chart

  sum_(a,b<n) ||partial_a partial_b f||_H3
       <= C (||Lf||_H3+||f||_H4) on the larger chart.     (3)

Nested normal-constant localization introduces only lower-order commutators,
controlled by the right side. Formula (3) controls all derivatives through
order five that contain at least two tangential differentiations.

To recover derivatives containing fewer tangential differentiations, use
uniform positivity of a^nn to solve the equation for partial_n^2 f. First
apply derivatives partial_a partial_n^k, k<=2, to that equation. Every term
with a second derivative other than partial_n^2 has a tangential index; after
partial_a it contains at least two tangential derivatives at highest order,
which are controlled by (3). Derivatives of coefficients up to order three,
Lf in H3 and f in H4 control the lower terms. This bounds the fifth-order
derivatives with exactly one tangential differentiation. Next apply
partial_n^k, k<=3, to the same equation: any highest-order cross term has
one tangential differentiation and is now controlled, while tangential-
tangential terms have two. This bounds the pure fifth normal derivative.
Uniform multiplier bounds for (a^nn)^(-1) and its first three derivatives
follow from ellipticity and the W3 coefficient bounds. Consequently

 ||f||_H5(smaller) <= C (||Lf||_H3(larger)
                              +||f||_H4(larger)).          (4)

All constants are independent of the cut, field approximant and chart under
the stated hypotheses. Interior charts use coordinate differentiation and
the interior H3 estimate. The calculation can be performed first for the
smooth finite-cut heat outputs, whose higher Sobolev membership on each fixed
cut follows by elliptic regularity; the uniform estimate does not rely on
uniform higher coefficient derivatives. Weak extension requires the usual
compatible localization and approximation separately.

## Fixed-time heat bounds

Let f=K_s h, K_s=exp(-sL). The H3 estimate applied to
Lf=K_(s/2) [L K_(s/2)h] gives

 ||Lf||_H3 <= C s^(-1)(1+s^(-3/2))||h||.                (5)

The H4 bound for f in the preceding note has the same qualitative time
control. Substitution into (4) yields

 ||K_s h||_H5 <= C(1+s^(-1))(1+s^(-3/2))||h||.          (6)

In dimension four, H5 embeds into C2. Thus, for j=0,1,2 and scalar weights
a in physical L2, the heat-kernel evaluation and finite fiber rank give

 ||M_a nabla^j K_s||_2
    <= C(1+s^(-1))(1+s^(-3/2)) ||a||_2.                 (7)

The correct reversed operator order is used for adjoints. For s in a fixed
positive interval [t/4,t], this supplies the long-time heat factors assumed
in `physical-ordered-vertices-positive-time.md` and
`physical-finite-cut-uniform-heat-diagonal.md`, for the stipulated model.
It does not establish their finite-cut derivative transfer: the Green boundary
term still requires exact factorization and control. Nor does (6) establish a
uniform subtracted small-time asymptotic or physical trace normalization.

This argument avoids the stronger W5 coefficient hypothesis in the direct
application of Grosse--Nistor Corollary 7.6 recorded in
`physical-h5-regularity-literature-bridge.md`: it uses that theorem only at
H3 and tracks the lower-order differentiated coefficients explicitly. It
does not change the assumptions of the imported theorem itself. No
numerical run or Lean certificate is claimed.

Remaining to-do list: finish the ordered Green boundary and other vertices,
verify the physical source and common regulator, resolve novelty, prepare
the manuscript, and certify supported claims in Lean on GCP.
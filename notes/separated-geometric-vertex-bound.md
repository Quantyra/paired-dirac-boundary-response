# Separated geometric first-vertex cross term

This controls the separated geometric cross terms left open in
`conversion-three-region-decomposition.md`, under explicit compact-model
heat and form-domain hypotheses. It does not control the transition or
interior diagonal pieces, or identify the physical source regulator.

Let L=D*D be a nonnegative compact-orbit square with K_s=exp(-sL). Assume
the fixed-cut first form variation in direction v is the sum of

  V_A(f,g)=<Df,A Dg>,  V_B(f,g)=<Df,Bg>,
  V_C(f,g)=<Cf,Dg>,                                    (1)

where the bounded coefficients A,B,C are supported in a closed set F.
For the Dirac congruence variation these coefficients include both v and its
first derivative; a cutoff applied to v must be differentiated before F is
chosen. Let the bounded smearing U be supported in E, with dist(E,F)=d>0.
Assume the heat and first-derivative off-diagonal Hilbert--Schmidt estimates
of `complex-offdiagonal-hilbert-schmidt.md`, including adjoint orientations,
and the fixed-cut form-Duhamel trace identity in
`finite-cut-smeared-heat-first-variation.md`.

For 0<s<t, the principal contribution to the Duhamel integrand is the
trace-class product

  Tr[M_A (1_F D K_s 1_E) M_U (1_E K_(t-s) D* 1_F)]. (2)

Here the second factor with D* is defined by the adjoint of
1_F D K_(t-s) 1_E. The two bracketed operators are Hilbert--Schmidt by the
separated derivative bounds. Schatten Holder gives

  |(2)| <= C t^(-N) exp[-c d^2/s-c d^2/(t-s)]        (3)

with the actual endpoint polynomial powers absorbed into the notation on
the right. More precisely, they are finite powers of s and t-s; their
integral is controlled by decreasing c and increasing N. For V_B one of
the derivative factors is replaced by an ordinary off-diagonal heat factor;
for V_C the other is replaced. These terms obey the same kind of bound, with
constants depending on the coefficient and smearing norms. Matrix ordering
and adjoints are retained; no Clifford commutation is needed.

Integrating the three estimates over 0<s<t gives

  |D_v Tr[U K_t]| <= C t^(-N') exp(-c' d^2/t).        (4)

The form-Duhamel identity gives the overall sign; (4) is an absolute bound.
At the source cutoff, multiplying by Theta(t)<=C/t preserves exponential
decay. Applying the same reasoning with u and v interchanged handles the
other geometric cross term; the separated contact term was bounded in the
three-region note. Uniformity in a moving cut and field family requires the
same positive separation, off-diagonal constants, coefficient norms and
form-Duhamel justification throughout that family.

The result leaves every transition and interior diagonal term in the exact
region decomposition, and it does not prove a local counterterm, physical
source or common-regulator identification. No numerical run or Lean
certificate is claimed.

Remaining to-do list: control the transition and interior terms with their
subtractions, verify physical source and regulator matching, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
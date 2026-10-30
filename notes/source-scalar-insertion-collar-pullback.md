# Scalar source insertion under a moving compact collar cut

This checks the insertion hypothesis in `moving-insertion-cut-response-rate.md`
for the scalar insertions appearing in the source's fixed-cut conversion
formula, on the compact local-projector model of
`product-frame-moving-cut-uniformity.md`. The physical infinity condition,
actual Hilbert-space identification and conversion heat estimates remain
separate obligations. In particular this is not the source's common-regulator
conversion theorem.

## Claim and ordinary argument

Let X_0, X_delta, F_delta:X_0->X_delta and the unitary identification be as
in the compact-product note. Write the scalar part of the pulled-back unitary
as the square root of the density and its fiber part as normal-frame/bundle
transport. Both commute pointwise with scalar multiplication. Thus, for any
bounded scalar field f on X_delta,

  U_delta M_f U_delta^(-1) = M_(f composed with F_delta).       (1)

The precise orientation of U_delta is from the cut Hilbert space to the
reference Hilbert space. Equation (1) holds independently of the density
factor and fiber transport, including when those factors depend on real
variation parameters. It does not identify distinct boundary conditions.

Assume F_0 is the identity and the collar maps obey
sup_x dist(F_delta(x),x)<=C_F delta in a fixed smooth extension. Let u and w
be scalar fields on that extension, uniformly bounded in W1,infinity, and
let their physical-side regularizations have the same bound. Then

  || M_(u composed with F_delta) - M_u ||
       <= C_F delta ||grad u||_infinity,                         (2)

and similarly for w. For smooth fields this is the fundamental theorem of
calculus along uniformly short collar paths; for W1,infinity fields use their
Lipschitz representatives. The operator norm of a scalar multiplication is
its essential supremum. The estimate is uniform over the regularizations
provided their first derivative bounds are uniform. It does not require a
uniform fourth derivative or a smooth even extension of the cubic seam.

For z=(z1,z2) on a fixed bounded complex polydisc define the source
conversion insertion

  b_z=z1 u+z2 w,       C_(delta,z)=M_(b_z composed with F_delta),
  C_(0,z)=M_b_z.                                                (3)

Equations (2)--(3) give the uniform boundedness, holomorphy and O(delta)
operator-norm difference required by equation (3) of
`moving-insertion-cut-response-rate.md`, with constants controlled by the
polydisc radii and W1,infinity norms. The same applies to the scalar smeared
insertion M_u in the source's T_e(u). The product rule retains the two
first-insertion derivatives of b_z; b_z has no mixed insertion derivative
when the two directions and the pullback are parameter independent.
Parameter-dependent fields must instead be checked using their own uniform
holomorphic bounds; this conclusion is not automatic for them.

## Relation to the actual conversion

The historical source `current-variable-contact-conversion.md`, equations
(1)--(3), writes the conversion as the r-integral of the scalar insertion
b in the heat trace of P_r(b), and includes the physical-half time-reduced
trace and the full angular tower. Equation (1) above explains how that
insertion transforms under the stipulated compact collar pullback; it does
not establish that the compact local-projector trace equals the source trace.

To apply the conditional cutoff comparison to the conversion one must still
prove, uniformly in r in [0,1] and in the field regulator, the common-domain
sectorial and trace-norm heat comparison for the actual P_r(b), including
its mass dependence and the full angular sum, and identify the transported
physical boundary condition and trace normalization. The prior moving-cut
estimate concerns its specified compact Weyl-square family and does not by
itself provide those estimates for every P_r. Contacts, large times and
subtractions also remain to be matched. Neither (2) nor the compact-model
estimate is a curved response bound. No numerical or Lean certificate is
claimed.

Remaining to-do list: verify the actual P_r family and transported physical
boundary, complete common-regulator and contact matching, establish the
curved remainder or decide a supported scope, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

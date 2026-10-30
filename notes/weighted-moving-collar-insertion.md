# Weighted collar remainder in the moving-insertion criterion

This applies `rough-moving-collar-insertion.md` to the physical-half weighted
remainder in `weighted-remainder-cutoff.md`, keeping the field cutoff scale
separate from the moving-boundary scale. It does not identify the physical
heat observable or establish uniform heat/form constants, the curved
subtraction, or Lean certification.

## Source field and approximation

Let 0<ell<=1/10, L(y)=1+log(1/y), and let r be C5 for 0<y<=ell with

  |r^(j)(y)| <= K A_j y^(4-j)L(y),   0<=j<=5,                 (1)

as in the cited cutoff note. For j<=3 the right side tends to zero at the
boundary. Defining r^(j)(0)=0 gives r in C3([0,ell]): for each lower order,
the mean value theorem on positive points and the continuous endpoint limit
show that its derivative at zero is the next extended derivative. Moreover
||r||_(C3) <= C K, with C depending on ell and the fixed weights. The
explicit term c y^3+d y^4 log(y) is also C3 at zero; its third derivative
is 24 d y log(y)+26 d y plus 6c. Hence a localized profile

  u(y)=rho(y)[c y^3+d y^4 log(y)+r(y)]                         (2)

has bounded C3 norm for a fixed C3 cutoff rho. A bounded C3 extension to a
slightly larger fixed interval exists by matching endpoint jets. This is a
physical-half statement: it does not turn the reflected cubic into a smooth
even function.

Let h>0 be the field cutoff scale, with 2h<ell, and put r_h=q(y/h)r(y)
as in the cutoff note. By Leibniz's rule, the discrepancy is supported on
0<y<2h and, for j<=2, is bounded there by
C K y^(4-j)L(y). Since y^(4-j)L(y) is increasing on this interval,

  ||r_h-r||_(C2([0,ell])) <= C K h^2 L(2h),
  sup_h ||r_h||_(C3([0,ell])) <= C K.                          (3)

The constants absorb fixed powers of 2 and cutoff derivatives. If smooth
approximants s_h are required, choose the mollification accuracy in the
cited cutoff note additionally so that ||s_h-r_h||_(C3)<=C K h^2 L(2h).
This is possible for each h by its C5 convergence. Then (3) holds with s_h
in place of r_h, with an enlarged h-independent C3 bound. The construction
is field-dependent and does not imply a uniform rate for every higher jet.
The explicit cubic/log term can be kept unchanged when only C3 insertion
regularity is needed; smoothing that term as well requires its own rate.

## Separate field and boundary errors

Use the proper-distance construction (4)-(6) of the moving-insertion note.
Suppose its pulled-back collar coefficients a_delta,w_delta,v_delta,rho_delta
satisfy its uniform bounds and O(delta) L-infinity comparison. Let u_h be
(2) with r replaced by r_h or s_h, and compare C_(delta,h,s,r) with
C_(0,0,s,r), where the latter uses the original r. The uniform C3 bound and
(3), with the product and chain rules in the cited note, give for
j=0,s,r,sr

  ||partial_j C_(delta,h,0,0)-partial_j C_(0,0,0,0)||
       <= C [delta + K h^2 L(2h)].                              (4)

For a field and jet family with uniformly bounded K, c and d, and fixed
cutoffs and collar coefficients, C can be chosen uniformly. In particular,
if the same u_h is used on both sides of a cut comparison, the field error in
(4) cancels and the insertion difference is O(delta). If the limiting
insertion u is used on one side, the separate h term must remain.

Assume in addition that the *heat* family on the common pulled-back space
has the uniform estimates required in `rough-moving-collar-insertion.md`,
including a bound for its own delta/h dependence; (4) is not such a heat
bound. If, for example, the two heat families being compared have the
previous O(delta) form difference uniformly in h, while the reference heat
trace derivatives obey its t^(-3) bound, the complete mixed observable
comparison is bounded by

  C [delta^(1/6)t^(-35/12)+(delta+K h^2 L(2h))t^(-3)].           (5)

After integration over epsilon<=t<=1 against dt/t^2, the additional field
term is C K h^2 L(2h) epsilon^(-4). Thus a joint choice must also make this
term vanish; h=exp(-1/epsilon) is one sufficient example. This checks only
the insertion contribution and does not show that the heat form or physical
boundary errors satisfy the same path.

Remaining to-do list: match the actual physical insertion and verify uniform
heat and cut hypotheses, prove the complete subtracted curved remainder and
regulator limit, settle novelty, finish the manuscript, and certify its
supported claims in Lean on GCP.

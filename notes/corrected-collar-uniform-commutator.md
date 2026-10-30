# Uniform cutoff commutator on the corrected orbit collar

This verifies the coefficient bound in the complex collar comparison for
the explicit model of `corrected-moving-cut-common-collar.md`. It assumes
the stipulated H1 projector/adjoint domains and common local half-density
frame, and does not identify the physical source domain.

On the common collar, write

  D_z=E_z (gamma_y partial_y+f gamma_tau partial_tau) E_z,
  E_z=exp[-(b+zv)/2],                                 (1)

with common positive f and uniform W1 bounds for f,b,v. Let chi=chi(y) be
the fixed real normal cutoff of the common-collar construction. Then

  A_z=[D_z,chi]=E_z^2 gamma_y chi'.                   (2)

For z in a fixed bounded disk, A_z and its first weak derivatives are
uniformly bounded: derivatives use only chi through second order and b,v
through first order. Its support F lies in the fixed annulus h<=y<=2h,
separated from the insertion support. The same A_z occurs on both models
because all coefficient and scalar data agree there.

Assuming Dom D_z and Dom D_(bar z)* are the complementary H1 projector
spaces, the calculation in `complex-collar-commutator-trace-locality.md`
gives for w in Dom L_z=D_(bar z)*D_z

  [L_z,chi]w=D_(bar z)*(A_z w)-A_barz* D_z w.        (3)

Expanding the first term with the weak product rule shows that (3) is a
first-order operator on F whose coefficients are uniformly bounded. In
particular, for a fixed smooth psi=1 near F and supported in the common
collar,

  ||[L_z,chi]w||_2 <= C ||psi w||_H1,                 (4)

where C is independent of the moving cut, field cutoff and z. The bound
uses only f,b,v and their first derivatives, and the fixed local frame and
cutoffs. It does not require the possibly large fourth derivatives of the
seam smoothing. Interior support ensures A_z w obeys either boundary
condition; chi is constant near the boundary, so it preserves the square
composition domain as explained in the cited commutator note.

Together with the uniform common-domain and sectorial bounds established
conditionally in `corrected-orbit-uniform-form-inputs.md` and
`corrected-auxiliary-uniform-form-inputs.md`, (4) supplies the explicit local
commutator input for the complex off-diagonal/Schatten locality argument.
The local differential expression and boundary domain must still be shown
to agree under the actual physical spin/copy map, and uniform heat inputs
for that physical realization must be verified. The conclusion applies to
collar-supported insertions, not an arbitrary global response. No numerical
run or Lean certificate is claimed.

Remaining to-do list: verify the physical map and source trace, handle
non-collar contributions and common subtractions, complete prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
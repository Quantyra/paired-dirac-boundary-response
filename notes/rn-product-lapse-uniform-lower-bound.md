# Uniform product-frame lapse lower bound for a fixed RN exterior

This verifies a geometric input of the conditional thermal-gap argument in
`euclidean-canonical-unitary-half-density.md` for a fixed nonextremal RN-AdS
product seed. It does not establish the physical spinor domain, a gap for
the four-dimensional physical congruence, or a uniform rough-family bound.

Let the source exterior have r>=r_h>0 and

  F(r)=r^2/L_4^2+1-c/r+d/r^2,
  B(r)=b_sphere^2 F(r)/r^2,         f(r)=1/sqrt(B(r)),        (1)

where L_4,b_sphere>0 and c,d are fixed finite real constants. Assume F>0
on the exterior r>r_h and F(r_h)=0, with the regular nonextremal bolt
specified separately. On the open exterior,

  0<B(r)<=B_max:=b_sphere^2[L_4^(-2)+r_h^(-2)
                           +|c|r_h^(-3)+|d|r_h^(-4)].        (2)

This follows term by term from r>=r_h. The same fixed B_max applies to
every finite outer cut R>r_h and to the limiting exterior, so

  f(r)>=f_0:=B_max^(-1/2)>0.                                 (3)

The possible divergence of f at the bolt does not invalidate the lower
bound; its effect on domains must be handled separately. The estimate is
for a fixed geometry and its explicit constants are not asserted uniform
over a varying family unless uniform bounds on the parameters and a common
positive lower bound for r_h are supplied.

For each thermal and angular mode, if H_mu is self-adjoint on its declared
local-projector domain and the symmetric-lapse operator
P=sqrt(f)(H_mu+i nu)sqrt(f) has the domain assumed in the cited note, then
its argument gives

  ||P v|| >= f_0 |nu| ||v||,
  P*P >= f_0^2 nu^2.                                          (4)

For a fixed antiperiodic period T, |nu|>=pi/T; this supplies one positive
lower bound independent of the outer cut and angular eigenvalue under those
operator hypotheses. Equation (4) is a conditional product-frame model
spectral estimate. It does not by itself prove the corresponding estimate
for the adjoint partner, complex parameter family, physical congruence, or
full angular/thermal trace. The conformal factor connecting this product
square to the physical square can degenerate with the cut, as quantified in
`physical-product-congruence-gap-cut.md`, so (4) must not be transferred to
that square by identification of their symbols.

No numerical calculation or Lean certificate is claimed.

Remaining to-do list: establish the actual physical and partner domains,
complex-family and trace bounds, mixed ultraviolet remainder and regulator,
novelty decision, manuscript, and Lean certification on GCP.

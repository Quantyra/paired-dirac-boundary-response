# Interior geometric finite-order heat coefficient

This independently checks the geometric coefficient G2 used in
`curved-conversion-finite-coefficient.md`, assuming the standard smooth
Laplace-type local a4 formula and the parameter-uniform heat expansion of
`interior-conversion-parametrix-reduction.md`. It is an interior calculation,
not a proof of the physical boundary, uniform remainder or Lean certificate.

Use an untwisted rank-two orbit Dirac square, Delta=div grad, and
L=-(nabla^2+E), E=-R/4. In two dimensions

  |Ric|^2=R^2/2,  |Riem|^2=R^2.                       (1)

With the spin connection convention for which the square is positive, its
curvature satisfies tr(Omega_ij Omega^ij)=-r R^2/8 for r=2. Substitution
into the local a4 formula

  (1/360) tr[60 Delta E+60 R E+180 E^2
       +12 Delta R+5R^2-2|Ric|^2+2|Riem|^2+30 Omega_ij Omega^ij]

therefore gives the rank-two density

  a4= -R^2/120-Delta R/60.                             (2)

The smearing u is held fixed. For g_z=e^(2zv)g in dimension two,

  delta_v R=-2vR-2Delta v,
  delta_v(dvol)=2v dvol,
  Delta_(g_z)=e^(-2zv) Delta_g on scalars.             (3)

Equations (2)-(3) imply

  delta_v integral u a4 dvol
    =(1/60) integral u [v R^2+2R Delta v
                            +2Delta(Rv+Delta v)] dvol. (4)

For example, delta(R^2 dvol)=(-2vR^2-4R Delta v)dvol, while
delta[(Delta R)dvol]=Delta(-2vR-2Delta v)dvol. Thus (4) is precisely the
source's unsymmetrized geometric coefficient before integration by parts.

If u,v are smooth and all boundary pairings vanish, use self-adjointness of
Delta under integration to symmetrize (4). The coefficient of t in
G_t=[D_v T(u)+D_u T(v)]/2 is then

  integral G2=(1/60) integral[(R^2+2Delta R)uv
          -4R <grad u,grad v>+2(Delta u)(Delta v)].   (5)

The identity integral R(u Delta v+v Delta u)
=integral[(Delta R)uv-2R<grad u,grad v>] gives the middle terms. This
matches equation (3) of the cited finite-coefficient audit. Boundary or seam
distributional terms cannot be discarded unless their separate trace and
pairing hypotheses are verified. A magnetic twist or different fiber count
can change (2) and must be treated explicitly.

The calculation does not establish the contact coefficient I2, a uniform
complex parametrix, source normalization, or common-regulator removal. No
numerical run is used.

Remaining to-do list: audit the contact I2 and uniform parametrix, handle
boundary and regulator matching, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.
# Smooth RN bolt and magnetic curvature extension

This verifies the local geometric extension assumed in
`rn-weitzenbock-curvature-bound.md` for a fixed nonextremal RN seed and the
standard static magnetic ansatz. It does not identify the two physical copy
maps or their finite-cut source regulator.

Let

  g=F(r)d tau^2+dr^2/F(r)+r^2 dOmega^2,               (1)

with F smooth, F(r_+)=0, F'(r_+)>0 and F positive immediately outside the
bolt. Set kappa=F'(r_+)/2, choose the thermal period 2pi/kappa, and put

  rho(r)=integral_(r_+)^r F(x)^(-1/2) dx,
  theta=kappa tau.                                     (2)

The inverse function has the smooth even expansion

  r-r_+ = (kappa/2) rho^2 + O(rho^4),                 (3)

and in fact r is a smooth function of rho^2 near zero. This follows by
factoring F(r)=(r-r_+) f(r) with f smooth and positive: rho is
sqrt(r-r_+) times a smooth positive function of r-r_+, so the inverse
function theorem applies to rho^2. Equation (1) becomes

  g=d rho^2 + rho^2 a(rho^2) d theta^2
                        + r(rho^2)^2 dOmega^2,           (4)

where a is smooth and a(0)=1. In Cartesian disk coordinates
x=rho cos(theta), y=rho sin(theta), the difference between the first two
terms in (4) and dx^2+dy^2 is

  [a(rho^2)-1]/rho^2 (x dy-y dx)^2.                  (5)

The quotient is smooth in rho^2, so (5) extends smoothly across x=y=0.
The sphere factor is likewise smooth and nondegenerate there. The bolt is
the interior submanifold {0} x S^2, not a new boundary. The period in (2)
is essential for this regular disk coordinate.

For a magnetic charge q in the convention of
`global-magnetic-partner-matching.md`, use the two smooth spherical gauges

  A_N=(q/2)(1-cos vartheta) d phi,
  A_S=-(q/2)(1+cos vartheta) d phi.                    (6)

Their curvature is (q/2) sin(vartheta) d vartheta wedge d phi, and their
transition is single-valued under the source's integral charge convention.
These one-forms and transitions are independent of disk coordinates, so
the magnetic line bundle and connection pull back smoothly to the full disk,
including its center. The disk has its unique extending spin structure;
the minus sign of a rotating polar spin frame after a full revolution is a
frame transition, not a singularity of the Cartesian spin bundle.

A smooth metric and connection on a compact neighborhood of the bolt have
bounded curvature and Weitzenbock endomorphism there. Combined with the
outer-collar calculation, this establishes the bounded-curvature ingredient
for this fixed standard geometric model. The actual physical copy
identification, its spin and magnetic transitions, and the source boundary
map must still be matched to that model; equality of magnetic charge alone
does not prove the matching. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the physical copy and source maps, establish
mixed H3 regularity and regulator matching, complete prior art and manuscript,
and certify supported claims in Lean on GCP.
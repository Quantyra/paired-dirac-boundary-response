# Boundary-preserving localization for the mixed H3 estimate

This establishes the cutoff step needed to use local mixed-boundary
regularity on the RN charts of `rn-cut-uniform-boundary-charts.md`. It does
not prove the local model estimate, the physical domain identification, or
a moving-cut regulator limit.

Let L be a second-order operator with uniformly bounded chart coefficients
through the orders needed below, and let the smooth boundary conditions be

  (1-P) gamma f=0,
  P(gamma nabla_n f + S gamma f)=0.                    (1)

Here P is a smooth projector and S a zeroth-order endomorphism. In each
boundary-normal half-chart choose a scalar cutoff chi whose normal derivative
vanishes at the boundary: partial_n chi|boundary=0. A tangential cutoff times
a normal cutoff constant near the boundary has this property. Then

  (1-P)gamma(chi f)=0,
  P(gamma nabla_n(chi f)+S gamma(chi f))
    = chi P(gamma nabla_n f+S gamma f)
       +(partial_n chi) P gamma f=0.                    (2)

Thus localization preserves both homogeneous boundary conditions; no
inhomogeneous Robin trace is generated. Cutoffs on nested fixed-radius
half-charts can be chosen with uniformly bounded derivatives. The same
construction applies to interior charts without boundary conditions.

Assume for the moment the following uniform local H3 estimate for compactly
supported smooth g satisfying (1) in a fixed half-chart:

  ||g||_H3 <= C (||L g||_H1+||g||_H1).                 (3)

This is the analytic input still requiring a precise theorem or a proof.
For g=chi f, the commutator is a first-order operator with uniformly bounded
coefficients and their first derivatives, so

  ||[L,chi]f||_H1 <= C_chi ||f||_H2.                    (4)

Applying (3) with a cutoff equal to 1 on a smaller chart yields an H3 bound
there in terms of the H1 norm of Lf and an H2 norm of f on a larger chart.
Uniform local interpolation on fixed half-charts gives, for every eps>0,

  ||f||_H2 <= eps ||f||_H3 + C_eps ||f||_L2,            (5)

with the usual nested-cutoff form. Absorbing the eps term and using a finite
nesting/standard local interpolation argument gives the target estimate with
Lf in H1 and f in L2 on the larger chart. The constants are uniform if the
local estimate (3), coefficient bounds, chart radii and cutoff norms are
uniform. This is an implication from (3), not a proof of (3).

The same conclusion can be applied first to smooth domain elements and then
to heat outputs only after the required regularity/density approximation is
justified for the actual composition domain. In particular, the principal
complementing-symbol calculation and coefficient bounds alone are not the
missing theorem. No numerical run or Lean certificate is claimed.

Remaining to-do list: establish (3) from an applicable mixed-boundary
regularity theorem, verify the physical bundle and source map, complete the
regulator and prior-art audits, prepare the manuscript, and certify supported
claims in Lean on GCP.
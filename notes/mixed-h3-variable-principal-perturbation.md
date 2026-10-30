# Small-chart perturbation of the mixed Robin H3 estimate

This supplies an a priori variable-principal-coefficient step for the local
mixed problem. It assumes a uniformly controlled frame in which the boundary
projector is constant and the boundary normal derivative has the form below.
It does not prove weak-solution regularity or the physical bundle matching.

On the half-space x_n>=0, fix an orthogonal fiber projector P and consider
smooth compactly supported f satisfying

  (1-P)f|_0=0,   P(partial_n f+S(x')f)|_0=0.          (1)

Assume S and its derivatives through order three are bounded. Let

  L f = -sum_(i,j) a^(ij)(x) partial_i partial_j f
                   + sum_i B^i(x) partial_i f+C(x)f,   (2)

where the real symmetric a^(ij) is scalar on the fiber, uniformly elliptic,
its derivatives through order two are uniformly bounded, and B^i,C and
their first derivatives are uniformly bounded. Suppose at a boundary point
x=0 the frozen matrix has a^(nj)(0)=0 for j<n. This is true in a
boundary-normal coordinate system, or in the block-diagonal RN coordinates
at the cut. Suppose f is supported in a half-ball of radius r centered at 0.

The frozen operator L_0=-a^(ij)(0) partial_i partial_j becomes -Delta after
a fixed linear change of tangential coordinates and positive rescaling of
the normal coordinate. This change preserves the half-space and the
Dirichlet/Robin split; the transformed S has uniformly bounded derivatives
when the ellipticity and coefficient bounds are uniform. The estimate of
`mixed-halfspace-robin-h3.md` therefore gives

  ||f||_H3 <= C_0 (||L_0 f||_H1+||f||_L2),             (3)

with C_0 uniform under the displayed bounds. Uniform Lipschitz control of a
and support in the radius-r chart give

  ||(L-L_0)f||_H1
    <= C r ||f||_H3 + C ||f||_H2.                      (4)

The small term comes only from the undifferentiated coefficient difference
multiplying third derivatives; a derivative hitting that difference and all
lower-order terms are controlled by H2. Choose one r>0, independent of the
cut and field cutoff, small enough that C_0 C r<=1/2. Combining (3)-(4),
using H2 interpolation against H3 and L2, and absorbing gives

  ||f||_H3 <= C (||L f||_H1+||f||_L2).                 (5)

All constants depend only on the common ellipticity, coefficient, S, and
chart bounds, not on the chosen member of the family. Cutoff derivatives
and the passage from this compactly supported a priori estimate to a nested
local estimate are treated in `mixed-h3-robin-localization.md`.

For the RN square, the rescaled metric charts give a scalar uniformly
elliptic principal coefficient with zero normal-tangential cross terms at
the cut, and the radial Robin coefficient has the recorded uniform bounds.
To apply (5), one must still construct the uniformly controlled frame making
P constant, identify all boundary connection terms with a uniformly bounded
S, and justify H3 regularity and approximation for the actual square-domain
heat outputs. These steps are not consequences of the a priori estimate
alone. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the projector frame and weak regularity for the
physical square, match source and regulator, complete prior art and the
manuscript, and certify supported claims in Lean on GCP.
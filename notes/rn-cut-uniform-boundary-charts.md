# Uniform boundary charts and gauges for fixed RN cuts

This constructs the local chart and gauge bounds used in the mixed-boundary
regularity route for the fixed RN model. It does not prove the H3 estimate or
identify the actual physical copy map with the model.

Take the physical metric (1) of `rn-moving-cut-uniform-trace.md`, with
smooth B and B(0)>0. Cover the compact thermal circle and sphere by finitely
many coordinate charts with smaller precompact subcharts, and use smooth
north/south monopole gauges on a finite refinement. For a point on the cut
u=delta, with tangential coordinates z_0=(tau_0,omega_0), define

  u=delta(1+x_0),   z=z_0+delta x',                   (1)

using the corresponding local coordinate differences. For all sufficiently
small delta, a fixed half-ball |x|<r, x_0>=0 maps inside the chosen charts
and the physical region u>=delta. Pick r<1/2 and small enough to avoid
periodic wrapping. Pullback of g is

  (1+x_0)^(-2)[b^2 B(delta(1+x_0))^(-1) dx_0^2
     + B(delta(1+x_0)) dx_tau^2
     + b^2 h_AB(omega_0+delta x_omega) dx_A dx_B].   (2)

Here h is the unit-sphere metric in the chosen chart. Uniform positivity of
B and the finite precompact chart family give common ellipticity bounds for
(2). For any fixed derivative order, derivatives in x are uniformly bounded:
normal derivatives of B carry powers of delta, and tangential derivatives
of h do likewise. The inverse metric has the same property. On these fixed
half-balls, a smoothly chosen orthonormal frame, its inverse and its spin
connection therefore have uniform finite-order coefficient bounds. Transition
between neighboring frames is smooth with corresponding bounds on their
common subcharts.

In a smooth monopole gauge, the original tangential connection one-form A
has uniformly bounded coordinate coefficients and derivatives on the finite
precompact cover. Its pullback under (1) has tangential coefficients
  A'_j(x)=delta A_j(z_0+delta x'),
and normal coefficient zero. Its x derivatives are uniformly bounded at
every fixed order; gauge transition functions are the pullbacks of the
fixed smooth unitary transitions. These statements concern local gauges and
are compatible with a nontrivial global magnetic line bundle. The copy map
must still identify the actual physical pullbacks with these gauge data.

Under the common physical-chart C5 bounds for the radial fields and bounded
interior extensions, E=exp(-f/2) and its inverse have uniform coefficients
and derivatives on these charts. The Dirac expression E D E and the
coefficients of its square consequently have uniform finite-order bounds up
to the order supported by those field derivatives. The boundary is x_0=0;
the adapted orthonormal normal and the projector have uniform local bounds
under the stipulated smooth folded bundle construction. The compact interior
and regular bolt can be covered by a fixed finite atlas, using the smooth
extension in `rn-bolt-metric-magnetic-extension.md`.

This is a local bounded-geometry construction for the fixed seed, not a
uniform statement across varying RN parameters. It provides no theorem that
converts these coefficients and complementing symbols into an H3 estimate;
that estimate, the realization equivalence, and global physical source map
remain separate. No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the uniform mixed H3 estimate, verify the
physical copy and source maps and regulator, complete prior art and the
manuscript, and certify supported claims in Lean on GCP.
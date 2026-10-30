# Proper-distance movement of a collar insertion

The frozen [rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md), section 3, defines y as proper distance on the physical outer half, fixed at the seed. Thus a direction u(y) understood as a function on that fixed seed coordinate is a fixed multiplier in [the fixed-space mixed identity](paired-positive-time-mixed-identity.md); no moving-insertion term is generated merely by using its collar expansion. This is the convention in that section, not a proof that every later physical observable uses the same parametrization.

For comparison, consider an orbit metric g_0=dy²+a(y)² dτ² near the boundary and the conformal family g_r=e^(2r w(y))g_0, with the boundary fixed at y=0 and w independent of τ. The inward normal curves remain the same unparameterized curves. Their proper-distance coordinate from the boundary is

    Y_r(y)=integral_0^y exp(r w(s)) ds,
    partial_r Y_r(y)|_0 = W(y):=integral_0^y w(s) ds.       (1)

If an insertion is instead defined by the same profile in each moving proper coordinate, its pullback to the seed is u_r(y)=u(Y_r(y)), so

    partial_r u_r(y)|_0 = u'(y) W(y).                         (2)

For the source's collar directions u=c_u y³+O(y⁴L(y)) and w=c_w y³+O(y⁴L(y)), with their stated derivative bounds and L=1+log(1/y),

    W(y)=c_w y⁴/4+O(y⁵L(y)),
    partial_r u_r(y)|_0 = (3/4)c_u c_w y⁶+O(y⁷L(y)).       (3)

In particular this moving-coordinate insertion has zero jets through order five. Its derivatives through order three satisfy |partial_y^j(u'W)|<=C y^(6−j)L(y)^2, 0<=j<=3, on a fixed small collar, with C depending on the declared weighted bounds. This follows from the product rule, W'=w and the j<=4 bounds on u. The estimate concerns the local collar only; cutoff transitions and the global coordinate map need their own bounds.

In a fixed-space trace T(r,t)=Tr[M_(u_r) exp(−tL_r)], differentiation therefore gives both the operator term and

    Tr[M_(u'W) exp(−tL_0)].                                   (4)

Equation (4) is absent when u is fixed in the seed coordinate. Its high-order boundary vanishing does not by itself show that its trace, thermal/angular sum or regulator limit vanishes, nor does it determine the physical prescription. The direction dependence in (3) also makes this term bilinear in u and w, so it cannot be discarded solely as a first-order coordinate correction.

Equations (1)–(4) assume a purely radial conformal variation in the displayed collar. A tangentially dependent metric or a moving boundary needs the actual normal geodesic variation and may add terms. The physical spin/copy identification, global first-order domains, tangent subtraction and common regulator remain open. No numerical or Lean certification is claimed.

Remaining to-do list: confirm the convention for each physical observable and account for any moving insertion; prove the physical response and regulator bridge; complete novelty, manuscript and GCP Lean certification.

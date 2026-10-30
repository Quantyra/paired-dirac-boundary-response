# Fixed RN collar curvature in the Dirac energy estimate

This checks the bounded curvature input to
`finite-cut-graph-weitzenbock-route.md` for the fixed RN product collar and
an ordinary smooth magnetic line-bundle connection. It does not establish
the global folded bundle or the mixed H3 estimate.

Write the four-dimensional physical metric as

  g=u^(-2) ghat,
  ghat=b^2 B(u)^(-1)du^2+B(u)d tau^2+b^2 dOmega^2,    (1)

with fixed b>0, B smooth, B(0)>0. The compactified product metric has

  R_ghat=(2-B''(u))/b^2,
  |d u|_ghat^2=B(u)/b^2,  Delta_ghat u=B'(u)/b^2.    (2)

Here Delta=div grad and the scalar curvature of the round unit sphere is 2.
The two-dimensional factor has scalar curvature -B''/b^2, and its volume
density is constant in u. In dimension four the conformal transformation
formula for g=u^(-2)ghat gives

  R_g=u^2 R_ghat+6u Delta_ghat u-12|du|_ghat^2
     =[u^2(2-B'')+6u B'-12B]/b^2.                    (3)

This is uniformly bounded for 0<u<=u_0. The bound is independent of the
outer cut delta. It is a fixed-seed bound and does not assert uniformity
under changes of RN parameters.

For a magnetic connection whose curvature is F=q sin(theta)dtheta wedge
dphi with fixed q (up to the conventional imaginary unit), its only physical
orthonormal component has magnitude |q|u^2/b^2. Thus the pointwise Clifford
curvature endomorphism c(F) is bounded on the collar, with a constant
depending on q, b and the fixed fiber representation. The local gauge
potential need not be globally defined; the curvature and its norm are.

For the standard twisted spin Dirac operator, the Weitzenbock zeroth-order
term is the scalar-curvature term plus a fixed convention-dependent multiple
of c(F). Hence (3) and the magnetic estimate bound that endomorphism uniformly
on the outer collar. On the remainder of the fixed manifold, a uniform bound
follows if the metric and twisting connection extend smoothly across the
regular bolt and the remaining region is compact. This last smooth global
extension and the identification of the actual paired spin/twist bundle are
assumptions to verify, not established merely by (1).

Together with `rn-moving-cut-uniform-trace.md`, this supplies the curvature
and trace bounds in the conditional energy argument under the stated fixed
seed and bundle hypotheses. It does not prove the global Green and Gauss
identities for the chosen paired realization, the uniform square H3 estimate,
or a physical regulator limit. No numerical run or Lean certificate is
claimed.

Remaining to-do list: verify the actual bundled identities and bolt extension,
prove mixed H3 regularity and physical trace matching, complete regulator and
prior-art audits, prepare the manuscript, and certify supported claims in Lean
on GCP.
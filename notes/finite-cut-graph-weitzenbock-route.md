# Uniform graph bound from the Dirac boundary energy identity

This gives a concrete route to the graph hypothesis in
`finite-cut-shifted-form-coercivity.md`. It assumes the stated Weitzenbock
and boundary identities, uniform geometric bounds, and a uniform trace
inequality; it is not an independent reconstruction of the physical bundle.

Let D be a smooth Dirac-type expression on each physical finite cut, with
first-order domain V={f in H1: (1-P)gamma f=0}. Assume the Clifford and
Gauss conventions of `multiplier-square-boundary.md`: normal Clifford
multiplication preserves P, while the intrinsic boundary Dirac expression
A exchanges P and 1-P. Assume the standard Dirac energy identity, with signs
fixed by the chosen normal, has the form

  ||D f||_2^2 = ||nabla f||_2^2 + <f,R f>
                + <gamma f,(c(n) A + S_0) gamma f>_boundary, (1)

for smooth f in V, where R is a bounded interior endomorphism and S_0 a
zeroth-order boundary endomorphism. The exact sign of the last term does
not affect the estimate. This identity is an explicit hypothesis here; it
must be checked against the chosen connection, orientation, twisting and
Green convention. The tangential term vanishes because gamma f=P gamma f,
A exchanges the two P subbundles, and c(n) preserves them. No condition on
D f at the boundary is needed for (1).

Suppose ||R||_infinity and ||S_0||_infinity are bounded uniformly, and the
boundary trace satisfies, with a single C_T independent of cut,

  ||gamma f||_2^2 <= C_T ||f||_2 ||f||_H1.             (2)

Applying Young's inequality to the S_0 term in (1) and absorbing a fixed
fraction of ||nabla f||^2 gives a constant C_0 independent of the cut such
that

  ||f||_H1 <= C_0 (||D f||_2+||f||_2), f in V.        (3)

The extension from smooth f to V requires smooth boundary-compatible core
density in H1; this is a separate assumption in the actual bundle setting.
Uniform half-chart geometry with bounded overlap is a sufficient route to
(2), but it must be checked for the moving cuts.

Now let E=e^(-b/2) be a real scalar multiplier, with E and E^(-1) preserving
V and with common bounds on ||E||_infinity, ||E^(-1)||_infinity and
||dE||_infinity. Define D_b=E D E on V. The weak product rule gives
D_b f=E^2 D f + E c(dE)f. Consequently

  ||D f|| <= ||E^(-1)||_infinity^2 ||D_b f||
            + ||E^(-1)||_infinity ||c(dE)||_infinity ||f||. (4)

Combining (3)-(4) proves the desired graph estimate for D_b with a constant
uniform in both cut and field approximant. The same reasoning applies to
the complementary projector when the corresponding energy identity and
core-density hypotheses hold. The physical weighted W1 bounds supply the
multiplier part on the fixed RN seed, but do not establish the uniform
geometry, boundary identity or core density on their own.

This reduces uniform graph control to explicit geometric and local boundary
inputs. It does not supply the mixed square H3 estimate, prove any regulator
limit, or certify Lean. No numerical calculation is used.

Remaining to-do list: verify the energy identity and uniform trace geometry,
prove the mixed H3 estimate and physical trace matching, complete regulator
and prior-art audits, prepare the manuscript, and certify claims in Lean on
GCP.
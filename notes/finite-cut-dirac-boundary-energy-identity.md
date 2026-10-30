# Derivation of the finite-cut Dirac boundary energy identity

This derives the energy identity assumed in
`finite-cut-graph-weitzenbock-route.md` for a specified convention. Its
application still depends on the actual physical spin/twist connection,
Gauss decomposition, and uniform geometry; it does not prove those inputs.

Let n be the outward unit normal on a smooth compact cut. Use the convention
that the inner product is conjugate-linear in the first slot, the Clifford
normal c(n) is Hermitian with c(n)^2=1, and the Dirac expression D is
formally skew-adjoint. Assume the Green formula

  <D f,z> = <f,-D z> + <gamma f,c(n) gamma z>_boundary (1)

for smooth sections. Assume also the Weitzenbock formula and Gauss
boundary decomposition in the same convention:

  -D^2 = nabla* nabla + R,
  D = c(n)(nabla_n + K/2) + A.                         (2)

Here R is the curvature/twist endomorphism, K is the scalar boundary
curvature coefficient in this convention, and A is tangential. Then for
any smooth f, set z=Df in (1). Integration by parts for the connection
Laplacian gives

  <f,nabla* nabla f> = ||nabla f||^2
                        - <gamma f,gamma nabla_n f>_boundary. (3)

Substituting (2) into the Green boundary term gives

  c(n) gamma(D f) = gamma nabla_n f + (K/2) gamma f
                                      + c(n) A gamma f. (4)

The normal derivative terms in (3)-(4) cancel. Consequently

  ||D f||^2 = ||nabla f||^2 + <f,R f>
       + <gamma f,(K/2+c(n)A) gamma f>_boundary.       (5)

This is an identity for all smooth f; it does not impose the square-domain
condition on Df. If P is an orthogonal projector commuting with c(n), A
maps P boundary sections into (1-P) boundary sections, and gamma f=P gamma f,
then the tangential boundary inner product in (5) vanishes. Thus

  ||D f||^2 = ||nabla f||^2 + <f,R f>
                      + <gamma f,(K/2) gamma f>_boundary. (6)

The same conclusion holds for the complementary projector. A different
normal or Clifford convention changes the displayed signs consistently;
it must not be combined with (1)-(4) without conversion. The finite-cut
graph argument uses only uniform bounds on R and K and is insensitive to
the sign of the zeroth-order boundary term.

The algebra above verifies the energy identity from the named Weitzenbock,
Green and Gauss identities. It does not independently establish those
identities for the physical folded bundle, nor uniform curvature and trace
constants, core density, or the regular bolt chart. Those are necessary for
the physical application. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the physical identities and uniform geometry,
prove mixed H3 regularity and physical trace matching, complete regulator and
prior-art audits, prepare the manuscript, and certify supported claims in Lean
on GCP.
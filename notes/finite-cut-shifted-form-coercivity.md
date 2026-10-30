# Shifted form coercivity and the mixed conormal boundary condition

This checks two application steps for the mixed-boundary source discussed in
`mixed-boundary-regularity-prior-art.md`. It assumes the first-order graph
estimate and boundary-domain identifications; it does not establish their
uniformity or invoke the source's global well-posedness theorem.

Let D_b be a closed finite-cut realization on V=Dom D_b, and let
q_b(f,g)=<D_b f,D_b g>. Suppose, uniformly across the cuts and approximants,

  ||f||_H1 <= C_g (||D_b f||_2+||f||_2), f in V.       (1)

Then the shifted form q_b^mu=q_b+mu<f,g>, for any fixed mu>0, satisfies

  q_b^mu(f,f) >= c ||f||_H1^2,
  c = min(1,mu)/(2 C_g^2),                              (2)

uniformly. Indeed, square (1), use (a+b)^2<=2(a^2+b^2), and compare the
result to q_b^mu. The reverse boundedness of q_b^mu on H1 follows from
uniform bounds on the first-order coefficients. Thus a uniform graph
estimate supplies uniform shifted coercivity directly; no cut-uniform
Poincare inequality is needed for this particular shifted form argument.
This is a conditional implication, not an independent proof of (1).

For the boundary operator, assume the smooth Gauss decomposition and H2
composition-domain description of `multiplier-square-boundary.md`, and
write P for the allowed projection and S_b=K/2-(partial_n b)/2. With a fixed
normal convention the boundary conditions are

  (1-P) gamma f=0,    P(gamma nabla_n f + S_b gamma f)=0. (3)

In boundary-normal coordinates the principal symbol of L=D_b*D_b is
E^4 |xi|^2 Id. Choose a divergence-form representation of L whose leading
coefficient is E^4 g^(ij) Id, and let partial_n^L be its associated
conormal derivative using the same normal. Then, at the boundary,

  P partial_n^L f = E^4 P gamma(nabla_n f) + P A_0 gamma f, (4)

where A_0 is a zeroth-order boundary endomorphism determined by the chosen
connection and divergence-form convention. If the convention absorbs all
first-order terms in the interior, A_0 may be zero. Boundary-normal
coordinates remove the leading tangential-normal metric cross terms. On the
allowed trace bundle, (3) is consequently equivalent to

  (1-P) gamma f=0,
  P(partial_n^L f + B_b gamma f)=0,
  B_b=E^4 S_b - A_0,                                   (5)

with the normal orientation consistently used in both derivatives. The
formula for B_b is restricted to allowed input traces; an arbitrary
extension to the complementary fiber does not change the condition. If the
conormal convention has the opposite orientation, both normal terms and B_b
must be adjusted accordingly. Uniform bounds for B_b and its derivatives
follow only after verifying the corresponding physical geometry, multiplier,
connection and projector coefficient bounds.

Equation (5) identifies the formal structure with the vector-bundle mixed
Dirichlet/conormal-Robin form of the cited source. Applying any particular
regularity or well-posedness theorem still requires its precise coefficient,
boundary smoothness and coercivity hypotheses, as well as a uniform atlas and
proof that its weak realization is D_b*D_b. A global theorem's other
assumptions cannot be silently removed merely because (2) holds. No numerical
run or Lean certificate is claimed.

Remaining to-do list: prove the uniform graph and mixed regularity estimates,
verify actual bundle and conormal identification, complete regulator and
prior-art audits, prepare the manuscript, and certify claims in Lean on GCP.
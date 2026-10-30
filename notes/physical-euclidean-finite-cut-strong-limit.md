# Physical L2 positive-square limit of finite-cut realizations

This gives a strong-resolvent comparison for the ordinary physical Euclidean
L2 problem of `physical-euclidean-complete-dirac-domain.md`. It applies to
positive squares of finite-cut first-order realizations, which need not be
self-adjoint themselves. It does not identify canonical non-L2 boundary data,
a trace or determinant limit, or a Lean certificate.

Let X be the fixed complete smooth Euclidean exterior (or its finite disjoint
paired union), and let X_R increase to X by smooth outer cuts. Write H=L2(X)
and H_R=L2(X_R), with J_R restriction and J_R* extension by zero. Let D be
the unique closed physical Dirac realization from the cited complete-manifold
argument. For each cut let D_R be a closed densely defined realization of
the same differential expression on H_R, with the specified local projector
or any other boundary condition that contains compactly supported smooth
interior sections. Assume its closed positive quadratic form is
q_R(v)=||D_R v||^2 with form domain Dom D_R. Put L_R=D_R*D_R and L=D*D.

For any g in H set

    u_R=J_R*(L_R+1)^(-1)J_R g,    u=(L+1)^(-1)g.       (1)

Then u_R->u strongly in H, and the zero extensions of D_R J_R u_R converge
strongly to D u in H. In particular

    J_R*(L_R+1)^(-1)J_R -> (L+1)^(-1) strongly.        (2)

For the proof, the variational identity with the solution as test gives

    ||u_R||^2+||D_R J_R u_R||^2=<J_R g,J_R u_R>,      (3)

so the zero-extended pairs (u_R,D_R J_R u_R) are bounded in H x H. Any weak
subsequential limit (v,w) satisfies D v=w distributionally: test against
compactly supported smooth sections, which for large R lie strictly inside
X_R, and use the formal adjoint there. The complete-manifold result identifies
the maximal distributional L2 domain with Dom D, so v belongs to Dom D and
w=Dv. This does not differentiate the discontinuous zero extension at the
moving cut.

For a compactly supported smooth test phi, the finite-cut variational identity
eventually gives

    <D_R J_R u_R,D phi>+<u_R,phi>=<g,phi>.             (4)

Passing to the weak limit and using compactly supported smooth sections as a
graph core for D extends (4) to every phi in Dom D. Hence v=(L+1)^(-1)g=u.
The weak cluster point is unique, so the whole sequence converges weakly.
Finally, (3) and its limiting counterpart show convergence of the norms of
(u_R,D_R J_R u_R) to ||(u,Du)|| in H x H; weak convergence plus norm
convergence gives the stated strong convergence.

The proof uses only interior core inclusion and positivity, so it does not
claim that the finite-cut local projector equals an infinity projector at
finite R. It describes the ordinary physical Euclidean L2 closure, not the
separate spatial canonical boundary-data problem. Strong convergence does
not give operator-norm or trace-norm convergence, convergence of heat traces,
metric derivatives, finite parts or determinants. Those require separate
uniform estimates and the physical regulator and source prescription. No
numerical calculation is used.

Remaining to-do list: specify and match the physical determinant and canonical
source spaces, prove the full response and common regulator, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.
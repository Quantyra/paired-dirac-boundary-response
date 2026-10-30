# Compact paired seed heat trace from its graph estimate

This removes the separate seed heat-trace assumption from `fixed-seed-uniform-heat-inputs.md` under its compact H1 graph hypotheses. It does not prove that the physical source satisfies those hypotheses or that constants are uniform when the seed geometry changes.

Let X be a fixed compact smooth two-dimensional Riemannian manifold with smooth boundary, E a fixed finite-rank Hermitian bundle, and D a closed first-order realization with domain V a closed subspace of H1(E). Assume the inclusion V->L2 is compact and

  ||psi||_H1 <= K (||D psi||_2+||psi||_2), psi in V.       (1)

The norm uses a fixed smooth metric and connection. Put L=D*D with form domain V, and let A_N be the nonnegative connection Laplacian with Neumann form domain H1(E). Since ||psi||_H1²=||psi||²+||nabla psi||² for this norm, (1) implies the form inequality

  ||D psi||² >= (1/(2K²)) ||nabla psi||²-||psi||².       (2)

The elementary step is (a+b)²<=2(a²+b²); any equivalent fixed H1 norm only changes constants. By compact embedding and min-max, with eigenvalues counted with multiplicity,

  lambda_j(L) >= (1/(2K²)) lambda_j(A_N)-1.                (3)

The comparison remains valid although V is a proper subspace of H1: the min-max infimum for L is taken over fewer j-dimensional subspaces. The Neumann connection Laplacian has the standard compact two-dimensional heat bound Tr exp(-t A_N)<=C_N t^-1 for 0<t<=t1. This follows from the classical heat expansion or elliptic Weyl estimate for a smooth compact boundary problem; it is an imported theorem, not a numerical certificate. Combining it with (3) gives

  Tr exp(-tL) <= exp(t) Tr exp[-t A_N/(2K²)]
                 <= C t^-1, 0<t<=t0,                       (4)

where C depends on the fixed metric, bundle, K and t0. Adjust t0 or C for the finite interval if t/(2K²) exceeds t1.

For a fixed real W1,infinity multiplier family D_b=E_b D E_b satisfying the common-domain and bounded B,G assumptions of `fixed-seed-uniform-heat-inputs.md`, its reverse graph inequality and min-max comparison therefore give the required uniform t^-1 bound with a constant depending only on the fixed seed and B,G. Scalar weight preservation and the Clifford product rule then supply the all-set Davies estimate there. Thus the trace input is a consequence of the fixed compact seed graph bound plus standard Neumann heat theory; it is not an extra physical admission assumption.

The original paired orbit must still be shown to be this fixed compact manifold with the declared H1 domain and regular interior bolt, and the graph constant and metric equivalences must be uniform over any family for which a uniform result is claimed. Cut-dependent domains, magnetic/bundle matching, geometric vertices and the common regulator remain separate. No Lean certification is claimed.

Remaining to-do list: verify the physical compact seed and graph hypotheses, complete gluing and response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
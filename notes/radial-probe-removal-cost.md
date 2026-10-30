# Cost of removing the auxiliary radial probe

This quantifies the extra smoothing in
`localized-radial-hilbert-schmidt-probe.md`. It gives a joint upper bound for
the probed model resolvent and an obstruction to removing the probe by
boundedness alone. It does not establish a physical trace or Lean theorem.

Use the Dirichlet/Neumann half-line Laplacian J of that note and let
chi be a nonzero scalar in L² intersect L-infinity. For epsilon>0 define

    S_epsilon=M_chi (1+epsilon J)^(-1/2).                 (1)

The Green kernels of (1+epsilon J)^(-1) are

 G_(D,N)(x,y)=(1/(2 sqrt(epsilon)))
    [exp(-|x-y|/sqrt(epsilon)) ∓ exp(-(x+y)/sqrt(epsilon))]. (2)

The trace-on-the-diagonal argument from the preceding note gives, for each
finite fiber choice,

    ||S_epsilon||_2² <= C epsilon^(-1/2)||chi||_2².        (3)

For each Dirichlet component, dominated convergence applied to
1-exp(-2x/sqrt(epsilon)) shows its contribution is asymptotic to
||chi||_2²/(2 sqrt(epsilon)); the same leading term holds for Neumann.
Thus ||S_epsilon||_2² is of order epsilon^(-1/2) for fixed nonzero chi.

Insert S_epsilon in place of S_rad in the earlier probed resolvent estimate.
For a two-dimensional angular sphere it gives

    ||S_(epsilon,tau)* D_ell(z) S_(epsilon,tau)||_1
       <= C_z,H ||chi||_2² sqrt(ell) epsilon^(-1/2)
                                      tau^(-7/4),         (4)

where S_(epsilon,tau)=S_epsilon tensor exp(-tau A²/2). Hence
ell=o(epsilon tau^(7/2)) is a sufficient joint condition for this upper
bound to tend to zero. All separated-model and angular-heat hypotheses of
the preceding note remain in force.

Spectral calculus gives (1+epsilon J)^(-1/2)->I strongly, so S_epsilon
converges strongly to M_chi. This does not by itself give trace-norm removal
of the probe. For example, if the bounded middle operator is the identity,

    ||S_epsilon* I S_epsilon||_1 = ||S_epsilon||_2²

is of order epsilon^(-1/2) and diverges, while its strong limit is
M_|chi|². This example does not show divergence for the actual resolvent
difference; it shows that boundedness and strong convergence alone cannot
justify the desired trace-norm passage. A proof must exploit additional
smoothing, subtraction or cancellation of that specific difference and
control all three limits together.

The physical insertion, angular regulator, boundary and bolt have not been
matched to this auxiliary model. No numerical calculation is used.

Remaining to-do list: prove a physical probe-removal or subtraction estimate,
complete the boundary and response audit, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
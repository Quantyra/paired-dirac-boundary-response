# Heat-damped zero-energy angular boundary mismatch

This is an exact consequence of the zero-energy boundary-plane calculation in `finite-cut-angular-boundary-nonuniformity.md`, combined with the stipulated magnetic sphere spectrum in `source-angular-zero-mode-allocation.md`. It is a comparison of angular projection matrices, not the physical square heat kernel or its spectral-dependent boundary map.

Let A_delta>0 be the collar integral in the preceding note, and let P_mu,delta and P0 be the two rank-one planes. For real lambda,

 |sinh lambda|/sqrt(cosh(2 lambda)) <= tanh |lambda| <= |lambda|. (1)

Thus ||P_mu,delta-P0||<=A_delta |mu|. The difference of the two rank-one projections has two nonzero singular values equal to this norm, so its trace norm is at most 2 A_delta |mu|. At mu=0 the planes agree exactly.

Let H_ang=|D_q|²/b² on the declared magnetic sphere, and identify mu with its signed eigenvalues. For fixed charge q and radius b, the nonzero values are ±sqrt(n(n+q))/b with combined multiplicity d_n=2(q+2n), n>=1. Multiplying the direct-sum difference by exp(-t H_ang) and summing singular values gives, for 0<t<=1,

 ||(P_delta-P0) exp(-t H_ang)||_1
    <= 2 A_delta sum_(n>=1) d_n |mu_n| exp(-t mu_n²)
    <= C_(q,b) A_delta t^(-3/2).                         (2)

The last inequality uses d_n=O(n), |mu_n|=O(n), mu_n²>=n²/b² and a Gaussian sum. The finite zero sector contributes zero to this particular plane difference; this does not eliminate its separate physical action. In operator norm, (1) also gives

 ||(P_delta-P0) exp(-t H_ang)||
    <= A_delta /sqrt(2 e t).                              (3)

Consequently the damped mismatch tends to zero in trace norm at every fixed positive t. For the standalone integral against dt/t over [epsilon,1], (2) gives O(A_delta epsilon^(-3/2)); a joint path with A_delta=o(epsilon^(3/2)) is sufficient for this angular matrix quantity. No path independence or physical cutoff exponent is asserted.

The heat factor here is an independently inserted angular spectral multiplier. It is not automatically a factor of the full nonconstant Weyl square, and the transported plane at nonzero spectral parameter and the removed-collar source term are absent. Equations (2)--(3) therefore do not prove convergence of the full resolvent, heat response, physical boundary condition or regulator. Those require the actual domains, flux and source estimates, as well as angular and thermal normalization. No Lean certification is claimed.

Remaining to-do list: establish spectral-dependent physical boundary matching and full heat comparison, complete the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

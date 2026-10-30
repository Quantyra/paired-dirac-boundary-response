# Paired product-domain closure from the source Clifford matrices

This checks the local matrices and constructs the closed product operator used in [the corrected mode factorization](product-sphere-mixed-response.md). It is an ordinary argument under explicit orbit-domain and common-bundle hypotheses, not an independent identification of the physical pullbacks or a Lean certificate.

The frozen [paired-phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md) displays

    gamma_tau=−tau_3 tensor sigma_3,
    gamma_n=1 tensor sigma_1,
    gamma_A=−tau_3 tensor sigma_2 tensor gamma_(A,S),
    chi=tau_3 tensor sigma_1.

Thus the self-adjoint orbit chirality Gamma=i gamma_n gamma_tau is

    Gamma=−tau_3 tensor sigma_2,   Gamma²=1,
    {Gamma,gamma_n}={Gamma,gamma_tau}={Gamma,chi}=0,
    gamma_A=Gamma tensor gamma_(A,S).                         (1)

With the source's D_(S,E)=i D_(S,herm) convention, the product differential expression is D_b tensor 1+i Gamma tensor B, where B=D_(S,herm)/b0. The sign convention is the one used in the source; the square is insensitive to reversing all sphere eigenvalue signs.

Assume the actual orbit domains are the complementary H1 projector domains V and V*, that the bulk orbit expression is formally skew, and that Gamma is a globally defined parallel grading. Equation (1) then gives Gamma V=V* and D_b* Gamma=Gamma D_b on V, including the scalar congruence family. For each real sphere eigenvalue mu, P_mu=D_b+i mu Gamma has domain V and

    ||P_mu psi||² = ||D_b psi||²+mu²||psi||².                (2)

To verify the vanishing cross term, the domain relation implies <D_b psi,Gamma psi>=<psi,D_b* Gamma psi>=<psi,Gamma D_b psi>, so this scalar is real; multiplication by i mu makes its real part zero. Equation (2) is an exact graph identity, not a numerical estimate.

Let (e_j) be a complete orthonormal sphere eigenbasis, B e_j=mu_j e_j, including multiplicities and zero modes. Define P initially on finite sums psi_j tensor e_j with psi_j in V by applying P_mu_j on each component. Its graph norm is

    sum_j [||psi_j||²+||D_b psi_j||²+mu_j²||psi_j||²].      (3)

Because D_b is closed, completing this finite-sum core gives the closed operator on precisely the sequence domain where (3) is finite. Spectral truncation is a core in this graph norm. Its adjoint is the direct sum of P_mu_j*, and [the mode argument](product-sphere-mixed-response.md) gives its positive square as the direct sum of D_b*D_b+mu_j². Thus the tensor-sum square and positive-time heat factorization hold for this explicitly constructed closed product realization.

This removes the need to assume a core separately for that construction. To call it the physical operator, one must still show that the physical global spin/copy and magnetic identifications, product frame and boundary realization give this closure. The source states the corresponding square separation; the local matrix calculation and constructed core do not independently prove its physical pullback. Varying the sphere geometry, twisting connection or boundary coupling invalidates the fixed-mode argument until the new domain is analyzed. This is not a curved trace-remainder or regulator proof.

Remaining to-do list: match the constructed product closure to the physical bundle and domain, complete the response and novelty audit, prepare the manuscript and certify supported results in Lean on GCP.

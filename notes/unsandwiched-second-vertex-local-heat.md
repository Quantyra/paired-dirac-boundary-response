# Unsandwiched second-vertex trace from local heat factors

This gives a sufficient fixed-time criterion for the B_t hypothesis in `conformal-second-vertex-all-positions.md`. It uses stronger, explicitly stated off-diagonal smoothing and boundary-uniformity hypotheses that are not established here for the physical moving cut. It does not prove the full mixed response or a regulator limit.

On a four-dimensional smooth finite cut let L>=0 be the square realization, K_s=exp(-sL), and let V be the Hermitian bulk differential expression of the mixed second form. Assume a uniformly locally finite cover by fixed-size interior or boundary charts, a smooth partition {chi_j} with sum chi_j=1, and a smooth square partition {eta_k} with sum eta_k²=1, with uniform derivative bounds. Assume chart volume-growth counting at most exponential: the number of centers within distance R of a center is at most C exp(CR), uniformly in the cut. The local Sobolev embedding H3 -> L2 on each chart is Hilbert--Schmidt in dimension four, with uniform embedding constants. This last assertion requires the stated uniformly controlled chart and boundary geometry.

In these frames write V=sum_(|alpha|<=2) a_alpha nabla^alpha. For each j let A_j be the sum of the local W3,infinity norms of the coefficients a_alpha on an enlarged chart. Assume

  sum_j A_j <= A,                                         (1)

uniformly in the cut and approximation. Assume further that, for s in [t/2,t], the localized half-heat factors satisfy uniformly

 ||chi_j V K_(s/2) eta_k||_2
       <= C_t A_j exp[-c d(j,k)²/t],
 ||eta_k K_(s/2)||_2 <= C_t.                             (2)

Here the first estimate follows from a uniform localized H5 off-diagonal heat estimate, the product rule through three derivatives of the coefficients, and the H3 Hilbert--Schmidt embedding; the second follows from local H3 smoothing and the same embedding. The Gaussian off-diagonal estimate with derivatives, including boundary charts and cut-uniform constants, is an explicit hypothesis: the previously established fixed-time diagonal bounds alone do not supply it.

Insert both partitions and split the heat operator:

 V K_s = sum_(j,k) [chi_j V K_(s/2) eta_k]
                         [eta_k K_(s/2)].                (3)

The product of the two factors is trace class. Gaussian decay and the uniform exponential chart-counting bound imply sup_j sum_k exp[-c d(j,k)²/t]<infinity for fixed t. Schatten Holder and (1)--(2) thus yield an absolutely convergent trace-norm sum and

 sup_(s in [t/2,t]) ||V K_s||_1 <= C'_t A.              (4)

If V is Hermitian on the relevant smooth core and the adjoint/heat products extend as assumed, the same bound holds for K_s V by taking adjoints. Local Green boundary forms are separate and cannot be silently included in V. Formula (4) therefore verifies the bulk portion of B_t under (1)--(2), not the boundary contribution or the physical-domain hypotheses.

For the recorded radial cubic/log directions on a fixed RN seed, product coefficients of the mixed second vertex are combinations of u,w and their first two physical derivatives. If their derivatives through order three have the corresponding uniform physical-chart bounds O(U^6) at infinity, then A_j=O(U_j^6); a dyadic U shell has O(U^-3) fixed-radius physical charts, so its contribution to (1) is O(U^3), summable. This is a sufficient check on the coefficients, conditional on the asserted derivatives, interior extension and uniform charts; it does not prove (2) or uniform moving-boundary regularity. The fixed-time constants may grow as t->0.

No complete regulator, physical trace normalization or Lean certification follows from this criterion.

Remaining to-do list: establish the derivative off-diagonal and moving-boundary hypotheses, account for any mixed second-vertex boundary form, control ordered first vertices and regulator, finish the manuscript and certify supported claims on GCP.

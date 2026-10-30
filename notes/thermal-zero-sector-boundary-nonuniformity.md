# Thermal nonuniformity in the zero angular sector

This is an exact first-order model calculation supplementing `euclidean-thermal-boundary-spectral-parameter.md`. It does not identify a square-resolvent boundary condition or the physical lowest-Landau-level action.

For mu=0 the canonical homogeneous Euclidean mode equation has z=-i nu, with fixed antiperiodic thermal frequency nu. The transport generator in `frequency-dependent-collar-transport.md` is nu sigma_2. Across a collar of canonical length D>0, the transported line from v_+=(1,1)/sqrt(2) is spanned by

 exp(nu D sigma_2)v_+=cosh(nu D)v_+ - i sinh(nu D)v_-.

The sign of the imaginary term changes with the direction of transport but not its norm. Normalizing this vector and comparing the orthogonal projection with P0=|v_+><v_+| gives

 ||P_(0,nu,D)-P0||=|sinh(nu D)|/sqrt(cosh(2 nu D)).  (1)

For each fixed nu it tends to zero as D->0, but the antiperiodic thermal lattice is unbounded. Therefore for every D>0 the supremum over thermal modes is 1/sqrt(2). As in the angular case, the direct-sum projections converge strongly but not in operator norm when D->0.

With an explicitly inserted thermal heat multiplier, the rank-two trace norm and (1) give, for 0<t<=1,

 sum_(k in Z) ||P_(0,nu_k,D)-P0||_1 exp(-t nu_k²)
      <= 2D sum_k |nu_k| exp(-t nu_k²)
      <= C_T D t^-1.                                    (2)

For q fixed angular zero modes, multiply by q, with no extra angular sign degeneracy. Equation (2) is a first-order boundary-plane diagnostic. It does not remove or compute the source's separately allocated lowest-Landau-level action, and its thermal multiplier is not an identified full square heat kernel. The actual square spectral parameter, inhomogeneous collar source, domain and common regulator remain open. No Lean certification is claimed.

Remaining to-do list: derive the actual square boundary transport and physical normalization, complete the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

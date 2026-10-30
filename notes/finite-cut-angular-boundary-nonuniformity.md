# Angular nonuniformity of the zero-energy transported boundary plane

This sharpens the exact test in `finite-cut-boundary-transport.md`. It concerns only the zero-energy separated collar equation and does not establish the physical square's full spectral-dependent boundary map or regulator limit.

Let A_delta=integral_(x_delta)^x_infinity a(x) dx be finite and positive for every finite cut, with A_delta->0 as the cut approaches infinity. For an angular eigenvalue mu, the plane transported from the zero-angle infinity condition to the cut is spanned by

 v_mu,delta=[cosh(mu A_delta)v_+ + sinh(mu A_delta)v_-]
                   /sqrt(cosh(2 mu A_delta)),             (1)

where v_± are orthonormal sigma_1 eigenvectors. Let P_mu,delta be the orthogonal projection onto this line, and P_0 the projection onto span(v_+). For normalized vectors, the norm of the difference of rank-one projections is the sine of the angle between their ranges. Thus

 ||P_mu,delta-P_0||
   = |sinh(mu A_delta)|/sqrt(cosh(2 mu A_delta)).       (2)

For every fixed mu this tends to zero as delta->0. But the magnetic sphere Dirac spectrum contains angular eigenvalues of unbounded magnitude. For each fixed delta with A_delta>0, taking |mu|->infinity gives

 sup_mu ||P_mu,delta-P_0||=1/sqrt(2).                    (3)

The supremum need not be attained; it is the limit along the unbounded spectrum. The global direct-sum projection difference therefore does not converge to zero in operator norm as the cut is removed. On the other hand, the sector projections converge strongly on the angular Hilbert-space direct sum: finite mode sums converge by (2), and the projection differences are uniformly bounded, so density extends this to every square-summable vector.

This distinguishes fixed-mode/strong convergence from a uniform all-mode boundary comparison. It does not exclude trace-norm convergence after heat damping and spatial localization, and the existing shifted-contour estimates use extra hypotheses to obtain such a result in their stipulated model. Nor does (3) describe nonzero energy, collar sources, the Euclidean square, or the actual physical Dirichlet-to-Neumann operator. The physical boundary matching and common regulator remain open. No Lean certificate or numerical physical margin is claimed.

Remaining to-do list: establish the actual spectral-dependent cut matching with mode summation, complete the physical mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

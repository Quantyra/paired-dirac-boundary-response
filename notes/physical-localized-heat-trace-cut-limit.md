# Interior-localized physical heat trace at the finite-cut limit

This strengthens `physical-euclidean-finite-cut-strong-limit.md` for a fixed
smooth compactly supported insertion strictly inside the physical Euclidean
manifold. It does not control an insertion reaching infinity, the full heat
trace, metric derivatives, a determinant or Lean certification.

Use the complete smooth four-dimensional physical manifold X, its closed
Dirac realization D, the exhaustion X_R, and finite-cut realizations D_R of
the preceding note. Put L=D*D, L_R=D_R*D_R, and let J_R restrict to X_R.
Let chi be a smooth compactly supported scalar on X; its support, and the
support of a fixed slightly larger cutoff, lie strictly inside X_R for all
large R. The finite-cut operators have the same smooth elliptic differential
expression as L in this fixed interior neighborhood. Then, for any fixed
t>0 and any integer m>=3,

    M_chi J_R*(L_R+1)^(-m)J_R M_chi
       -> M_chi (L+1)^(-m) M_chi                    in trace norm,  (1)
    M_chi J_R*exp(-t L_R)J_R M_chi
       -> M_chi exp(-t L) M_chi                     in trace norm.  (2)

For real chi these localized operators are positive. The result holds with
complex chi as well, with the same multiplier on both sides as written.

First extend L_R to H=L2(X) by direct sum with zero on X\X_R. The preceding
strong resolvent result, together with strong convergence of the complement
projections to zero, gives strong resolvent convergence of these
self-adjoint nonnegative extensions to L. Functional calculus gives strong
convergence of their resolvent powers and positive-time semigroups. The
extra complement term disappears after the two chi multipliers for large R.
Thus both displayed localized families converge strongly to their limits.

Next use interior elliptic regularity on nested fixed compact neighborhoods.
For m=3, spectral calculus gives uniform bounds on
(L_R+1)^j(L_R+1)^(-3), j=0,1,2,3. Local elliptic estimates, iterated across
nested cutoffs, give

    ||chi (L_R+1)^(-3)J_R g||_H6 <= C ||g||_2.         (3)

For the heat operator the same local estimates and the spectral bounds on
(L_R+1)^j exp(-t L_R) give (3) with a constant C_t for every fixed t>0.
The constants are independent of R because the neighborhoods and all local
coefficients are fixed and do not meet the moving boundary. Applying a
right multiplier M_chi only changes the bound by ||chi||_infinity. The same
regularity estimates hold for the limiting physical operator.

On a fixed compact four-dimensional coordinate neighborhood, the embedding
H6->L2 has singular values O(j^(-6/4)); the result extends to the finite
bundle atlas. The ideal property and (3) therefore give a uniform tail

    s_j(T_R) <= C j^(-3/2)                              (4)

for either localized family T_R (with a t-dependent C for heat), and likewise
for its limit. In particular the tails of the trace norms tend to zero
uniformly in R. Strong convergence plus uniform H6 regularity also gives
operator-norm convergence: the images are relatively compact in L2, and the
adjoints converge strongly as well (for real chi the operators are
self-adjoint; for complex chi apply the same argument to the conjugate
multipliers). Equivalently, approximate the compact embedding by a fixed
finite-rank projection and use strong convergence on that finite-dimensional
range. The uniform trace tails then upgrade operator-norm convergence to
trace-norm convergence, proving (1)--(2). For m>3, factor off the uniformly
bounded extra resolvent powers and use the same H6 estimate.

The conclusion is for a fixed compact insertion: it does not cover the
boundary layer, a family of insertions whose support moves to infinity, or a
trace over the entire infinite-volume manifold. It gives no uniform t->0
bound, metric-variation interchange, physical finite-part prescription, or
canonical source equivalence. Those are required for the paper's actual
response and regulator. No numerical calculation is used.

Remaining to-do list: handle boundary-reaching insertions and physical source
matching, prove the full subtracted response and regulator, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
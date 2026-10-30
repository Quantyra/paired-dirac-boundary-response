# Complexification of the BV bridge remainder

This audits the complex extension asserted in
`complex-bridge-geometric-remainder.md`. It gives the ordinary analytic
argument for the auxiliary zero-image bridge under its stated W³/BV
hypotheses; it does not identify a physical Weyl operator or certify Lean.

Let f,g be real 2L-periodic W^{3,infinity} functions with f''',g''' BV,
0<m<=f<=M. Choose r>0 so that for |z|<=r,

    Re(f+zg)^2 >= m²/2.                                     (1)

For example, if G0=||g||∞>0, it suffices to take
r G0 <= min(m/4,m²/(16M)); expand the real part of the square and bound
the two perturbation terms. If g=0 the parameter derivative is zero.
For any bridge path, (1) gives Re A_z>=m²/2; in addition |A_z| and |B_z|
are bounded uniformly in z and h. Holomorphic functions A^(-a) and
exp(h²B²/(4A)), and all their finite partial derivatives required below,
are uniformly bounded on the resulting compact subset of Re A>=m²/2 for
|h|<=1.

Mollify f and g separately by the same positive periodic mollifier and
write f_{z,n}=f_n+z g_n. Because f_n>=m, the same radius works for all n
after possibly shrinking it using the common bounds. The W³ norms and the
total variations of f_n''' and g_n''' are uniformly bounded. For each n,
the zeroth, quadratic, quartic and higher exponential pieces are smooth in
h and holomorphic in z. The derivative expansions in the real BV proofs
are algebraic and remain valid over complex numbers. Their estimates use
only absolute values, BV translations, bounded derivatives of the finite-
dimensional functions above, and Gaussian bridge moments. Thus their
Taylor remainders have the same uniform bound K|h|^5 for all |z|<=r and n.
In particular, for the highest zeroth-term derivative, the pairing with
D(f_{z,n}²)''' uses the total variation of that complex measure; the
coefficient multiplying the measure is uniformly Lipschitz in the spatial
variable. No ordering or positivity of a complex measure is used.

For each fixed h, f_n->f and f_n'->f', and likewise g, uniformly. The
bridge integrands therefore converge uniformly in z on the closed disk,
by the finite-dimensional mean-value bound and bounded path-independent
majorants. The lower Taylor coefficients converge uniformly as well.
For the fourth-order coefficient, the measures Df_n''' and Dg_n'''
converge weak-* with uniformly bounded total variation; their continuous
pairing functions converge uniformly in z and space. Compactness of the
closed z disk makes the weak-* convergence uniform over that compact family
of pairing functions. The remaining coefficient terms converge by L1
convergence of third derivatives and uniform convergence of lower ones.
Hence the coefficient polynomials and bridge integrals converge uniformly
on the disk. The limit coefficient functions are holomorphic by the
Weierstrass theorem, and the uniform K|h|^5 estimate passes to the limit.
Cauchy's formula on |z|=r/2 then gives the derivative estimate stated in
the complex-bridge note.

This proof relies on the detailed real BV estimates, including their
measure-pairing and Gaussian-moment justifications; it does not separately
verify the imported smooth coefficient formula. The physical coordinate
chain rule, thermal and radial identifications, common regulator and
uniformity for varying global geometry remain separate. No numerical
calculation is used.

Remaining to-do list: complete the physical geometric and contact matching,
regulator and novelty audit, prepare the manuscript, and certify supported
claims in Lean on GCP.

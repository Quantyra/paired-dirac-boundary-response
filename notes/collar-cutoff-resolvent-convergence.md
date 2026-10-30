# Collar-cutoff convergence of the first-order resolvent

This is an ordinary operator-norm result under the fixed-domain hypotheses in [the multiplier argument](paired-multiplier-domains.md) and [the square-resolvent note](paired-square-resolvent.md). It connects the original weighted cutoff to the first-order operator; it does not prove the physical geometry, a trace limit or a Lean certificate.

Let D be a closed densely defined Dirac realization on a fixed Hilbert space H with domain V=Dom(D), the scalar W1,infinity product rule, and a Clifford multiplication estimate ||c(df)||<=||df||_infinity. Assume the real scalar multipliers E=exp(−b/2), E_epsilon=exp(−b_epsilon/2) and their inverses preserve V. Assume also a fixed bounded unitary involution J such that Q=J E D E and Q_epsilon=J E_epsilon D E_epsilon are skew-adjoint on V. These hypotheses include the required first-order boundary and partner identities; they are not inferred from the collar alone.

Suppose b_epsilon is obtained from b by cutting off its weighted remainder near the physical boundary as in [the cutoff note](weighted-remainder-cutoff.md), leaving the cubic jet and exterior unchanged. On a fixed collar with the stated j<=5 bounds,

    ||b_epsilon−b||_infinity <= C K epsilon^4 L(epsilon),
    ||d(b_epsilon−b)||_infinity <= C K epsilon^3 L(epsilon),    (1)

where L(epsilon)=1+log(1/epsilon). For a tangentially varying field, (1) also requires the corresponding mixed-derivative bounds; the one-dimensional construction alone does not supply them. Assume uniform bounds ||b||_infinity, ||b_epsilon||_infinity<=B and ||db||_infinity, ||db_epsilon||_infinity<=G.

## Graph estimate

Put D_b=E D E. The product rule gives, on V,

    D_b psi=E² D psi+E c(dE) psi.

The scalar exponential mean-value bound and its differentiated form yield

    ||E_epsilon²−E²||_infinity <= C_B ||b_epsilon−b||_infinity,
    ||E_epsilon dE_epsilon−E dE||_infinity
       <= C_B [||d(b_epsilon−b)||_infinity
                  + G ||b_epsilon−b||_infinity].

Therefore, with delta_epsilon=C(B,G,K) epsilon³ L(epsilon),

    ||(Q_epsilon−Q)psi|| <= delta_epsilon (||D psi||+||psi||).  (2)

The reverse graph estimate in the multiplier note controls ||D psi|| by a fixed multiple of ||Q psi||+||psi||. Thus, for another fixed constant,

    ||(Q_epsilon−Q)psi|| <= delta'_epsilon (||Q psi||+||psi||),
    delta'_epsilon=O(epsilon³ L(epsilon)).                      (3)

All constants are uniform over families with the declared common domain and bounds; they are not numerical admission margins.

## Resolvent and positive square

For M>0 let R=(M+Q)^−1 and R_epsilon=(M+Q_epsilon)^−1. Skew-adjointness gives ||R||,||R_epsilon||<=1/M and ||Q R||<=2. The resolvent identity, applied on the common domain, and (3) imply

    ||R_epsilon−R|| <= (delta'_epsilon/M)(2+1/M).             (4)

The same argument applies to M−Q with the same bound. For the positive square A=−Q², functional calculus or the established composition-domain factorization gives

    (M²+A)^−1=[(M+Q)^−1+(M−Q)^−1]/(2M).

Consequently the positive-square resolvents also converge in operator norm at O(epsilon³ L(epsilon)) for each fixed M>0, even when their square domains vary. This conclusion requires the stated skew-adjoint Q and the actual square identity, not an assumed common square domain.

These bounds can be combined with smooth physical-side approximants by choosing their mollification error small enough in W1,infinity while retaining the weighted bounds. They do not give trace-norm convergence, justify angular or thermal summation, or exchange the short-time common regulator. They also do not verify that the physical finite-cut realization has the assumed fixed domains or J.

Remaining to-do list: establish those physical hypotheses, bridge operator convergence to the complete trace and regulator, settle novelty, prepare the manuscript, and certify the supported theorems in Lean on GCP.

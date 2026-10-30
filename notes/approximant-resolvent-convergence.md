# Norm-resolvent convergence for admissible multiplier approximants

Status: conditional ordinary operator argument, not Lean-certified and not a
heat-trace or curved-response theorem. It connects the physical-side
[weighted approximants](weighted-remainder-cutoff.md) with the
[paired square factorization](paired-square-resolvent.md), once their local
collar convergence has been extended to a global scalar multiplier.

Assume the closed seed Q_0, the paired involution, and the exact domains in
the factorization note. Let b_n and b be real scalar multipliers on the same
fixed Hilbert space with ||b_n||_infinity, ||b||_infinity <= B and
||b_n-b||_infinity=d_n -> 0. Assume each exp(+/-b_n/2) and exp(+/-b/2)
preserves the seed and adjoint first-order domains, so all the real operators
and their square resolvents in that note exist on their actual domains. Fix
M>0. Then

    ||(L_b_n+M^2)^(-1)-(L_b+M^2)^(-1)||
        <= (exp(2B)+exp(4B)) d_n / M^2 -> 0.             (1)

To see this, write P_b=exp(b/2),
T_b^sigma=(M exp(b)+sigma Q_0)^(-1), and
S_b^sigma=P_b T_b^sigma P_b, where sigma is +1 or -1. The first-order
accretivity estimate gives ||T_b^sigma||<=exp(B)/M for both signs.
The elementary scalar mean value bound yields

    ||P_b_n-P_b|| <= (1/2) exp(B/2) d_n,
    ||exp(b_n)-exp(b)|| <= exp(B) d_n.

The inverse identity, with factors in their correct order, gives

    T_b_n^sigma-T_b^sigma
       = -T_b_n^sigma M(exp(b_n)-exp(b)) T_b^sigma,
    ||T_b_n^sigma-T_b^sigma|| <= exp(3B) d_n/M.

Expanding P_b_n T_b_n^sigma P_b_n-P_b T_b^sigma P_b into two outer
multiplier differences and one inverse difference shows

    ||S_b_n^sigma-S_b^sigma||
       <= (exp(2B)+exp(4B)) d_n/M.

The exact factorization expresses each square resolvent as the sum of the
two S terms divided by 2M, proving (1). The estimate uses only L-infinity
distance after the operator-domain assumptions have been established; it
does not infer those assumptions from L-infinity convergence. In particular,
W1,infinity approximants satisfying the H1 multiplier theorem provide one
conditional route to the domain hypotheses on a fixed smooth finite cut.

## Positive-time heat convergence on a fixed compact seed

For every fixed t>0, (1) implies operator-norm convergence of the heat
operators. Indeed, with R_b=(L_b+M^2)^(-1), the continuous function on
[0,M^(-2)] defined by f_t(x)=exp[-t(x^(-1)-M^2)] for x>0 and f_t(0)=0
satisfies exp(-t L_b)=f_t(R_b). Uniform polynomial approximation on this
compact interval and norm convergence of R_b prove the assertion.

There is also a conditional trace-norm conclusion on a fixed compact seed.
Assume all fields have ||db_n||_infinity, ||db||_infinity <= G, the graph
estimate in [the multiplier note](paired-multiplier-domains.md) applies with
the same B,G, and the seed heat operator exp(-s L_0) is trace class for
every s>0. The first-order domains are common, so their quadratic forms
have common domain Dom(D_0). The reverse graph estimate gives, on that
domain,

    ||D_b v||^2 >= (exp(-2B)/2)||D_0 v||^2
                     - (exp(-2B) G^2/4)||v||^2.

The same holds uniformly for b_n. The seed has compact resolvent; the common
form domain and this lower form bound give compact resolvent for each L_b_n.
By the min-max principle, with eigenvalues in nondecreasing order,

    lambda_j(L_b_n) >= (exp(-2B)/2) lambda_j(L_0)
                           - exp(-2B) G^2/4.

The resulting exponential sequence dominates the heat eigenvalues
summably for every fixed t>0. Operator-norm heat convergence implies
convergence of each ordered heat eigenvalue, so dominated convergence gives
convergence of the heat traces. For positive trace-class operators, strong
convergence together with convergence of traces implies trace-norm
convergence: approximate the limiting operator by a finite-rank spectral
projection and control the complementary positive trace; the off-diagonal
blocks are controlled by the trace Cauchy--Schwarz inequality. Therefore

    ||exp(-t L_b_n)-exp(-t L_b)||_1 -> 0,   for each fixed t>0.

In fact, convergence is uniform on every compact positive-time interval
[t_0,T], t_0>0. Put a=exp(-2B)/2 and c=exp(-2B)G^2/4. The preceding
eigenvalue bound gives the uniform estimate

    Tr exp[-(t_0/2)L_b_n] <= exp(c t_0/2) Tr exp[-a(t_0/2)L_0] = H.

For s,t in [t_0,T], the spectral theorem and
lambda exp[-(t_0/2)lambda] <= 2/(e t_0) imply

    ||exp(-t L_b_n)-exp(-s L_b_n)||_1
        <= (2H/(e t_0)) |t-s|.

The same bound applies to L_b. Choose a finite time grid of mesh eta; the
triangle inequality and the bound above reduce the supremum of the
trace-norm difference over [t_0,T] to its maximum at the grid points plus
4H eta/(e t_0). First take n to infinity at the finitely many grid points,
then eta to zero. This conclusion remains conditional on the same fixed-seed
and global uniform graph hypotheses.

This argument depends on the uniform global first-derivative bound, the
common form domain, and the seed trace-class hypothesis. It supplies neither
a small-time bound uniform in n nor convergence of differentiated and
subtracted traces. It also does not cover a changing cut or noncompact limit.

The collar approximation establishes only local convergence. A global
extension preserving the paired hypotheses must still be provided. Norm
resolvent convergence alone does not imply trace-norm convergence, uniformity
as M varies, preservation of local heat coefficients, or the common-regulator
curved remainder. No equality of square domains is used.

Remaining to-do list: verify the actual paired seed and global approximant
hypotheses, connect this convergence to the needed positive-time traces with
appropriate separate estimates, audit prior art, and formalize on GCP.

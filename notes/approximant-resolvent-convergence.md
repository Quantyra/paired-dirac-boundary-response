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

The collar approximation establishes only local convergence. A global
extension preserving the paired hypotheses must still be provided. Norm
resolvent convergence at this mass does not imply trace-norm convergence,
uniformity as M varies, preservation of local heat coefficients, or the
common-regulator curved remainder. No equality of square domains is used.

Remaining to-do list: verify the actual paired seed and global approximant
hypotheses, connect this convergence to the needed positive-time traces with
appropriate separate estimates, audit prior art, and formalize on GCP.

# Local reference trace for the full-Weyl cut comparison

This verifies the conditional reference estimate (2) in `full-weyl-localized-resolvent-cut.md` for the stated one-dimensional symmetric-lapse model. It does not establish the physical trace normalization, endpoint domain or common regulator.

Let P_b=sqrt(F)(H_mu+i nu)sqrt(F) and A_b=P_b*P_b as in `full-weyl-symmetric-lapse-transfer.md`, with a common first-order form domain V. On a fixed interval I of length L0 at the outer collar, assume F>=F0>0, F and F' uniformly bounded, and |a| uniformly bounded. The full operator may have an unbounded lapse away from I. On I its differential expression is

  P_b=-i F sigma_2 partial_s+F(mu a sigma_1+i nu)
                                    -(i/2) F' sigma_2.     (1)

Let Q=|nu|+|mu| ||a||_(infinity,I), and let C0 bound the zeroth-order coefficient in (1) by C0(1+Q). For every v in V, the elementary inequality (x-y)²>=x²/2-y² gives

 ||P_b v||²_I >= (F0²/2)||v'||²_I-C0²(1+Q)²||v||²_I.   (2)

Choose lambda_ref=1+C0²(1+Q)². Since ||P_b v||² outside I is nonnegative,

 q_b[v]+lambda_ref||v||² >= c||v'||²_I+||v||²_I
                                  +lambda_ref||v||²_(X\I), (3)

where c=F0²/2. The comparison form on the right is defined on H1(I) direct-sum L2(X\I), with Neumann conditions at both interval endpoints. The restriction of V embeds into this larger form domain; (3) therefore implies the inverse form order

 (A_b+lambda_ref)^(-1) <= B^(-1),                         (4)

where B is the decoupled comparison operator c(-partial_s²)_N+1 on I and lambda_ref on the complement. The fixed-interval Neumann resolvent has a finite diagonal bound C_I depending only on c,L0 and the finite fiber rank. It follows for S=sqrt(u), u>=0 bounded and supported in I, that

 ||S(A_b+lambda_ref)^(-1/2)||_2²
      =Tr[S(A_b+lambda_ref)^(-1)S] <= C_I integral_I u.   (5)

The same proof with u replaced by u 1_removed gives the removed-collar bound C_I U_ell. Approximate bounded measurable u by nonnegative simple functions and use monotone convergence for the trace; no derivative of u is needed. Constants are uniform over the cut and the stated coefficient ball, while lambda_ref is a polynomial in |mu| and |nu|.

Combining (5) with the localized resolvent identity in the preceding note discharges its reference-trace hypothesis for this model. It still assumes the actual form domain has the stated local H1 regularity and the same collar coordinate and measure, and it does not establish the physical boundary identification or any mode-uniform Poisson/domain hypothesis. The complete heat Hessian and regulator remain open. No Lean certification is claimed.

Remaining to-do list: verify physical domain and measure matching, complete the full-Weyl contour and mode estimates and response, establish regulator limits, resolve novelty, finish the manuscript, and certify supported claims on GCP.
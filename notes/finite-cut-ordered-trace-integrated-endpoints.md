# Integrated endpoint bound for compact-cut form vertices

This extends `finite-cut-ordered-trace-interior-regularization.md` to both
endpoints at fixed t>0. The bound concerns the integrated ordered trace;
it does not supply a pointwise integrable power bound, uniform cut constants,
a physical regulator limit, or a short-proper-time subtraction.

Let L=D*D be nonnegative with compact resolvent and trace-class K_t for
each t>0. Let V=Dom D with norm ||f||_V=||(1+L)^(1/2)f||. For two
bounded sesquilinear forms v_u,v_w on V, set R=(1+L)^(-1/2) and define
bounded operators B_x by <f,B_x g>=v_x(Rf,Rg). In an eigenbasis e_n of L,
write E_n=(1+lambda_n)^(1/2). Then

  v_x(e_m,e_n)=E_m E_n <e_m,B_x e_n>.                   (1)

For fixed t>0, consider the ordered spectral sum

  F(s)=sum_(m,n) exp(-(t-s)lambda_m-s lambda_n)
               v_w(e_n,e_m) v_u(e_m,e_n),  0<s<t.       (2)

Interior convergence was shown in the preceding note. For 0<s<=t/2,
exp(-(t-s)lambda_m)<=exp(-t lambda_m/2), while

  integral_0^(t/2) (1+lambda_n) exp(-s lambda_n) ds
       <= C_t                                                     (3)

uniformly in lambda_n>=0; for example C_t=max(t/2+1,2) works. Hence Tonelli
and Cauchy--Schwarz give the absolute integrated bound

  sum_(m,n) integral_0^(t/2) |term_(m,n)(s)| ds
    <= C_t ||B_w|| ||B_u||
       sum_m (1+lambda_m) exp(-t lambda_m/2) < infinity.  (4)

For fixed m, Cauchy--Schwarz bounds the sum over n of
|<e_n,B_w e_m><e_m,B_u e_n>| by ||B_w e_m|| ||B_u* e_m||.
The final sum is finite since K_(t/4) is trace class and
(1+lambda)exp(-t lambda/2)<=C'_t exp(-t lambda/4). On [t/2,t), exchange
m,n and u,w to obtain the same bound. This proves F is absolutely integrable
and that its integral equals the absolutely convergent sum of the integrated
terms. It also gives L1(0,t) convergence of common finite spectral truncations,
since their omitted terms are dominated by the summable series in (4).

Under the regularity and boundary hypotheses of the interior-time note, the
finite-matrix Green decomposition therefore passes to the full time integral:
the boundary part has its independently controlled L1 limit from
`finite-cut-boundary-pairing-spectral-regularization.md`, and the bulk part
converges in L1 as the difference. This is a fixed-cut result with a common
spectral regulator. It does not identify a separate closed bulk operator or
prove convergence under a different regulator. The constant in (4) involves
the global heat trace and may diverge as the physical cut moves; it does not
replace the uniform local heat estimates needed for the noncompact limit.
The mixed second vertex, density terms and proper-time subtraction are not
covered. No numerical calculation or Lean certificate is claimed.

Remaining to-do list: establish uniform cut and physical regulator matching,
handle all second and density vertices, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
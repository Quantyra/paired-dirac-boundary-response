# Moving insertions in the fixed-cut mixed heat response

This extends `finite-cut-galerkin-heat-derivative.md` to a bounded insertion
that moves with the two variation parameters. It gives a positive-time
fixed-cut identity for a declared observable; identification with the source's
physical density, contacts, and tangent subtraction remains open. It does not
prove a uniform short-time or moving-cut estimate or a Lean certificate.

Let H, V, q_z, L_z and the spectral Galerkin projections P_N satisfy the
hypotheses and conclusions of that note on a common complex polydisc. Let
C_z be a bounded-operator-valued holomorphic family, locally bounded in
operator norm, and define

    F(z,t)=Tr[C_z exp(-t L_z)],                  t>0.               (1)

Write C, C_u, C_w and C_uw for its value and derivatives at z=0; let
K=exp(-t L_0), K_u, K_w and K_uw denote the corresponding trace-norm heat
derivatives. The product rule in the trace-class ideal gives the exact
identity

    F_uw(t)=Tr[C_uw K]+Tr[C_u K_w]+Tr[C_w K_u]+Tr[C K_uw].       (2)

All four terms are needed for a moving insertion. If C is fixed, the first
three vanish. In particular the mixed derivative C_uw has coefficient one;
the two single-insertion terms are distinct, even when u and w are later
chosen equal. Equation (2) keeps C fixed inside the heat derivatives; it does
not replace the mixed square vertex by a density derivative.

## Galerkin realization and complete vertices

Set C_(z,N)=P_N C_z P_N and K_(z,N)=exp(-t L_N(z)) on P_N H, extended
by zero. The parameter derivatives of K_(z,N) converge to those of K_z in
trace norm at z=0: this follows from the locally uniform trace-norm heat
convergence and Cauchy's formula established in the Galerkin note. For
j in {0,u,w,uw}, P_N C_j P_N converges strongly to C_j and is uniformly
bounded. If T_N converges to T in trace norm, then

    Tr[(P_N C_j P_N) T_N] -> Tr[C_j T].                           (3)

Indeed, the T_N-T term is bounded by the uniform operator norm times its
trace norm; the remaining term follows by approximating T in trace norm by
finite-rank operators and using strong convergence. Thus every term in the
finite-matrix version of (2) converges separately, and the limit is independent
of a choice of eigenbasis within a degenerate eigenspace.

For the matrix heat derivatives, put K_a=exp(-a L_N(0)), and let V_u,V_w,
V_uw be the first and mixed second form-derivative matrices on P_N V. Then

    K_u = - integral_0^t K_(t-s) V_u K_s ds,

    K_uw = integral_(a,b,c>=0; a+b+c=t)
              [K_a V_u K_b V_w K_c + K_a V_w K_b V_u K_c] da db
            - integral_0^t K_(t-s) V_uw K_s ds.                   (4)

The triangle is parameterized by a,b>=0 with c=t-a-b>=0. Its measure is
da db, with no factorial or extra symmetry factor. V_uw is the actual mixed
form derivative, including both cross-products in the first-order Dirac
square as listed in `mixed-heat-vertex-inventory.md`. The corresponding
formula for K_w exchanges u and w. Insert (4) into (2) before taking the
Galerkin limit; the resulting limit is justified by (3). It does not require
individual unregularized form-vertex integrals to converge in trace norm.

## Application boundary

For two separately specified physical and tangent regularized families on a
common Hilbert-space identification, apply (2) to each and subtract, adding
any separately defined local action contact or restoration and its mixed
variation. A parameter-dependent localization or density must be included
in C_z, or else its derivatives must be carried separately. This gives the
exact algebraic response difference for those declared fixed-cut families;
it identifies the source's r_curved only after the actual localization,
operator maps, normalization and all contact terms are proved to match.
No estimate on that difference follows from (2), and no trace/cutoff limit
near t=0 is interchanged here.

Remaining to-do list: match the physical and tangent families and moving
insertions, prove the uniform subtracted curved remainder and regulator
limit, resolve the novelty decision, complete the manuscript, and certify
supported claims in Lean on GCP.

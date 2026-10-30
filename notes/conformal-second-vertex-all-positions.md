# All insertion positions for the mixed second heat vertex

This supplies an exact fixed-time reduction for the single mixed second-form vertex in `conformal-weighted-second-vertex.md`. It accounts for every position of a fixed conformal insertion, including the heat commutator. It does not bound the two ordered first vertices or prove a regulator limit.

First work with finite Hermitian matrices L>=0, V=V_uw, and b=b*, and write K_s=exp(-sL). Define

 I(a,c)=Tr[b K_a V K_c],  a,c>=0, a+c=t.               (1)

For a>=t/2, cyclicity and K_c b=b K_c+[K_c,b] give

 I(a,c)=Tr[b K_t V]+Tr([K_c,b] K_a V).                   (2)

For c>=t/2, write b K_a=K_a b+[b,K_a] and cycle K_a to the end:

 I(a,c)=Tr[b V K_t]+Tr([b,K_a] V K_c).                   (3)

The second reference trace is the complex conjugate of the first, since b,V,K_t are Hermitian; in the trace-class setting the same statement requires the displayed products and cyclicity to be justified. Equations (2)--(3) include the endpoints by K_0=I and zero commutator. They do not identify the two traces as equal unless an additional reality or commutation property is proved.

Now suppose on a smooth finite cut the form/Galerkin realization makes (1)--(3) valid and the products in them trace class. Assume the uniform-in-cut bounds

 sup_(t/2<=s<=t) (||K_s V||_1+||V K_s||_1) <= B_t(u,w),
 |Tr(b K_t V)|+|Tr(b V K_t)| <= A_t(u,w),               (4)

and the first-order scalar commutator assumptions of `conformal-heat-commutator-bound.md`, giving ||[b,K_s]||<=C_b sqrt(s). The constants may depend on fixed t and the declared field family but not on the cut. Schatten Holder and (2)--(3) then yield

 integral_0^t |I(a,t-a)| da
   <= t A_t + (4/3) C_b B_t (t/2)^(3/2).                (5)

The coefficient in the correction comes from two integrals of sqrt(s) over [0,t/2]. The bound needs no uniform bound on ||b|| itself. The reference traces in (4) still require the direction-weighted factorization and all commutator corrections of `conformal-weighted-second-vertex.md`; they cannot be replaced by the divergent bare log heat trace. The trace-class bounds on V K_s require a separate two-direction localized smoothing argument. A formal differential expression alone does not establish either part of (4).

For bounded truncations b_n on one fixed Hilbert space, the strong commutator convergence in `conformal-heat-commutator-truncation.md`, uniform operator bounds, and fixed trace-class K_a V or V K_c imply trace convergence of each commutator term. Dominated convergence applies to its integral using (5), provided the reference traces converge separately. Changing-cut convergence additionally requires uniform trace-class convergence of the relevant vertex factors and compatibility of the boundary forms; it does not follow from fixed-space strong convergence.

This accounts for every insertion position of the single mixed second vertex under the stated hypotheses, not the two ordered first-vertex terms, the partner sum, physical matching or the ultraviolet subtraction. No Lean certification is claimed.

Remaining to-do list: prove the weighted reference and vertex trace bounds on actual domains, control both ordered vertices and the full regulator, complete novelty and manuscript, and certify supported claims on GCP.

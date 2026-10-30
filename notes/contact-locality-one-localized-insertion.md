# Contact locality with one localized insertion

This extends `fixed-seed-collar-contact-locality.md`, whose stated hypothesis localizes both insertions. It allows the second bounded insertion to extend outside the common collar, under explicit uniform heat and off-diagonal estimates. It does not establish those estimates for the physical source or prove the geometric response.

Let L and Ltilde be nonnegative self-adjoint paired squares on compact two-dimensional models with a unitary bundle identification on a common collar U, agreeing there in operator and local boundary domain. Let u be a bounded scalar supported in K compactly contained in U; let v be bounded on both models and agree under the identification on U. Choose an interior cutoff eta equal to one on a neighborhood of K and supported in U, with K at positive distance d from F=supp(1-eta). Define v_near=eta v and v_far=(1-eta)v on each model. The cutoff is a scalar multiplier, not an extra physical boundary.

Assume the two-localized-insertion estimate of the cited note for u and v_near, and assume on both models

  Tr exp(-rL) <= C r^(-1),
  ||1_K exp(-rL) 1_F||_op <= C exp(-d0²/(c r)),          (1)

for 0<r<=t0, with analogous bounds for Ltilde. The off-diagonal estimate is required not only for K and F but also for the separated intermediate sets used below, with uniform constants across the family. A full Davies estimate for all separated measurable sets is a sufficient hypothesis. The displayed K--F estimate alone does not imply the estimates for those intermediate sets.

For a=t-s,b=s>0, choose a measurable neighborhood P of K such that both dist(P,F) and dist(K,P^c) are positive. Split H_r=exp(-rL) as H_(r/2)^2 and insert P+P^c. Schatten Holder gives

 ||P_K H_r P_F||_2 <= ||P_K H_(r/2)||_2 ||P H_(r/2) P_F||_op
                    +||P_K H_(r/2) P^c||_op ||H_(r/2) P_F||_2. (1a)

The two Hilbert--Schmidt factors are at most [Tr H_r]^(1/2)<=C r^(-1/2), and the two operator factors have exponential off-diagonal bounds by the strengthened hypothesis. Consequently ||P_K H_r P_F||_2<=C r^(-1/2) exp(-c1/r); the reverse estimate follows by adjoints. In the far contact, U=P_K U and V_far=P_F V_far, so inserting these supports and applying Schatten Holder to the two compressed heat operators gives

 |Tr[U H_a V_far H_b]| <= C ||u||_infinity ||v||_infinity
        (ab)^(-1/2) exp[-c1/a-c1/b].                       (1b)
Since a+b=t and 1/a+1/b>=4/t, absorb each inverse half-power into half of its exponential and integrate over 0<s<t. This gives

  |I_L(t;u,v_far)| <= C' ||u||_infinity ||v||_infinity
                         t^(-N') exp(-c'/t),               (2)

with constants independent of the insertion endpoint. The same holds for Ltilde. Combine (2) with the existing near-insertion locality estimate to obtain the same exponential form for |I_L(t;u,v)-I_Ltilde(t;u,v)|. The far values of v need not agree between the two models; the norm bound covers both.

This extends only the contact localization theorem. Establishing the required physical/auxiliary common collar and the uniform heat, domain and off-diagonal estimates remains necessary. The angular multiplier and physical-half normalization must be applied separately; a polynomial angular factor preserves exponential smallness for fixed positive separation. No Lean certification is claimed.

Remaining to-do list: verify source matching and the stated heat estimates, control geometric vertices and the regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
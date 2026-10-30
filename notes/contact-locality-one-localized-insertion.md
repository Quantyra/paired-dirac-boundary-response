# Contact locality with one localized insertion

This extends `fixed-seed-collar-contact-locality.md`, whose stated hypothesis localizes both insertions. It allows the second bounded insertion to extend outside the common collar, under explicit uniform heat and off-diagonal estimates. It does not establish those estimates for the physical source or prove the geometric response.

Let L and Ltilde be nonnegative self-adjoint paired squares on compact two-dimensional models with a unitary bundle identification on a common collar U, agreeing there in operator and local boundary domain. Let u be a bounded scalar supported in K compactly contained in U; let v be bounded on both models and agree under the identification on U. Choose an interior cutoff eta equal to one on a neighborhood of K and supported in U, with K at positive distance d from F=supp(1-eta). Define v_near=eta v and v_far=(1-eta)v on each model. The cutoff is a scalar multiplier, not an extra physical boundary.

Assume the two-localized-insertion estimate of the cited note for u and v_near, and assume on both models

  Tr exp(-rL) <= C r^(-1),
  ||1_K exp(-rL) 1_F||_op <= C exp(-d0²/(c r)),          (1)

for 0<r<=t0, with analogous bounds for Ltilde. The off-diagonal estimate must hold for the chosen sets and be uniform across the family under consideration. A positive d0 may be smaller than the geometric d if required by the metric comparison.

For a=t-s,b=s>0, write U and V_far for the multipliers and P_K,P_F for the corresponding supports. Split each heat factor in half. Schatten Hölder yields

 |Tr[U e^(-aL) V_far e^(-bL)]|
  <= ||u||_infinity ||v||_infinity
       ||P_K e^(-aL/2)||_2 ||e^(-aL/2) P_F||_op
       ||P_F e^(-bL/2) P_K||_op ||e^(-bL/2) P_K||_2,

where the middle two factors may be obtained by inserting P_F and P_K at the scalar multipliers and using operator norms. More directly and without relying on an off-diagonal factor on both halves, insert a spatial partition between the heat halves as in the cited locality note: each compressed heat operator P_K e^(-aL) P_F is Hilbert--Schmidt with a bound C a^(-N) exp(-c1/a), and the reverse compression has the analogous bound. These follow from (1), heat-trace splitting and a partition into sets separated from K or F. Schatten Hölder then bounds the far contact integrand by C ||u||_infinity ||v||_infinity a^(-N)b^(-N) exp[-c1/a-c1/b].

The displayed preliminary four-factor inequality is valid only when its stated intermediate support insertions are justified; the partition argument is the operative estimate. Since a+b=t and 1/a+1/b>=4/t, integration over 0<s<t gives

  |I_L(t;u,v_far)| <= C' ||u||_infinity ||v||_infinity
                         t^(-N') exp(-c'/t),               (2)

with constants independent of the insertion endpoint. The same holds for Ltilde. Combine (2) with the existing near-insertion locality estimate to obtain the same exponential form for |I_L(t;u,v)-I_Ltilde(t;u,v)|. The far values of v need not agree between the two models; the norm bound covers both.

This extends only the contact localization theorem. Establishing the required physical/auxiliary common collar and the uniform heat, domain and off-diagonal estimates remains necessary. The angular multiplier and physical-half normalization must be applied separately; a polynomial angular factor preserves exponential smallness for fixed positive separation. No Lean certification is claimed.

Remaining to-do list: verify source matching and the stated heat estimates, control geometric vertices and the regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
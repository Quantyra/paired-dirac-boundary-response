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

## All-set Davies estimate for the auxiliary cylinder

For the explicit compact reflected cylinder of `compact-reflected-auxiliary.md`, take its fixed flat-coordinate metric d0 and D_f=gamma_y partial_y+f gamma_tau partial_tau, with 0<m<=f<=M. Real Lipschitz scalar weights preserve the H1 form domain and

 ||[D_f,phi]|| <= a ||d phi||_(infinity,d0), a=max(1,M),

using the Clifford relations. The weighted-form calculation in `paired-form-davies-estimate.md` therefore gives, for every pair of measurable sets E,F with d0(E,F)>0,

 ||1_E exp(-r D_f*D_f) 1_F|| <= exp[-d0(E,F)^2/(4 a² r)]. (3)

This is exactly the all-set assumption needed for P and P^c above, with the same a for any family sharing M. The compact auxiliary heat-trace bound Tr exp(-rL)<=C r^-1 follows from `auxiliary-uniform-ellipticity.md` under its fixed periods, rank and uniform lower/derivative bounds. The U-even half-cylinder restriction inherits (3) for reflection-invariant even extensions of the scalar weights and sets; the reflected distance must be used, with the positive separation checked for the chosen K,F. The smooth half-domain reflection identification is unnecessary for the all-set estimate on the compact full double itself.

For the physical model the same weighted-form proof applies if its actual first-order H1 domain is preserved by scalar Lipschitz weights and the Clifford bound and metric comparison are uniform; its separate uniform heat-trace bound is still required. This is a conditional verification of the needed hypotheses, not proof that the physical and auxiliary bundles or operators coincide on the collar.
This extends only the contact localization theorem. Establishing the required physical/auxiliary common collar and the uniform heat, domain and off-diagonal estimates remains necessary. The angular multiplier and physical-half normalization must be applied separately; a polynomial angular factor preserves exponential smallness for fixed positive separation. No Lean certification is claimed.

Remaining to-do list: verify source matching and the stated heat estimates, control geometric vertices and the regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
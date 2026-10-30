# Physical conformal factor versus the uniform cut hypotheses

This checks the scope of `full-weyl-complex-local-trace-bound.md` and the related local-projector cut comparison against the physical-to-product congruence in `physical-product-contact-operator-gap.md`. It does not rule out a different weighted analysis or identify the source's separate product-frame conversion with the physical square.

For the fixed RN-AdS seed, put U=b_sphere/r and let y be product-orbit proper distance from conformal infinity. The asymptotics established in `source-product-volume-versus-physical-obstruction.md` give

 y=b_sphere L4/r+O(r^-3),  a=U sqrt(F_RN)=b_sphere/L4+O(r^-2),
 U=y/L4+O(y^3).                                           (1)

The physical Dirac operator, transported to the product L2 space, is sqrt(U) D_hat sqrt(U) on the stated core. In the notation P_b=exp(-b/2) P_0 exp(-b/2), this corresponds to exp(-b)=U, or b=-log U. Therefore b(y)=-log y+O(1) and the bounded-b constant required by the real and complex mode-gap notes diverges as the outer cutoff approaches y=0.

In symmetric-lapse variables the product lapse is f=a and the congruenced lapse is F_eff=f exp(-b)=a U. Thus, near infinity,

 F_eff(y)=(b_sphere/L4²)y+O(y^3),
 F_eff(y)^(-1)=(L4²/b_sphere)y^(-1)+O(y).              (2)

In particular neither F_eff>=F0>0 nor a uniform W2,infinity bound for F_eff^(-1) holds on a fixed collar containing y=0. On a retained collar y>=delta, its inverse supremum grows at least as a positive constant times delta^-1; the transfer estimate based on sup F_eff^(-1) therefore does not provide a cut-independent constant. Also integral_delta^y0 F_eff^(-1) dy grows like (L4²/b_sphere) log(y0/delta)+O(1), so replacing that supremum by this elementary integral does not by itself restore a uniformly short transport estimate.

This is a failure of the uniform hypotheses for applying that model to the physical congruence at conformal infinity. For each positive fixed cutoff the coefficients remain regular, but fixed-cut estimates do not imply uniform cutoff removal. The product-frame seed itself has nondegenerate lapse a at y=0, and the source's product-frame conversion is a different operator; the calculation does not invalidate a separately justified product-frame comparison. Nor does it show that the physical response diverges or that all possible weighted or renormalized approaches fail.

Any route connecting the model estimate to the physical square must supply an additional weighted/degenerate endpoint analysis, or a complete conformal comparison with its domains, trace normalization, contact terms and regulator. The available local-projector calculation does not establish that bridge. No numerical or Lean certification is claimed.

Remaining to-do list: establish the relevant physical or product-frame endpoint theory and response matching, complete the regulator and novelty audit and manuscript, and certify supported claims on GCP.

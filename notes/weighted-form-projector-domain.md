# Weighted form bound on the H1 projector domain

This verifies the real-weight form input of `unsandwiched-weighted-offdiagonal-bridge.md` for a stipulated finite-cut first-order H1 projector realization. It does not prove that the physical paired source has this realization or that its graph, charts and constants are uniform as the cut moves.

Let D be closed with V=Dom D={v in H1: P_- gamma v=0}, and let q(v,w)=<Dv,Dw>. Assume the scalar weak product rule D(fv)=f Dv+C_(df)v and ||C_(d phi)||<=kappa ||d phi||_infinity, with kappa independent of the cut. For a bounded real Lipschitz phi, e^(±phi) and their inverses are bounded H1 multipliers. The trace product rule and the scalar commutation with P_- show e^(±phi)V=V exactly. Thus distance weights do preserve this first-order form domain under the asserted actual-domain characterization; no square-domain invariance is needed.

Put C=C_(d phi) and use the convention making the following products linear in their first entry. On V the conjugated form q_phi(v,w)=q(e^(-phi)v,e^phi w) satisfies

 q_phi(v,v)=||Dv||²-||Cv||² + <Dv,Cv>-<Cv,Dv>.         (1)

This uses scalar commutation with C. Consequently, if ||d phi||_infinity<=alpha,

 Re q_phi(v,v) >= ||Dv||²-kappa² alpha² ||v||²,
 |Im q_phi(v,v)| <= 2 kappa alpha ||Dv|| ||v||.         (2)

Young's inequality shows that q_phi+2 kappa² alpha² ||v||² has a sector angle bounded independently of alpha and the cut, with real part controlling a fixed fraction of ||Dv||²+kappa² alpha²||v||². The real-part estimate before the extra shift gives the sharper semigroup norm bound

 ||e^phi K_t e^(-phi)|| <= exp(kappa² alpha² t).        (3)

The associated m-sectorial operator is the bounded similarity e^phi L e^(-phi); the identity follows from the form representation and exact multiplier invariance. Uniform analytic-semigroup estimates for the shifted sectorial forms supply the differentiated weighted heat bounds used in the off-diagonal bridge. A weighted first-order energy bound additionally uses D(e^phi v)=e^phi Dv+C e^phi v; this gives the extra polynomial alpha factor and must be applied with the actual local elliptic estimates. The numerical constants here are sufficient analytic bounds, not physical admission margins.

For separated sets A,B in the intrinsic path metric, take a bounded truncation of phi(x)=alpha min(dist(x,B),R). It is Lipschitz with the required gradient bound, vanishes on B and is at least alpha dist(A,B) on A when R is chosen beyond that distance. Equation (3) yields

 ||1_A K_t 1_B|| <= exp[-alpha dist(A,B)+kappa² alpha² t].

Optimizing alpha gives exp[-dist(A,B)²/(4 kappa² t)] for kappa>0; kappa=0 is treated separately. Boundary charts do not need phi to be constant in the normal direction because the first-order projector condition is preserved by scalar multiplication. Uniformity still depends on the actual domain identity, uniform kappa, the intrinsic metric and the multiplier/trace theorem across cuts.

The result supplies the basic real Davies weighted form bound under those hypotheses. It does not by itself prove the local H5 derivative estimate, the cut-uniform chart geometry, the source bundle, the mixed vertex or regulator, nor does it certify a Lean theorem.

Remaining to-do list: verify the source-specific domain and uniform geometry, complete the differentiated off-diagonal and boundary terms, prove the physical response and regulator, finish the manuscript and certify supported claims on GCP.

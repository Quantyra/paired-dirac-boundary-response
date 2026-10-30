# First-order energy for the weighted heat semigroup

This supplies the weighted energy step used in `unsandwiched-weighted-offdiagonal-bridge.md`, under the actual H1 projector-domain and uniform product-rule hypotheses of `weighted-form-projector-domain.md`. It is a conditional form argument, not verification of the physical moving-cut domain or a Lean certificate.

Let D be closed, L=D*D, K_s=e^(-sL), and phi be bounded real Lipschitz with ||C_(d phi)||<=kappa alpha. Define T_s=e^phi K_s e^(-phi), with generator A_phi=e^phi L e^(-phi), as a bounded similarity for each phi. The weighted form of the preceding note has common domain V=Dom D and

 Re q_phi(v,v) >= ||Dv||²-kappa² alpha²||v||².           (1)

Set lambda=2 kappa² alpha². The shifted forms q_phi+lambda have a uniform sector angle, and the analytic semigroup estimate gives, for s>0,

 ||(A_phi+lambda) T_s|| <= C s^-1 exp(lambda s),
 ||T_s|| <= exp(kappa² alpha² s),                         (2)

with C independent of phi, alpha and cut under the stated uniform hypotheses. For v=T_s h, the form representation and (1) imply

 ||Dv||² <= |<A_phi v,v>|+kappa² alpha²||v||²
          <= ||(A_phi+lambda)v|| ||v||
                +(lambda+kappa² alpha²)||v||².          (3)

Combining (2)--(3), and absorbing the polynomial 1+alpha²s into a slightly larger exponential, yields

 ||D T_s|| <= C(s^-1/2+kappa alpha) exp(C kappa² alpha² s). (4)

The scalar product rule gives D(e^phi w)=e^phi Dw+C_(d phi)e^phi w, hence

 ||e^phi D K_s e^(-phi)||
    <= C(s^-1/2+kappa alpha) exp(C kappa² alpha² s).    (5)

For integer m>=0, the same shifted analytic-semigroup estimate gives

 ||e^phi L^m K_s e^(-phi)||
    <= C_m s^-m (1+kappa² alpha² s)^m
                         exp(C kappa² alpha² s).          (6)

Insert e^(-phi)e^phi between D K_(s/2) and L² K_(s/2). Since K commutes with L, (5)--(6) yield

 ||e^phi D L² K_s e^(-phi)||
    <= C s^(-5/2)(1+kappa alpha sqrt(s))^5
                         exp(C kappa² alpha² s).          (7)

Constants can change from line to line but depend only on the common sector bound, kappa and m, not on the magnitude of phi. This is the first-order energy input, including its alpha dependence, for the off-diagonal bridge. Applying it to a moving cut still requires the uniform domain, multiplier and local elliptic assumptions; it does not establish boundary regularity, the full vertex trace, or the regulator.

Remaining to-do list: verify physical paired domains and cut-uniform geometry, prove the full mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

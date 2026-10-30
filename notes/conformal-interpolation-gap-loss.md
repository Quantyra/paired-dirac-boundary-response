# Gap loss inside the conformal interpolation

This applies the endpoint construction of `physical-endpoint-long-cylinder-gap.md` to the interpolation in `physical-product-mixed-cutoff-bridge.md`. It shows that the uniform positive-gap hypothesis in `physical-product-mixed-upper-endpoint.md` fails for the physical conformal path under the stated local mode representation. It does not decide whether the complete weighted bridge has another large-time bound.

For a fixed angular/thermal mode and retained cutoff y>=delta, the path has A_r=U^(r/2) D_hat U^(r/2), 0<=r<=1, with U=y/L4+O(y³), f=f0+O(y²), and F_r=f U^r. In canonical coordinate ds=f dy, let dx_r/dy=U^-r. The unitary half-density change gives, on the interior core,

 W_r A_r W_r^-1 = -i sigma_2 partial_(x_r)+F_r V,
 V=mu a(y) sigma_1+i nu,                                  (1)

with a bounded near y=0. For fixed r<1 the distance to y=0 is finite, but the endpoint r=1 is logarithmically infinite. Uniformity in r is a stronger question than either fixed-r case.

Let L=log(1/delta) and choose r_delta=1-1/L, which lies strictly below 1 for small delta. Consider the interior annulus delta^(3/4)<y<delta^(1/2). Its x_(r_delta)-length is

 ell_delta=integral_(delta^(3/4))^(delta^(1/2)) U(y)^(-r_delta) dy
          >= c L,                                         (2)

with c>0 independent of delta. To see this, U(y)<=C y and integrate y^(-r_delta): the result is L times the positive difference exp(-1/2)-exp(-3/4), up to a fixed positive factor. Select a normalized smooth bump supported strictly inside this x interval, scaled from a fixed profile; its derivative norm is O(L^-1). On its support F_(r_delta)<=C delta^(r_delta/2), while ||V||<=C(|mu|+|nu|). Thus the spectral bottom of the nonnegative square for any cut realization containing the interior core obeys

 inf spec(A_(r_delta)* A_(r_delta))
     <= C L^-2 + C (mu²+nu²) delta^(r_delta).            (3)

For every fixed mu,nu the right side tends to zero. The constants are independent of delta but may depend on the fixed seed and profile. In particular no positive lower spectral bound can hold uniformly in both r in [0,1) and the moving cutoff, even though every r_delta is strictly less than one. The same conclusion holds a fortiori if r=1 is included. This is a mode-specific upper bound, not a physical admission margin and not a tower-uniform estimate.

Therefore the uniform g>0 assumption in the cited upper-endpoint note cannot establish the desired physical moving-cut bridge. This does not prove the bridge's upper endpoint fails to vanish: its mixed variations, b=log U weighting, partner sum and r integration might admit a different estimate or cancellation. Those issues, physical domains and regulator matching remain open. No Lean certification is claimed.

Remaining to-do list: find and prove a suitable nonuniform or weighted upper-endpoint estimate, control the ultraviolet mixed response and physical matching, complete the novelty audit and manuscript, and certify supported claims on GCP.

# Physical square flux transport across a shrinking radial annulus

This tests the zero-parameter full square flux system of `first-order-subspace-square-transport.md` on two finite physical cuts. It uses the physical conformal degeneration in `physical-congruence-cut-uniformity-obstruction.md`. It is not a determination of the infinity domain, an actual resolvent, or a physical response.

On the fixed RN seed let y be product proper distance from infinity, U(y)=y/L4+O(y³), ds=f(y)dy with f positive and smooth, and F=f U. Consider the annulus delta<=y<=2delta and the zero-source, zero-square-parameter flux system

 eta'=(nu sigma_2-mu a sigma_3)eta+i F^-1 sigma_2 xi,
 xi'=(-nu sigma_2-mu a sigma_3)xi,                       (1)

where derivatives are in canonical s and mu,nu are fixed. The canonical interval has length O(delta), and its diagonal coefficients are uniformly bounded for fixed modes. Yet the off-diagonal integral is

 I_delta=integral_(s(delta))^(s(2delta)) F^-1 ds
        =integral_delta^(2delta) dy/U(y)
        =L4 log 2+O(delta²).                             (2)

Write N as the nilpotent block matrix with N_(eta,xi)=i sigma_2 and all other blocks zero. Its matrices at different points commute, and N²=0. The contribution of the bounded diagonal coefficients to the fundamental matrix is O(delta): a Volterra/Duhamel comparison, using the uniformly bounded integral of F^-1 on this annulus, gives

 U_delta=I+I_delta N+O(delta)                            (3)

in any fixed norm on the finite-dimensional flux space. The orientation may change the sign of I_delta, not the conclusion. No assumption of a positive gap is used.

Assume the regular finite-cut square plane is B={P_- eta=P_- xi=0}, with v_+ spanning the allowed two-component line. The limiting transport in (3) sends B to the span of (v_+,0) and (I_* v_-,v_+), where I_*=L4 log 2 and i sigma_2 v_+=v_-. In a fixed declared scaling of the two flux components, the orthogonal projection distance between this plane and B tends to

 |I_*|/sqrt(1+I_*²) > 0.                                (4)

Here the flux components are identified in fixed units; changing that fixed scale changes the numerical value in (4), but cannot make the nonzero limiting plane coincide with B. Equation (4) shows that shrinking the annulus in the compact product coordinate does not make this full physical flux transport close to the identity. It also displays the nonzero-xi effect absent from the first-order xi=0 subspace. For fixed nonzero thermal modes, their diagonal contributions are O(delta), so the limit persists in this local zero-square-parameter calculation.

The calculation compares local flux planes at two finite cuts, not a boundary condition transported all the way from conformal infinity. It does not prove failure or divergence of the actual physical resolvent, which also involves nonzero spectral parameter, source displacement, the other endpoint and domain matching. The nondegenerate product-frame local-projector model has different lapse assumptions and is not contradicted. No Lean certification is claimed.

Remaining to-do list: construct or control the actual spectral-dependent physical boundary map and source term, complete the response and regulator, finish novelty and manuscript, and certify supported claims on GCP.

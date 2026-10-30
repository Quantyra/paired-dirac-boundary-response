# Regular bolt check of the symmetric-lapse domain hypothesis

This tests the sufficient domain assumption in `euclidean-canonical-unitary-half-density.md` and `product-conversion-zero-sector-thermal-gap.md` against the regular bolt modes in `bolt-cartesian-mode.md`. It corrects a tempting half-density mismatch; it does not prove the full mode-domain identification.

At the regular bolt, write the orbit metric d rho²+a(rho)² d tau², with a(rho)=kappa rho[1+O(rho²)] and f=1/a. The canonical coordinate s in `euclidean-canonical-unitary-half-density.md` satisfies d rho/ds=1/f=a, hence |ds/d rho|=f~1/(kappa rho). The sign depends on orientation and is irrelevant below.

Let F be a smooth Cartesian spinor, supported in a small bolt disk, with a nonzero value at the bolt. Its decomposition in the rotating polar spin frame has a lowest antiperiodic thermal component whose coefficient tends to a nonzero constant in one spin component. The geometric-to-d rho radial half-density is psi(rho)=sqrt(a(rho)) F_polar(rho), so this component has

 psi(rho)=sqrt(kappa rho)[c+O(rho²)], c!=0.                  (1)

This is the regular critical behavior in `bolt-cartesian-mode.md`; F is an ordinary smooth core section, not a logarithmic singular solution. The unitary change U from L2(d rho) to L2(ds) used in `euclidean-canonical-unitary-half-density.md` is v(s)=f^(-1/2) psi(rho(s)). Its lapse-weighted variable is therefore

 sqrt(f) v=psi,                                               (2)

where the right side is evaluated at rho(s). Since (1) gives |psi|²~const rho and ds~d rho/(kappa rho), this variable is locally L2(ds). However the *unweighted polar component* F_polar=psi/sqrt(a)=sqrt(f) psi tends to c and is not L2(ds): its squared norm contains integral d rho/rho. It is essential not to confuse this latter quantity with sqrt(f) v in (2).

Thus the regular critical mode does not by itself contradict the stated condition sqrt(f)v in L2(ds). The exact H_mu graph-domain requirement is stronger: it also requires the distributional H_mu(sqrt(f)v) to be L2(ds) and the specified boundary behavior at the canonical endpoint. For the zero angular mass and constant leading component, sqrt(f)v=psi~sqrt(rho)~exp(kappa s/2) (up to orientation), whose s derivative is also locally L2. Therefore this leading regular mode supplies no counterexample to the domain condition. Its partner and higher modes must be checked using the actual matrix action and closed domains; their leading powers alone are insufficient to prove equality of domains.

The conditional inequality in the symmetric-lapse note remains conditional on that graph-domain identification and on the thermal decomposition reducing the actual paired square. This check neither establishes nor disproves the physical thermal gap, its uniformity, the LLL state or the common regulator. No Lean certification is claimed.

Remaining to-do list: prove the full canonical mode-domain identification including the bolt and boundary, match the zero-sector observable, complete the response and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
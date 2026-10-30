# Removing the collar cutoff in the flat tangent remainder

This note connects [the original-class cutoff](weighted-remainder-cutoff.md) with the conditional flat formulas in [the all-frequency tangent estimate](tangent-remainder-bound.md) and [the product-contact estimate](flat-product-contact.md). All conclusions assume those flat Fourier representations and their stated per-exterior normalization. They do not establish the physical curved trace or its common regulator.

Let u,w be real even localized full-line profiles whose physical-side collars have u=c_u y³+r_u and w=c_w y³+r_w, with the source j<=5 remainder weights and fixed exterior H3 regularity. Cut off only r_u,r_w at distance epsilon as in the weighted remainder note, retain each cubic term, and keep the exterior fixed. Denote the resulting profiles by u_epsilon,w_epsilon. Even reflection of the cubic belongs to H3, as does the reflected remainder. Uniform cutoff bounds give

    ||u_epsilon-u||_H3(R) <= C K_u epsilon^(3/2) L(epsilon),
    ||w_epsilon-w||_H3(R) <= C K_w epsilon^(3/2) L(epsilon),        (1)

where L(epsilon)=1+log(1/epsilon), with constants fixed by the cutoff and collar. For j<=3, the j-th derivative of each difference is supported in |y|<2epsilon and bounded by CK |y|^(4-j)L(|y|); integrating its square gives (1), with j=3 the dominant term. The reflected seam causes no distributional boundary terms because the remainder's derivatives through order three vanish there. For smooth approximants away from the retained cubic, choose the mollifier width small enough to preserve (1), as well as the weighted bounds in the earlier construction.

Write Q_t for the flat tangent remainder r_flat in equation (2) of the all-frequency note. Its bound and bilinearity give, for all t>0,

    |Q_t(u_epsilon,w_epsilon)-Q_t(u,w)|
      <= C t² [||u_epsilon-u||_H3 ||w_epsilon||_H3
                  + ||u||_H3 ||w_epsilon-w||_H3].                  (2)

The H3 norms on the right are uniformly bounded. Therefore for any T>0,

    integral_0^T |Q_t(u_epsilon,w_epsilon)-Q_t(u,w)| dt/t²
      <= C_T epsilon^(3/2) L(epsilon),                            (3)

with C_T depending on T, the fixed cutoffs and the declared profile bounds. This proves convergence in the absolute weighted proper-time integral and allows the collar-cutoff limit to pass through that flat integral. In particular, it is uniform in any lower proper-time cutoff a in (0,T): the integral over (a,T) is bounded by the same right side. The full-frequency estimate, rather than a finite Fourier truncation, is used throughout.

The product-contact remainder R_I in equation (3) of the contact note obeys the same bilinear difference estimate with t³ in place of t². If the stated angular estimate |Theta'(t)|<=24C_Theta/t² applies in matching units, then for 0<t<=T,

    |2 Theta'(t)[R_I(t;u_epsilon,w_epsilon)-R_I(t;u,w)]|
      <= C C_Theta t epsilon^(3/2)L(epsilon).                     (4)

Thus its subtracted endpoint contribution converges uniformly on (0,T], and the two limits epsilon down to zero and t down to zero agree for this remainder: both are zero. The three local contact terms also converge for each fixed t by H3 convergence. Equation (4) concerns the already-subtracted flat product contact, not every term in the determinant or its curved counterpart.

Neither result proves the sharp logarithmic boundary coefficient for the full weighted class, the physical folding factor, the angular estimate, the curved trace, or a regulator-uniform result for the actual paired manifold. Constants here are analytic bounds, not physical admission margins. No numerical or Lean certification is claimed.

Remaining to-do list: prove or delimit the physical operator and common-regulator bridge; complete the novelty decision and manuscript; certify the supported claims in Lean on GCP.

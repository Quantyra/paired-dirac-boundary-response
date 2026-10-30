# Collar cutoff for the source conversion contact

This estimates the insertion cutoff in the source's complete contact I_t(u,v), not the geometric variation or the change of boundary condition. It uses the time-reduced product-orbit heat operator, and applies under the explicit uniform heat hypotheses below. It does not remove the common regulator or certify the physical model.

Let L>=0 be a self-adjoint product-orbit operator with K_s=exp(-sL), and use a fixed physical-half/time trace normalization. Assume that for 0<s<=1 the corresponding full orbit trace and fiber diagonal satisfy, uniformly over the cut family under consideration,

  Tr K_s <= C/s,       tr_fiber K_s(x,x) <= C/s.               (1)

The orbit measure in the boundary collar is a(y)dy d tau with a bounded above; bundle rank and trace normalization are included in C. These bounds are standard-looking two-dimensional heat estimates, but must be established for the actual product-frame domains and all relevant cuts. They are not inferred here from the four-dimensional physical heat bounds.

For bounded real scalar insertions define the entire time-integrated contact

  I_t(u,v)=integral_0^t Tr[M_u K_(t-s) M_v K_s] ds.           (2)

Let h be a scalar supported in 0<y<delta. For 0<s<t<=1, at least one heat time is at least t/2. If a=t-s>=t/2, split that factor and apply Schatten Holder:

  |Tr[M_h K_a M_v K_s]|
    <= ||M_h K_(a/2)||_2 ||K_(a/2) M_v K_s||_2
    <= ||v||_infinity ||M_h K_(a/2)||_2 ||K_(a/2)||_2
    <= (2C/t) ||h||_2 ||v||_infinity.                         (3)

Here ||M_h K_(a/2)||_2²=integral |h|² tr K_a(x,x) and ||K_(a/2)||_2²=Tr K_a. If s>=t/2, cycle and split K_s instead; the same bound follows with K_(s/2) M_h as the first factor. The estimate is uniform right up to both insertion-time endpoints, so integrating (3) yields

  |I_t(h,v)| <= 2C ||h||_2 ||v||_infinity,  0<t<=1.           (4)

The identical estimate holds when the cutoff is in the second slot. No derivative of a heat kernel, spatial boundary term, or interchange at s=0 is used; the limiting endpoints have measure zero.

For h=chi_delta u with |chi_delta|<=1 and a cubic source direction |u(y)|<=C_u y³, bounded collar density gives ||h||_2<=C'_u delta^(7/2). For a log-cubic h satisfying |h(y)|<=C_u y³(1+|log y|), it gives

  ||h||_2 <= C'_u delta^(7/2)(1+|log delta|).                 (5)

Thus replacing either insertion by its collar-truncated version changes the complete contact by O(delta^(7/2)) for cubic directions, uniformly for 0<t<=1 under (1); a log-cubic direction adds the displayed logarithm. Truncating both slots is handled by a telescoping sum and the uniform L-infinity bounds of the truncated fields. This is a cutoff of the insertions with the operator held fixed; it does not compare different cut domains or heat operators.

In the pinned conversion formula the contact appears as 2 Theta'(t) I_t(u,v). On a fixed interval [epsilon,1], multiplying (4) by the full, untruncated angular factor gives an error bounded by

  2 sup_(epsilon<=t<=1)|Theta'(t)| times the right side of (4). (6)

For a proper-time integral with a nonnegative weight W(t), use the finite quantity integral_epsilon^1 W(t)|Theta'(t)|dt instead. No limit epsilon->0 follows without a joint delta(epsilon) bound and the other geometric and subtraction errors. In particular this does not prove the source's common-regulator finite part, a short-time asymptotic coefficient, or the curved remainder. No numerical or Lean certification is claimed.

Remaining to-do list: establish the actual product heat bounds and boundary realization, control the geometric term and joint cutoff/subtraction limits, finish novelty and manuscript, and certify supported claims in Lean on GCP.
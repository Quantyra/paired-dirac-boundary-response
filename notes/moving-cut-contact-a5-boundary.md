# Moving-cut contact boundary coefficient a5

This extends `moving-cut-contact-a3-a4-boundary.md` for the fixed-boundary scalar potential contact. It is a conditional estimate for a smooth cut, not a uniform heat expansion or a physical-boundary result.

Let L_lambda=L+lambda v, E_lambda=E-lambda v Id, and use u as the heat-trace smearing function. Keep the metric, connection, mixed projectors and Robin operator fixed with lambda. By the Duhamel identity in the preceding note, the contact coefficient is minus the lambda derivative of the smeared heat coefficient. In dimension two a5 appears with t^(3/2).

The explicit mixed-boundary formula is Theorem 2.4 and the preceding displayed A5 terms of [Branson, Gilkey, Kirsten and Vassilevich](https://arxiv.org/pdf/hep-th/9906144). Inspection of its E-dependent terms shows that, after differentiation, every boundary monomial contains one derivative of u of order j and one derivative of v of order k with j+k <= 2. For example, u E_;nn gives u v_;nn, u E² gives u v E, u_;n E_;n gives u_;n v_;n, and u_;nn E gives u_;nn v. Mixed-projector terms include u chi_:a E_:a and u chi_:aa E; these obey the same bound. Derivatives here are covariant derivatives in the formula, including tangential ones. The remaining factors are drawn from E, curvature, the second fundamental form, S, chi, and the projector derivatives that occur in those E-dependent monomials.

Assume boundary length and bundle rank are uniformly bounded, and all those remaining factors are uniformly bounded along the approximating family. In particular this requires bounds on E, curvature, the second fundamental form, S, and chi through the derivatives actually occurring alongside E in the cited formula; it does not assume that every high derivative of the entire geometry is uniformly bounded. Assume the covariant boundary jets obey |nabla^j u|, |nabla^j v| <= C delta^(3-j) for j=0,1,2, uniformly in the field approximant. Then each differentiated monomial is bounded by C delta^(6-j-k), hence

  |partial_lambda a5_boundary(u,L_lambda,B)|_(lambda=0) <= C delta^4.   (1)

This follows term by term from the published formula, including its mixed-projector corrections; it does not require balanced projector ranks. The coefficient contribution to the all-mode expression 2 Theta'(t) I_t at t=epsilon is therefore O(delta^4 epsilon^(-1/2)) using |Theta'(t)| <= C t^(-2). It tends to zero on delta=epsilon^p for p>1/8, including the previously proposed p=15.

This result only bounds the isolated a5 coefficient. It does not supply a cutoff-uniform remainder or justify differentiating a joint asymptotic expansion. The a6 boundary coefficient and interior flux, geometric variations, physical domains and matching remain open. The uniform jet and geometry assumptions must be checked for the actual approximants. No Lean certification is claimed.

Remaining to-do list: control a6 and the differentiated uniform remainder, establish physical domain and normalization matching, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
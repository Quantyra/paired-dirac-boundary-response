# Cubic contact jets at the original seam

The source's original paired boundary is not the artificial moving cut. This note isolates a stronger fixed-seam statement for a scalar potential contact, under smooth mixed-boundary heat calculus. It does not establish the complete source response or a uniform rough limit.

The recorded source describes fixed complementary paired domains at the outer boundary, preserves b(0)=b'(0)=0, and retains the regular bolt: [rough paired variation](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md). Its [stationary boundary layer](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md) records constant complementary Dirichlet/Neumann projectors in the half-density frame at the geodesic boundary, and a paired spin-trace identity with an even double. These are recorded source claims, not an independent proof that every assumption below holds for every source sector.

Let the smooth fixed-boundary realization be Laplace type with local mixed data B, and let L_lambda=L+lambda v, with B, the connection and metric fixed. Let u and v be smooth scalar smearings whose full boundary jets of order zero, one and two vanish. The preserved one-sided cubic radial directions in `smooth-physical-cutoff-joint-path.md` have these jets at y=0, assuming the smooth seed collar and stationary extension. For t>0, the scalar contact equals minus the lambda derivative of Tr(u exp(-t L_lambda)).

By the local invariant polynomial and dimensional weight rule in [Branson, Gilkey, Kirsten and Vassilevich, Section 3](https://arxiv.org/pdf/hep-th/9906144), a boundary integrand for a_n has total weight n-1: E and curvature have weight 2, K and S weight 1, chi weight 0, and covariant derivatives each add one. The trace is linear in the smearing. Differentiating in lambda replaces one E or one of its derivatives by minus v or its corresponding derivative, while the other geometric and boundary factors remain fixed. Therefore every differentiated monomial contains derivatives of u and v of respective orders j and k with

  j+k+2 <= n-1, or j+k <= n-3.                              (1)

For n<=8, (1) gives j+k<=5. Since nonzero boundary jets of either u or v must have order at least 3, every monomial vanishes. Consequently

  partial_lambda a_n^boundary(u,L_lambda,B)|_(lambda=0) = 0,  n<=8. (2)

For n<3 there can be no potential-dependent monomial at all. Equation (2) includes a3 through a6, and does not depend on balanced projector ranks or on a uniform bound for high derivatives of the background. It applies separately to every fixed smooth approximant for which the stated local mixed realization and boundary jets hold. It is a zero coefficient statement, not a claim that the boundary heat contribution vanishes at finite t. The first order allowed by this counting is a9, where third derivatives of both directions can appear; even there the calculation does not assert a nonzero coefficient.

The interior integration-by-parts flux in `interior-contact-boundary-flux.md` also vanishes at the original seam: its terms contain u or its first normal derivative, both zero there. This statement concerns the displayed untwisted interior formula; additional sectors and magnetic terms require separate accounting.

The actual square's complete source domain, the potential vertex identification, all angular sectors, the geometric vertex, and the physical normalization still need to be matched. The reflected coefficient is generally only C2,1, so (2) for smooth one-sided approximants cannot be used to exchange smoothing with a heat expansion or control a uniform remainder. The source's even-double identity must be applied with its stated domain and spin hypotheses, and does not turn the double into a smooth metric. No Lean certification is claimed.

Remaining to-do list: verify the source-domain and vertex identification, control the rough geometric and contact remainders and common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
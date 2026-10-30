# Derivative count for the local contact bridge remainder

This applies `bridge-six-derivative-transfer-lemma.md` to the zero-thermal-image contact formula recorded in equation (6) of the frozen [conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md). It is conditional on that formula and is confined to a compact localized collar of its auxiliary full-line model.

Let xi be the centered Brownian bridge, h=sqrt(t), and

  A_h(y)=int_0^1 f(y+h xi_s)^2 ds,
  B_h(y)=int_0^1 f'(y+h xi_s) ds,
  V_h(y)=int_0^1 v(y+h xi_s) ds.

Take a fixed compactly supported smooth chi and define the zero-image contribution

  C(h)=(2pi)^(-1) integral chi u E[V_h A_h^(-1/2)
                                exp(h^2 B_h^2/(4 A_h))] dy. (1)

Assume real f>=m>0 and uniform bounded W3,infinity norms of f, u and v, with smooth f and v initially. For h in a fixed bounded interval, A_h>=m^2 and |B_h|<=||f'||_infinity. Expand the explicit exponential through j=2. The discarded exponential tail is O(h^6) after integration and expectation, uniformly under these bounds.

For j=0,1,2, define

 F_j(h)=integral chi u E[V_h B_h^(2j) A_h^(-j-1/2)] dy.

The corresponding contribution to (1) is h^(2j) F_j(h)/(4^j j! 2pi). Apply Taylor's theorem through order 5-2j to F_j. Every term in its (6-2j)-th h derivative has total spatial derivative order exactly 6: its 2j factors from B_h already each contain one derivative of f, and every h derivative adds exactly one spatial derivative to a shifted f or v. Derivatives of A_h and its inverse expand into finitely many such products; the bridge factors are bounded by a power of sup|xi|. The transfer lemma applies with cutoff chi u and gives a uniform bound on F_j^(6-2j), using derivatives of chi u through order three and a finite sixth bridge-supremum moment. Thus the Taylor remainder, including its explicit h^(2j), is O(h^6).

The expectation is even in h: replacing xi by -xi sends h to -h without changing its law. Therefore all odd Taylor coefficients vanish, leaving

  C(h)=c0+c2 h^2+c4 h^4+O(h^6),                           (2)

where the constant is uniform on the stated bounded real smooth families. In t this is C(sqrt(t))=c0+c2 t+c4 t^2+O(t^3). No inverse h is introduced by integration by parts. The contact has no outer t^-1 prefactor after the Duhamel time integral; the analogous ordinary heat trace does have that prefactor, so its corresponding remainder order differs.

For a fixed rough reflected f and v, the approximation and passage hypotheses in the transfer lemma allow the integrated coefficient expressions and the uniform inequality to pass to the limit; they must be verified for the actual extensions. In particular this derivation permits a jump in the third derivative but does not use a smooth even metric. The identity of c0,c2,c4 with the source's bulk and distributional coefficients, including normalization and boundary terms, is a separate calculation.

Equation (2) only controls the localized zero thermal image of the auxiliary bridge. Nonzero thermal images, spatial cutoffs and their commutators, the finite-temperature physical trace, bolt gluing, complex-parameter differentiation, and the exact source domain remain to be independently justified. Multiplication by an O(t^-2) angular factor would make this isolated O(t^3) term O(t), but does not establish the full angular or P1-D remainder. No Lean certification is claimed.

Remaining to-do list: verify the coefficient identities and omitted image/gluing terms, establish the physical response and regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
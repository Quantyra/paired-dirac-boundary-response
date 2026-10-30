# Physical and product thermal lapse at the RN outer cut

This compares the scalar lapse inputs behind the product-frame thermal bound
in `rn-product-lapse-uniform-lower-bound.md` and the physical congruence in
`physical-product-contact-operator-gap.md`. It does not assert the actual
physical spectral gap closes or establish either operator's global domain.

For the fixed RN-AdS seed, write

  g_orbit=F(r)d tau^2+F(r)^(-1)dr^2,
  hat g=U(r)^2 g,       U(r)=b_sphere/r,
  B(r)=b_sphere^2 F(r)/r^2.                                  (1)

The product orbit's coefficient of d tau^2 is B, while the physical orbit's
is F. In the proper-distance half-density convention of
`physical-auxiliary-collar-match.md`, the scalar multiplying the thermal
derivative is the inverse square root of that coefficient. Consequently

  f_product=1/sqrt(B)=r/[b_sphere sqrt(F)],
  f_physical=1/sqrt(F)=U f_product.                           (2)

These are scalar coefficient identities in their respective proper-distance
frames, not an identification of the associated radial Hilbert spaces or
operators. They are consistent with the separate four-dimensional
congruence relation and do not remove its derivative and domain terms.

With F(r)=r^2/L_4^2+1-c/r+d/r^2, F(r)/r^2 tends to L_4^(-2). Hence
f_product tends to L_4/b_sphere, but f_physical tends to zero as L_4/r.
For a finite outer cut R, let m_R be the infimum of f_physical over the
retained exterior. Since the endpoint is approached from inside,

  m_R <= 1/sqrt(F(R)) ~ L_4/R.                                (3)

For every fixed cut m_R is positive under the stated regular geometry, but
the elementary thermal estimate based solely on this scalar infimum cannot
supply a cut-independent positive constant. This is a limitation of that
estimate, not a proof that the actual physical operator has no uniform gap.
It also explains why the product-frame lower bound cannot be transferred to
the physical square merely by matching a thermal frequency: the physical
conformal multiplication degenerates at infinity and the full operator and
boundary maps must be retained.

A valid physical upper-endpoint argument may still use a sharper spectral
estimate or a joint large-time/cut limit. It must establish the actual
self-adjoint or paired domains, both partner traces, and uniform complex
parameter bounds before applying `physical-product-mixed-upper-endpoint.md`.
The result here does not establish a physical admission margin, a curved
trace remainder, or Lean certification. No numerical calculation is used.

Remaining to-do list: determine the physical spectral and domain bounds,
prove the mixed response and regulator, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.

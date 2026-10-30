# Smooth weighted approximants for the physical cutoff paths

This strengthens the existence construction in `weighted-remainder-cutoff.md`
with a prescribed error small enough for
`physical-background-cutoff-heat-comparison.md`. It applies to the fixed
radial C5 collar class, with a separately controlled smooth interior extension.
It is not a proof of cut-to-complete heat rates, source matching, a complete
proper-time limit or Lean certification.

Let r be a fixed C5 radial remainder satisfying the recorded weighted
estimates through derivative five, and let r_eta=q(y/eta)r be the raw
physical-side cutoff, vanishing on [0,eta] and agreeing with r for y>=2eta.
The preceding note constructs a compactly supported C5 extension which is
zero on (-infinity,eta], and mollifies it with h<eta/2. It chooses h
for each eta using uniform continuity of the derivatives through order five;
there is no claim of a universal rate in h over the entire bounded C5 class.

For 0<eta<1/2 define

  W_j(y)=y^(4-j)(1+|log y|), j=0,...,5,
  m_eta=min(1, min_(j<=5) min_(eta/2<=y<=y0) W_j(y))>0.

Since convolution converges to the extended r_eta in C5 for each fixed eta,
choose h_eta<eta/2 small enough that the smoothed remainder s_eta obeys

  max_(j<=5) ||partial_y^j(s_eta-r_eta)||_infinity
       <= eta^4 m_eta.                                   (1)

Both remainders vanish for y<=eta/2. Therefore, on the collar,

  |partial_y^j(s_eta-r_eta)| <= eta^4 W_j(y), j<=5.     (2)

The raw-cutoff weighted bounds plus (2) give uniform enlarged weighted C5
constants, and s_eta vanishes near the compactified boundary. Add the
unchanged smooth cubic c y^3: its coefficient and all of its boundary jets
are preserved. Fixed smooth cutoff transitions at the collar edge and a
smooth interior extension are assumed to match as in the preceding note;
if the interior data also need smoothing, choose and record a separate
approximation with the same physical W2 and N error bounds.

The physical scaled chart derivatives through order five of the resulting
fields are uniformly bounded by the chain rule already used in
`physical-rough-family-heat-diagonal.md`. For derivatives through order two,
the physical conformal factors and (2) give a pointwise smoothing error
bounded by C eta^4 u^4(1+|log u|). This weight is bounded in physical L2
and L-infinity on the collar, since the volume density is O(u^-4). Together
with the raw-cutoff estimates, and with the stated interior matching,

 ||b_eta^smooth-b||_(W2,infinity,physical)
       <= C eta^4(1+|log eta|),                          (3)
 N(v_eta^smooth-v) <= C eta^(5/2)(1+|log eta|).        (4)

The extra mollification contributes at most O(eta^4) to either bound, so it
does not worsen the raw-cutoff rate. The constants may depend on the fixed
field and chosen cutoff, but not eta. The smoothing choice depends on the
field; uniformity for an arbitrary noncompact family of C5 fields would need
a common modulus of continuity or another construction.

For the physical cut X_delta={u>=delta}, y/u tends to a positive constant.
Thus if eta/delta->0, the raw cutoff is eventually identical to the original
field on X_delta; the smooth approximant can still differ there, but its
error is controlled by (1)--(4). One compatible choice for the sufficient
paths already derived is

  delta=epsilon^2,  eta=epsilon^8.                       (5)

It satisfies delta=epsilon^p with p>3/2, eta=epsilon^q with q>15/2, and
eta/delta->0. Equations (3)--(4) supply the smooth-approximant hypotheses
for the same-cut background and direction comparisons, subject to their
remaining uniform geometry, domain and form-trace assumptions.

This is a construction of the radial physical-side approximants and a
compatible path; it does not show quantitative convergence from the finite
cut to the complete operator, equality with the product-frame source trace,
existence of the renormalized finite part, or uniformity in t of the entire
response. No numerical run or Lean certification is claimed.

Remaining to-do list: control the cut-to-complete response and its
subtractions, match the physical source, finish novelty and manuscript, and
certify supported claims in Lean on GCP.
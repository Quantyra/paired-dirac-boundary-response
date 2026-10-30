# Thermal-image bound for the localized contact bridge

This extends the localized real-coefficient result in `bridge-contact-local-remainder-audit.md` to the full antiperiodic thermal image sum, conditional on the source's separated bridge and Poisson formulas. It does not prove that this auxiliary localized expression equals the global physical trace.

For the notation A_h,B_h,V_h in that note, use the image representation recorded in equations (2)--(4) of the frozen [curved paired heat bridge](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-curved-paired-heat-bridge.md). The inserted scalar V_h depends on the radial bridge and its insertion time, not on the thermal Fourier momentum. Therefore, provided the original momentum sum, bridge expectation and insertion integral can be interchanged as assumed by the source, Poisson summation multiplies the zero-image integrand by

  P_t(A,B)=sum_(k in Z) (-1)^k exp[-k^2 T^2/(4t A)]
                                      cos[k T B/(2 A)].     (1)

Here T is the fixed positive thermal period. Assume real m<=f<=M and |f'|<=K along the full auxiliary bridge, so m²<=A<=M² and |B|<=K. For t>0 the nonzero images obey

  |P_t(A,B)-1| <= 2 exp[-c/t]/[1-exp(-3c/t)],
  c=T²/(4M²).                                                (2)

Indeed |cos|<=1, exp[-k²T²/(4tA)]<=exp[-k²c/t], and k²>=1+3(k-1) for integers k>=1. This also includes the antiperiodic signs, which cannot enlarge the absolute bound.

Use |V_h|<=||v||_infinity, A^-1/2<=m^-1, exp(t B²/(4A))<=exp(t K²/(4m²)), and integrate |chi u|. The absolute difference between the full thermal contact and its zero image is bounded by

  (||chi u||_1 ||v||_infinity)/(pi m)
    exp[t K²/(4m²)] exp[-c/t]/[1-exp(-3c/t)].                (3)

The factor 1/pi follows from the 1/(2pi) zero-image prefactor and the two signs of k in (2); this bound uses the same normalization as the preceding local note. For 0<t<=t0, (3) is O(exp(-c/t)), with constants depending on t0,m,M,K,T and the insertions. Hence the entire nonzero image contribution is o(t^N) for every fixed N. It does not alter the c0,c2,c4 coefficients or the O(t^3) local remainder established there. If a full angular multiplier obeys |Theta'(t)|<=C t^-2, its product with (3) remains exponentially small, but this statement concerns only the isolated localized image term.

The bound is uniform across a family only when m,M,K and a positive lower bound for T are uniform. The scalar insertion and actual image formula must be verified for the paired closed realization; odd grading sectors or other vertices need their own analysis. This real absolute-value argument does not establish complex parameter derivatives, domain matching, spatial commutators, bolt gluing, or the global common regulator. No Lean certification is claimed.

Remaining to-do list: verify the physical bridge identity, coefficient and gluing terms, common regulator and normalization, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
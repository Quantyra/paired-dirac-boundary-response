# Leading localized bridge contact coefficients

This checks the zeroth- and first-order coefficients in `bridge-contact-local-remainder-audit.md` directly from the recorded zero-image bridge. It does not independently calculate the t² coefficient or establish global gluing.

Use the smooth real collar g=dy²+f(y)^(-2) d tau², f>0, and stationary u,v. Let dmu=dy/f be the time-reduced geometric measure, Delta v=v''-(f'/f)v', and R=2f''/f-4(f'/f)². Retain the compact localization chi and the source's prefactor 1/(2pi). Let mu1=int xi_s ds and mu2=int xi_s² ds for the bridge with covariance 2(min(s,r)-sr). Direct integration gives E mu1²=1/6 and E mu2=1/3. Set h²=t.

Writing primes for y derivatives, the required expansions are

 V_h=v+h v' mu1+(h²/2)v'' mu2+O(h³),
 A_h=f²+2h f f' mu1+h²[(f')²+f f'']mu2+O(h³),
 B_h=f'+O(h).

Expanding V_h A_h^(-1/2) exp(h² B_h²/(4 A_h)) through h² and taking expectations gives

 E[...] = (1/f) {v+h²[v''/6-(f'/f)v'/6
                              +v((f')²/(3f²)-f''/(6f))]}+O(h^4)
        = (1/f) {v+t[Delta v/6-Rv/12]}+O(t²).              (1)

The O(h^4) follows after integration and expectation from the evenness and remainder argument in the preceding note; it is not a pointwise uniform fourth-derivative assertion for the rough field. Substituting (1) into its localized contact formula yields

 C(t)=(4pi)^(-1) integral chi u [2v+t(Delta v/3-Rv/6)] dmu
       +O(t²).                                               (2)

Thus the rank-two leading coefficient and the signs match the non-integrated smooth interior density in the frozen [conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md), subject to its stated physical-half/time normalization. On a closed domain, or if chi u has compact support away from a boundary,

 integral chi u Delta v dmu = -integral <grad(chi u),grad v> dmu. (3)

The derivative of chi in (3) is essential. With chi=1 on an actual domain with boundary, Green's formula adds integral_boundary u partial_n v ds using the outward normal; the symmetric source expression follows only after the appropriate boundary/distributional and localization terms are accounted for. At the original cubic seam that explicit flux vanishes when u and the relevant boundary jet vanish, but the complete physical trace still requires its paired-domain argument.

The nonzero thermal images are exponentially small under `bridge-contact-thermal-image-bound.md`. Equation (2) leaves the t² coefficient, reflected distributional completion, all gluing terms and the full physical normalization audit open. It is not a Lean certification.

Remaining to-do list: verify the t² coefficient and boundary completion, prove gluing and the common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
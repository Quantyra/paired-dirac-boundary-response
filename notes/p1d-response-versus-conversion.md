# P1-D heat remainder is distinct from the endpoint conversion

The frozen [rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md), section 5, defines r_curved as the localized exact weak mixed response on the original paired square, after extracting the localized tangent contribution with its cutoff terms. Its sufficient target is |r_curved(t)|<=A(K)||u||_A||w||_A t^(3/2), to be integrated against dt/t². The source explicitly keeps density/second vertices, contacts, angular weights, thermal images and local restorations in the physical action.

By contrast, [the conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md), equations (2)–(3), defines J_e as the endpoint difference between two regulated actions. Its second variation includes a geometric heat variation and 2 Theta'(e) I_e. That endpoint is not itself the r_curved integrand specified above. A formula relating the two, including all subtractions, measure factors and endpoint terms, would need to be derived before their power bounds can be compared.

Accordingly, the O(e) result in [the flat conversion diagnostic](flat-conversion-leading-remainder.md) is a result for its stated endpoint observable and exact-angular-factor subtraction. It neither disproves nor demonstrates the sharpness of P1-D. In the flat seed the source's r_curved subtracts the localized tangent contribution, so that subtraction must be accounted for before using any flat response as a test. The earlier [power audit](curved-contact-power-audit.md) conflated the two observables by describing the P1-D target as the complete conversion remainder; its componentwise endpoint calculation remains useful only within the explicit conversion scope.

This correction does not establish either the endpoint identity for the physical domain or the missing curved heat estimate. The next mathematical obligation is to write the exact mixed response and localized tangent subtraction on the same fixed Hilbert space and regulator, including all vertices and cutoff terms, then estimate their difference. Do not transfer an endpoint power or a flat coefficient to that difference without such an identity.

## Exact fixed-cut identity for the heat Hessian

There is an exact positive-time identity between the full-Weyl and
fixed-angular-mass orbit heat Hessians on the common finite-cut mode form
domain. For each nonzero angular mass `mu`, let `H_FW,mu(t)` and
`H_orb,mu(t)` be the mixed parameter derivatives at `b=0` of the respective
heat traces. Assume the families have the same unvaried square
`Q_0=D^*D+mu^2`, their quadratic forms are twice differentiable on the
common first-order form domain, and the Duhamel differentiations and trace
ideals in equation (4) of the cited note are justified at fixed `t>0`.
Then

    H_FW,mu(t) = H_orb,mu(t) + D_mu(t),

where `D_mu(t)` is exactly the right-hand side of equation (4) in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md):
the mixed correction vertex, both ordered orbit/correction cross terms, and
both ordered correction/correction terms. The formula includes the full
`mu^2` and commutator vertices. It is not merely a first-vertex insertion.

Choose flat tangent subtraction terms `T_FW,mu(t)` and `T_orb,mu(t)` for
those same two heat families, with the same cut, trace density and Fourier
normalization, and put

    r_FW,mu(t)=H_FW,mu(t)-T_FW,mu(t),
    r_orb,mu(t)=H_orb,mu(t)-T_orb,mu(t),
    delta_T_mu(t)=T_FW,mu(t)-T_orb,mu(t).

Subtraction of the heat-Hessian identity gives the exact algebraic relation

    r_FW,mu(t)=r_orb,mu(t)+D_mu(t)-delta_T_mu(t).          (3)

For a fixed finite cut and `epsilon<=t<=T`, the product-mode form and
holomorphy argument in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md)
permits summing this identity over the massive tower, provided the chosen
localized smearing is fixed and the mode-uniform trace bounds there hold.
The LLL remains a separate term. Equation (3) is a same-regulator identity
for heat Hessians; it does not exchange the proper-time endpoint, spatial
cut, or physical source limit.

The source's `r_curved` is not yet identified with `r_orb` in (3). The
frozen conversion formula includes `2 Theta'(t) I_t` in addition to its
geometric response, while the full-Weyl heat Hessian contains the `D_mu`
terms. Their flat local subtractions also differ as shown above. To use
equation (3) for P1-D, one must still show that the source's localized
tangent subtraction equals the selected orbit tangent plus the appropriate
`delta_T`, and account for the source contact, physical density, boundary
transgression, LLL and local restorations on that same Hilbert space and
regulator. No such source-level identity follows from Duhamel alone.

## Flat local subtraction audit

The available flat formulas confirm that the full-Weyl tangent subtraction
and the source geometric-plus-contact conversion are distinct. For the
massive `n>=1` tower, the full-plane rank-two full-Weyl tangent Hessian has
the local part

    16 b0^2/(pi t^2) U0
      + 2 C0/(pi t) U0 - b0^2/(pi t) U1,

where `Uj=integral u^(j) w^(j)`, `C0=-q-1/3`, and `b0` is the angular
scale. Applying the conditional physical-half factor `1/2` gives

    8 b0^2/(pi t^2) U0
      + C0/(pi t) U0 - b0^2/(2 pi t) U1.                 (1)

These coefficients are the full-Weyl angular-weighted tangent expansion in
[`full-weyl-angular-local-subtraction.md`](full-weyl-angular-local-subtraction.md),
not a curved source subtraction. By comparison, the source's specified
flat endpoint-conversion bilinear has

    C0/(2 pi t) U0 + b0^2/(12 pi t) U1
      + 1/(2 pi)[-C0 U1/12 - b0^2 U2/60
                         + 2 C1 U0/b0^2] + O(t),         (2)

from [`flat-conversion-angular-local-terms.md`](flat-conversion-angular-local-terms.md),
where `C1=q^2/6-1/30`. The `t^-2 U0` term in (1) is absent in (2), and the
`t^-1` coefficients differ. The two formulas name different observables;
this is not evidence of a physical disagreement. The conversion contact
term, the full-Weyl angular/commutator vertices, LLL allocation, and action
restorations must be combined on one fixed Hilbert space and regulator
before a physical subtraction identity can be asserted.

Consequently, the bridge-hit estimate in
[`full-weyl-curved-angular-factor-defect.md`](full-weyl-curved-angular-factor-defect.md)
cannot yet be assigned to the source's `r_curved`: it bounds one model
component before the physical source subtraction is identified. A correct
comparison must subtract the full-Weyl tangent local terms when decomposing
that family, while separately retaining the source contact/conversion and
LLL terms according to the actual action definition.

Remaining to-do list: derive the exact same-regulator identity between the
full-Weyl response, source conversion, contact and LLL; then prove the
uniform curved remainder, finish the physical-domain and novelty audits,
prepare the manuscript and certify supported claims in Lean on GCP.

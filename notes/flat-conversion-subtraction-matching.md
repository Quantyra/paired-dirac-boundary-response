# Restoring the cubic local term in the flat conversion diagnostic

This compares the two explicitly defined flat conversion subtractions in
`flat-conversion-leading-remainder.md` and
`flat-conversion-cubic-log-seams.md`, then traces their order to the frozen
`current-variable-contact-conversion.md` source at f0eab590. It is an
ordinary flat-model calculation, not a proof of the curved source expansion
or a Lean certificate.

Let J_2(t) and J_3(t) be the flat per-exterior conversion bilinear after
subtracting the Taylor polynomials of the smeared geometric kernel I and
contact kernel A through x² and x³ respectively, with their exact Theta
and Theta' factors. Suppose u,w are real even localized H³ profiles. Since

    [x³] I=-1/1680,     [x³] A=-1/840,

Parseval gives the exact identity for every t>0,

 J_2(t)-J_3(t)
   = -t² [Theta(t)+2t Theta'(t)]/(1680 pi)
                  integral_0^infinity u'''(y)w'''(y) dy.    (1)

The factor two from the even full-line integral is included. This is an
identity between the two stated flat subtraction conventions; no asymptotic
or additional physical counterterm is assumed.

For the recorded massive tower, C=2b0² and the Euler--Maclaurin estimates
in `angular-weighted-cubic-log-seam.md` give
Theta=C/t+O(1), Theta'=-C/t²+O(t^-1). Thus

 J_2(t)-J_3(t)
    = C t/(1680 pi) integral_0^infinity u'''w''' dy + O(t²). (2)

For the selected pure compactly localized cubic/log profiles, substituting
the previously derived J_3 gives

 J_2(t) = C t/(1680 pi) integral_0^infinity u'''w''' dy
          -3 C c_u c_w t^(3/2)/(1024 sqrt(pi))
          -C(c_u d_w+d_u c_w)t² log(t)/(420 pi) + O(t²).   (3)

This reproduces the leading O(t) term in the earlier x² diagnostic,
since C=2b0². The cubic Taylor subtraction is therefore a local,
cutoff-dependent O(t) adjustment, not the same quantity as the x²
remainder. It vanishes at the cutoff endpoint, but can affect any claim
about a pointwise rate; a separate proper-time integration would require
its actual measure and subtraction scheme.

## Source comparison

Equations (4)--(5) of the frozen conversion source state the smeared
geometric heat expansion through its e term and the contact through e².
Their flat Fourier analogues are precisely the I and A terms through x²,
respectively. The source's common-regulator finite-part calculation relies
on remainders tending to zero after the angular weights. It does not state
that the extra x³ local term in J_3 is part of the physical counterterms.
Accordingly J_2 is the relevant flat comparison for those displayed orders,
conditional on matching the physical trace, while J_3 isolates finer seam
terms under an additional explicit diagnostic subtraction.

This source-order comparison does not establish the source's curved
remainder estimates or identify its endpoint J_e with P1-D's subtracted
mixed-response integrand. The common regulator, thermal images, bolt,
normalization and physical finite-cut domain still need their own proofs.
No numerical calculation is used.

Remaining to-do list: establish the physical conversion and curved
subtraction, regulator and geometry, decide novelty, prepare the manuscript,
and certify supported results in Lean on GCP.

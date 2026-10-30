# Reflected auxiliary normalization for the conversion terms

This puts the geometric and contact pieces of the source conversion in one
auxiliary normalization, using `compact-reflected-auxiliary.md`,
`paired-contact-reflection.md`, and `flat-orbit-fiber-normalization.md`.
It does not prove that the physical orbit is the auxiliary cylinder.

Let K_z(t) be the heat semigroup of the compact reflected full-cylinder
family with rank-four folded orbit fiber, even radial scalar coefficients,
and the same thermal spin structure and period T on both copies. Let
R be radial reflection, U=chi R, and Gamma=gamma_y gamma_tau. Assume the
closed-domain relations in the cited reflection notes hold for each real z:
U and Gamma commute with L_z, while U Gamma=-Gamma U. The half-cylinder
square is unitarily the U-even restriction, including both reflection fixed
points. Let u,v be even scalar bounded insertions.

For any trace-class operator A built from those heat factors and scalar
insertions, A commutes with U and Gamma. Trace invariance under the unitary
Gamma gives Tr(UA)=0, hence

  Tr_half(A)=Tr_full(A)/2.                              (1)

For the contact, apply (1) to A=u K_z(t-s) v K_z(s) and integrate s. For
the geometric term, apply it to A=u K_z(t), then differentiate at z=0
provided the heat trace derivative exists in trace norm and the varying
coefficient is even. This yields the same factor 1/2 for D_v T_t(u); the
variation is of the actual family of squares, not of a frozen square domain.
The same conclusion holds for the other geometric direction. The first
variation of an even family remains within the symmetry class, so no
additional reflection term is created by differentiation.

Define the time-reduced folded per-exterior trace as (2T)^(-1) times the
rank-four half-cylinder trace, in the source convention documented in the
fiber normalization note. Equations (1) then give

  T_per-ext = (4T)^(-1) Tr_full,4[u K_4],
  I_per-ext = (4T)^(-1) integral Tr_full,4[u K_4 v K_4]. (2)

The same 1/(4T) factor applies to each geometric variation. If the two
rank-two full-cylinder sectors are unitarily equivalent for the entire
scalar family, both traces and their geometric derivatives agree, and (2)
becomes 1/(2T) times the corresponding rank-two full-cylinder quantity.
This uses sector equivalence in addition to reflection and per-exterior
normalization. The source sphere multiplicity, which already includes both
nonzero sphere signs, is applied separately once; it is not halved here.

The second reflection point is included in (1)-(2). Replacing this auxiliary
with the physical bolt geometry requires the cited locality comparison and
its uniform hypotheses. The moved-cut seam correction must also preserve the
even family and the chosen parameter-dependent insertion convention. These
identities do not establish common-regulator subtraction, density/source
matching or a Lean certificate. No numerical run is used.

Remaining to-do list: establish the physical-to-auxiliary comparison for all
conversion terms, control the common regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
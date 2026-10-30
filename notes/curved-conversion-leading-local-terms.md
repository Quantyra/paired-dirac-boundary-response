# Leading curved conversion terms before local subtraction

This is a conditional algebraic audit of the combined conversion identity
and coefficients in equations (3)--(5) and the displayed variations in
`current-variable-contact-conversion.md` at frozen commit f0eab590. It does
not independently prove those curved heat expansions, their rough-domain
validity, or Lean certification. It keeps the geometric and contact pieces
together, unlike the isolated comparison in `curved-flat-locality-gap.md`.

Assume the source's common physical-half/time-reduced trace convention and
its fixed-coordinate, fixed-insertion geometric variations. Write

 U=integral u w,   P=integral grad u . grad w,
 V=integral R u w,

with the source's common geometric measure. Assume the integration by
parts used in that source is valid, including the boundary and bolt. Let

 Theta(t)=C/t+H0+O(t),   Theta'(t)=-C/t²+O(1), C=2b0².

The source has C=2 times its own angular coefficient denoted C; the
notation here matches `angular-weighted-cubic-log-seam.md`.

The source states the geometric smeared-heat variations and contact as

 (D_w T_t(u)+D_u T_t(w))/2
    =(1/(4pi))[4U/t - P/3 + O(t)],
 I_t(u,w)=(1/(4pi))[2U+t(-V/6-P/3)+O(t²)].               (1)

The first line uses delta A0[u]=4 integral uw and
delta A1[u]=integral u Delta w/3, followed by the symmetric average and
integration by parts. The second is the source's displayed coefficient, not
an independently proved estimate here.

Insert (1) into J_t''=Theta times the first line plus 2Theta' I_t. The
4 C U/t² terms cancel exactly. The remaining inverse-power coefficient is

 J_t'' = (1/(4pi t)) [4 H0 U + (C/3)(V+P)] + O(1),       (2)

provided the source's expansions are strong enough that the omitted terms
remain bounded after multiplication by the angular weights. The individual
curvature contact term in `curved-flat-locality-gap.md` survives in this
coefficient under the displayed geometric formulas; no other Ruw term is
present at that order in (1). This does not imply a divergent renormalized
observable: the source's finite-part prescription removes the inverse-power
local coefficients, and the flat/curved comparison has its own measure and
subtraction requirements.

Equation (2) identifies a specific local term that the physical subtraction
must retain. Its gradient and H0 pieces also demonstrate why matching only
the Ruw contact is insufficient. It gives no bound on the finite remainder,
no uniformity across rough families, and no equality with P1-D's distinct
mixed-response integrand. The valid use of the source variations, common
regulator, angular expansion, physical domains and boundary integrations
remain independent proof obligations. No numerical computation is used.

Remaining to-do list: prove the curved coefficient and remainder hypotheses,
match the physical common regulator and domains, decide novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

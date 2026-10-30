# Fourth-order bridge coefficient from Gaussian moments

Status: ordinary smooth periodic algebra, subject to review and not
Lean-certified. This supplies a direct route to Eq. (7) of the pinned
[variable-contact source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).
The rough BV passage and identification with the physical paired kernel are
separate obligations.

## Coefficient extraction

For smooth positive f and smooth v at fixed y, set p=f²,
q_j=p^(j)/(j!p), v_j=v^(j)/j!, b_j=f^(j+1)/j!, and
μ_j=∫₀¹ξ_s^j ds. Expand

    V_h A_h^(−1/2) exp[h²B_h²/(4A_h)]

through h⁴, with the source's A_h,B_h,V_h definitions. The higher
exponential terms begin at h⁶ and are separately bounded in
[the tail note](bridge-exponential-tail.md). The expectation of the h⁴
coefficient is

    f^(−1) E[Z₄] + (1/4) f^(−3) E[Y₂]
       + v(f')⁴/(32 f⁵),                                    (1)

where b₀=f', b₁=f'', b₂=f'''/2 and

 Z₄ = v₄μ₄ −(1/2)[v₃q₁μ₃μ₁+v₂q₂μ₂²+v₁q₃μ₁μ₃+v q₄μ₄]
     +(3/8)[v₂q₁²μ₂μ₁²+2v₁q₁q₂μ₁²μ₂
                +v(2q₁q₃μ₁μ₃+q₂²μ₂²)]
     −(5/16)[v₁q₁³μ₁⁴+3v q₁²q₂μ₁²μ₂]+(35/128)v q₁⁴μ₁⁴,

 Y₂ = v₂b₀²μ₂+2v₁b₀b₁μ₁²−(3/2)v₁b₀²q₁μ₁²
     +v[ b₁²μ₁²+2b₀b₂μ₂−3q₁b₀b₁μ₁²
                  −(3/2)b₀²q₂μ₂+(15/8)b₀²q₁²μ₁² ].

The binomial coefficients come from (1+x)^(−1/2) through x⁴ and
(1+x)^(−3/2) through x²; the final term is the zeroth coefficient of
(1/2)z_h² A_h^(−1/2). No product order or bridge-time correlation is
replaced by an independence assumption.

For covariance 2(min(s,t)−st), Wick's formula yields

    Eμ₂=1/3, Eμ₁²=1/6, Eμ₄=2/5,
    E(μ₃μ₁)=1/5, Eμ₂²=1/5,
    E(μ₂μ₁²)=11/90, Eμ₁⁴=1/12.                            (2)

Substitute (2), p=f² and its derivatives into (1). Collecting by the
v-derivative gives the source polynomial in Eq. (7). The separate
[proper-distance identity](bridge-contact-t2-identity.md) shows how that
polynomial becomes the geometric bilinear contact after weak integration by
parts. This extraction is for smooth coefficients and is not by itself the
uniform rough remainder.

## Verification contract

A small arithmetic check may compare the expanded expression (1)–(2) with
the cited polynomial for selected rational jets of positive f and v. It
checks transcription and numerical factors only; it cannot prove the
identity, the bridge formula, uniform bounds, or the rough limit. Inputs,
tolerance and output must be recorded if such a check is executed. The
ordinary coefficient extraction and Wick moment arguments remain the proof
route.

## Arithmetic spot check

The coefficient expressions were evaluated with IEEE-754 JavaScript
arithmetic for four jets ordered as (f,f',f'',f''',f'''',v,v',v'',v''',v''''):

    (1,2,3,4,5,2,1,3,2,4)
    (2,−1,3,−2,1,1,2,−1,4,3)
    (3,1,−2,2,−1,−2,3,1,−1,2)
    (1,0,0,0,0,1,2,3,4,5)

At absolute tolerance 10^(−12), all comparisons passed; the maximum absolute
difference was 7.105427357601002×10^(−15). The first attempted script did
not run because JavaScript requires parentheses around a negated power; the
corrected script produced the result above. This finite check is evidence
against transcription errors only and does not replace the algebraic proof
or establish the BV or physical claims.
Remaining to-do list: check the arithmetic and BV passage, verify the physical
paired boundary and regulator, finish the novelty audit, and certify the
supported claims on GCP.

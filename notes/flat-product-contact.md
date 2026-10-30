# Flat product contact: exact multiplier and all-frequency remainder

Status: ordinary flat-model calculation, subject to review and not
Lean-certified. It addresses the I_t term in
[the regulator conversion](tangent-regulator-normalization.md); it does not
prove the corresponding curved physical trace or common-regulator limit.

## Claim and normalization

Use the rank-two flat orbit Dirac square L_0=−Delta on R², directions u,w
that are real, even, localized functions of the normal coordinate y, and
the per-exterior physical-half normalization established conditionally in
the folding and fiber audits. Use Fourier transform
fhat(k)=∫ exp(−iky) f(y)dy and measure dk/(2pi). Define

    I_t(u,w) = ∫_0^t Tr_half[u exp(−(t−s)L_0)
                                w exp(−s L_0)] ds,

as a trace density per unit tangential length. Under the stated trace and
folding assumptions,

    I_t(u,w) = (1/(4pi)) ∫_R conjugate(uhat(k)) what(k)
                              A(t k²) dk/(2pi),
    A(x) = ∫_0^1 exp[−alpha(1−alpha)x] d alpha.             (1)

This factor uses rank two on the full plane and one half for the
per-exterior half trace. It is not another division of the angular
multiplicities.

## Derivation and local terms

For fixed s=alpha t, the full-plane rank-two trace density is

    (2/(4pi t)) ∫_R conjugate(uhat(k)) what(k)
                    exp[−alpha(1−alpha)t k²] dk/(2pi).

Complete the two-dimensional Gaussian square in the intermediate momentum;
the rank-two spin trace supplies 2. Integrating ds=t d alpha and multiplying
by the physical-half factor gives (1). The expression is symmetric in u,w
for real directions, as also follows from cyclicity and s→t−s.

The beta moments ∫a d alpha=1/6 and ∫a² d alpha=1/30 give

    A(x)=1−x/6+x²/60+O(x³).

Consequently the local terms, expressed on the physical half, are

    I_t(u,w) = (1/(4pi)) {
      2 ∫_0^infinity u w dy
      − (t/3) ∫_0^infinity u' w' dy
      + (t²/30) ∫_0^infinity u'' w'' dy
    } + R_I(t).                                             (2)

The factors of two in Parseval arise from even reflection. Formula (2)
matches the flat specialization of the source's contact expansion with
the same physical-half measure.

## All-frequency bound

For x>=0, Taylor's integral remainder gives

    |A(x)−1+x/6−x²/60| <= x³/840,

because ∫_0^1 [alpha(1−alpha)]³ d alpha=1/140. This holds for every
frequency, not merely for small tk². For u,w in the even full-line H³
class, Parseval and Cauchy–Schwarz yield

    |R_I(t)| <= t³/(1680 pi)
                 ||u'''||_{L²(half)} ||w'''||_{L²(half)}.   (3)

The derivatives include the localization transitions. If the separately
established angular estimate −Theta'(t)<=24C/t² applies in the same units,
then the omitted flat contact after the terms in (2) satisfies

    |2 Theta'(t) R_I(t)| <= (C/(35pi)) t
                 ||u'''||_{L²(half)} ||w'''||_{L²(half)}.   (4)

This is a conditional estimate for the cutoff conversion term, not an
admission margin and not a bound on a curved action. Its use in an
integrated or renormalized functional requires the actual regulator
measure and the remaining local restorations. The matched physical
operator, thermal/bolt effects, trace-class limit and uniform curved
remainder remain independent obligations.

Remaining to-do list: verify the physical common-regulator contact and its
curved remainder, complete the prior-art comparison, formalize the supported
response statements in Lean on GCP, and prepare the manuscript.
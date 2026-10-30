# Trace-norm heat bound for the compact lapse comparator

This upgrades `lapse-comparator-heat-bound.md` under an explicit compact
heat-trace hypothesis. It concerns the constructed auxiliary comparator,
not the physical-to-comparator locality error or a Lean certificate.

Use its closed A, first-order domain V, positive multipliers F_ell,F0 and
positive squares L_ell,L0. Assume the common lower bound F_ell>=m>0 and
let delta=||F_ell²-F0²||∞. Suppose L0 has compact resolvent and, for
0<s<=s0,

    Tr(exp(-s L0)) <= H s^(-d/2).                            (1)

The common form domain and q_ell>=alpha q0 with alpha=(m/F0)² imply by
the min-max principle that L_ell also has compact resolvent and

    Tr(exp(-s L_ell)) <= Tr(exp(-alpha s L0))
                          <= H (alpha s)^(-d/2),             (2)

provided alpha s<=s0. The bounded invertible multiplier ensures the common
form-domain norms are equivalent; no equality of square domains is used.

Write S_ell=exp(-t L_ell/3) and S0=exp(-t L0/3). The operator estimate in
the preceding note gives

    ||S_ell-S0|| <= D,   D=pi delta/(2 exp(1) m F0).        (3)

Telescoping S_ell³-S0³ into three products, each containing one difference
and two heat factors, and applying Schatten Hölder gives

 ||exp(-t L_ell)-exp(-t L0)||_1
    <= D [||S_ell||_2²+||S_ell||_2 ||S0||_2+||S0||_2²].  (4)

There is one subtlety in this expression: use the telescoping order
S_ell³-S0³=S_ell²(S_ell-S0)+S_ell(S_ell-S0)S0+(S_ell-S0)S0²;
in each term the two S2 factors may be adjacent or on opposite sides of
the bounded difference. For t sufficiently small that the heat bounds apply,
(1)--(2) give

 ||exp(-t L_ell)-exp(-t L0)||_1
    <= 3 D H (3/(2 min(1,alpha) t))^(d/2).                (5)

Thus the shrinking RN comparator has an O(ell² t^(-d/2)) trace-norm bound
under these compact hypotheses. For any bounded insertion M_u, its trace
difference is bounded by ||u||∞ times (5). No localized multiplier is
claimed to be Hilbert--Schmidt by itself.

Equation (5) is not uniform as t->0 and does not control geometric
parameter derivatives, a noncompact/bolt limit, or the comparison of the
physical lapse to the auxiliary lapse outside their common collar. Any joint
ell,t path must separately make the right side tend to zero and control that
locality error. Physical domain, bundle and common-regulator matching remain
open. The constants are estimates, not physical admission margins. No
numerical calculation is used.

Remaining to-do list: establish physical-to-comparator locality and actual
trace normalization, prove the common-regulator response, decide novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.

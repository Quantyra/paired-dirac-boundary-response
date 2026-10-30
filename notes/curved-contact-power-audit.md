# Curved remainder: power-counting audit of the contact bridge

Status: comparison of existing conditional estimates with the sufficient
P1-D target in [the claim ledger](claim-dependencies.md). It is not a lower
bound on the actual remainder or proof that the target fails. It identifies
which estimates need strengthening or cancellation before those notes can
support the target. It is not Lean-certified.

## Target and contact conversion

The proposed sufficient target is a bound on the complete subtracted mixed
curved conversion remainder of order t^(3/2), uniformly in the declared
family and regulator. The source conversion contains

    J_t''(u,v) = Θ(t)[δ_v T_t(u)+δ_u T_t(v)]/2
                    + 2Θ'(t) I_t(u,v).

For fixed q,b₀, [the angular estimate](angular-weighted-locality.md) gives
|Θ'(t)|≤C t^-2 for 0<t≤t₀, with C finite and dependent on those fixed
parameters. Therefore a stand-alone absolute bound on a contact remainder
R_I sufficient to contribute O(t^(3/2)) is

    |R_I(t)| ≤ C_I t^(7/2).                               (1)

With h=√t, this is O(|h|⁷). This is a sufficient componentwise route,
not a necessary condition: a proof of the full J_t'' remainder could use
explicit cancellations with geometric or restored local terms.

## What the current bridge estimates actually supply

| Existing bound | Unweighted contact order | Bound after |Θ'|=O(t^-2) | Consequence |
| --- | --- | --- | --- |
| [Zeroth BV term](bridge-zeroth-bv-route.md), after its h⁴ coefficient | O(h⁵)=O(t^(5/2)) | O(t^(1/2)) | Does not alone prove (1). |
| [Quadratic BV term](bridge-quadratic-bv.md), after its h⁴ coefficient | O(h⁵)=O(t^(5/2)) | O(t^(1/2)) | Does not alone prove (1). |
| [Exponential tail](bridge-exponential-tail.md), after retaining terms through z²/2 | O(h⁶)=O(t³) | O(t) | Also does not alone prove (1). |

These are upper bounds for individual pieces, not asymptotic equalities
or evidence of an uncancelled physical term. In particular, the exponential
piece has additional h⁶ structure that could be retained as a local
coefficient instead of treated as a remainder; doing so requires the
corresponding complete subtraction and a new higher-order bound. Similarly,
the selected mass/log directions may yield cancellations absent from the
generic BV estimates, but those cancellations must be stated and proved.

The local t² coefficient identity, seam atom and half/thermal normalization
must match across all pieces before defining R_I. The conditional
exponentially small bolt/auxiliary locality errors, after angular weighting,
do not fix this power-counting gap: they compare operators, while the bounds
above control the local bridge expansion.

## Next decisive proof obligation

To close P1-D by a componentwise route, derive a common-regulator contact
expansion through the necessary h order, retaining cubic seam distributions,
density/coincidence and all insertion terms, and prove the h⁷ residual in
the actual weighted direction norms. Alternatively derive an explicit
combined geometric-plus-contact cancellation yielding t^(3/2) directly.
Either route needs a uniform physical atlas, domains and thermal/angular
normalization. The existing O(h⁵) bounds may still establish a weaker
endpoint result in their stated model, but they must not be relabelled as
the P1-D theorem or a physical margin.

P1-D is a proposed extension, not automatically a prerequisite for the
narrower operator and tangent paper. The research decision still requires
the full dependency and prior-art audit specified by S001. No numerical
computation is used for this exponent comparison.

Remaining to-do list: attempt the h⁷ or combined-cancellation estimate;
verify the physical bundle and all vertices; complete the novelty decision,
manuscript and Lean certification without broadening unsupported claims.

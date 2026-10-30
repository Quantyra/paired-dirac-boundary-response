# Square domains under a scalar congruence: boundary criterion

Status: conditional ordinary argument for a compact smooth finite-cut seed,
not a physical-domain audit or Lean certificate. It sharpens the square-domain
question in [the multiplier argument](paired-multiplier-domains.md). The first
unsupported physical implication is that the seed, boundary normal,
projectors and global regularity meet all hypotheses below.

## Claim

Assume the paired H¹ domain identifications (1) of that argument, and write
P=Pi_+ for the allowed first-order boundary projection and 1−P for its
complement. Assume the Dirac principal symbol is Clifford multiplication,
P commutes with normal Clifford multiplication c(n), and P anticommutes
with tangential Clifford multiplication in the sense that tangential
Clifford multiplication exchanges the two projector subbundles. More
precisely, P c(ξ_tan) P=0. Take a real b in W^{2,∞}(X), E=e^(−b/2),
and D_b=E D E on Dom(D). All boundary traces below are Sobolev traces.

Then ψ belongs to Dom(D_b* D_b) exactly when

    ψ in Dom(D),   Dψ in H¹(X),
    P trace(Dψ) = (1/2) (trace ∂_n b) c(n) trace(ψ).       (1)

In particular, if trace ∂_n b=0 on the boundary, the actual composition
domain of D_b* D_b equals Dom(D*D). No common square-domain conclusion
is made when that trace is nonzero or W^{2,∞} fails.

## Argument

The first-order domain and adjoint identities give

    Dom(D_b* D_b) = {ψ in Dom(D): D_bψ in Dom(D*)}.

The product rule yields, distributionally,

    D_bψ = E² [Dψ − (1/2)c(db)ψ].                         (2)

Because b is W^{2,∞}, E² and its inverse are W^{1,∞}, and c(db) is a
W^{1,∞} bundle endomorphism. For ψ in H¹, (2) is in H¹ if and only if
Dψ is in H¹. This uses the inverse multiplier in one direction and the
ordinary product rule in the other; it does not presume H² regularity.

When these H¹ conditions hold, trace compatibility and the complementary
adjoint condition imply

    0 = P trace(D_bψ)
      = (trace E²) [P trace(Dψ) − (1/2)P c(trace db) trace(ψ)].

Here trace(E²) is bounded below by a positive constant. The first-order
condition gives trace(ψ)=P trace(ψ). Decompose trace(db) into normal and
tangential parts. The tangential term vanishes by P c(ξ_tan) P=0, while
normal Clifford multiplication commutes with P. This proves (1). For the
seed square, the same composition criterion is ψ in Dom(D), Dψ in H¹,
and P trace(Dψ)=0, which proves the final assertion.

The direction of n and the convention for Clifford multiplication must
match the actual operator: changing n changes both ∂_n b and c(n), leaving
their product unchanged. The proof does not assert a specific Robin formula
or identify the square domain on a noncompact limit.

## Relevance to the collar and limits

A physical-side collar field b=c y³+r with a differentiable remainder
whose boundary first derivative vanishes has ∂_n b=0 at y=0. The cubic term
alone has that property; it is not enough to infer the condition for an
unspecified remainder. A compact smooth collar with the source's bounded
second-derivative control and suitably regular interior extension can meet
W^{2,∞}; this requires an actual atlas and extension check. If the boundary
is at a finite outer cut rather than at y=0, its normal derivative must be
checked at that cut separately. A vanishing normal trace is a sufficient
condition here, not a proof that all paper variations obey it.

### Check against the pinned mass/log collar

Section 3 of the [pinned rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md)
identifies y as proper distance on the physical outer half, with boundary
at y=0, and specifies |c|≤K and |r^(j)(y)|≤K j! 100^j y^(4−j)L(y),
L(y)=1+log(1/y), for j≤5 and 0<y≤0.1. Consequently

    |b'(y)| ≤ 3K y²+100K y³L(y) → 0,
    |b''(y)| ≤ 6K y+20000K y²L(y),

and b itself tends to zero. The second displayed bound is uniformly finite
on the collar. Thus the prescribed physical-side function extends with
zero first boundary jet and bounded first two weak normal derivatives.
In a proper-distance collar, ∂_n b is ±b'(0), so its boundary value is
zero, regardless of the normal orientation. The same calculation applies
to each direction u,w with its own source norm and to a fixed finite power
of the logarithmic weight.

For the stated radial collar fields, a smooth finite-cut metric and smooth
collar atlas convert these bounded derivatives into a local W^{2,∞} bound;
the source additionally calls for interior/cold C5 charts and regular even
disk fields. If those charts form a finite smooth atlas with matching
uniform bounds, they supply the global W^{2,∞} hypothesis. Under those
explicit atlas assumptions and the conditional H¹ projector-domain
identifications, (1) therefore gives the *same* square domain for the
source's unregularized finite-cut mass/log family. The cubic is retained on
the physical side; no smooth even extension is used in this argument.

This is an application of the criterion, not an independent reconstruction
of the physical atlas or seed realization. A boundary moved to y=η>0 need
not have zero normal jet, and no identification of different cut domains
follows. The conclusion also does not apply automatically to a generic
W^{1,∞} multiplier, an unbounded family of logarithmic degrees, or a
noncompact limit.
This result does not freeze a square domain for arbitrary W^{1,∞} fields,
does not justify differentiating a heat trace, and does not establish the
physical global bundle, regulator or curved-response hypotheses. No numerical
check can substitute for the trace and composition-domain argument.

Remaining to-do list: verify the actual finite-cut geometry and collar normal
traces, settle the prior-art comparison, justify the response and regulator
limits, and certify supported results in Lean on GCP.

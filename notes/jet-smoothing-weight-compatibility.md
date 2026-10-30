# Weighted collar bounds for jet-preserving smoothing

Status: ordinary sufficient estimate for the strengthened post-jet class in
[the jet-preserving construction](jet-preserving-postremainder-smoothing.md).
It checks compatibility with the source's physical-side j≤5 weights under
additional explicit assumptions. It is not a proof that the original
weighted class satisfies those assumptions or a Lean certificate.

## Hypotheses

Use the construction there with 0<ε≤ε₀, fixed compact support and even
mollifier. In addition assume that the post-jet remainder r has

    r^(j)(0)=0 for j=0,1,2,3,
    ||r^(5)||₁≤H,
    |r^(5)(y)|≤K |y|^-1 [1+log(1/|y|)]                   (1)

for 0<|y|≤δ, together with uniform fifth-derivative bounds on a fixed
neighborhood outside that collar sufficient to handle convolution across
its edge. Let the fractional translation modulus of r^(5) be uniformly
bounded as in the construction note. Let |c|,|d| be uniformly bounded.
The explicit jet χ[c|y|³+d|y|⁴log|y|] is retained unchanged.

## Bounds for derivatives through four

Jet correction in the construction preserves r_ε^(j)(0)=0 for j≤3.
The common-support W^{5,1} argument gives a uniform bound
||r_ε^(4)||∞≤C(H+M) (with fixed mollifier, cutoff and support constants).
Taylor's integral formula from the seam therefore yields, for j=0,1,2,3,

    |r_ε^(j)(y)| ≤ C(H+M) |y|^(4-j),
    |r_ε^(4)(y)| ≤ C(H+M).                                (2)

These bounds are stronger than the corresponding source weights
|y|^(4-j)[1+log(1/|y|)] on a sufficiently small collar. This step uses
the explicitly imposed zero jets; they do not follow from arbitrary
W^{5,1} membership.

## Fifth derivative

Write g=r^(5). The construction gives

    r_ε^(5)=ρ_ε*g-(ζP_ε)^(5).

The second term is uniformly bounded, since ζ is fixed and the polynomial
coefficients are uniformly bounded; it vanishes near zero when ζ=1 there.
For |y|≤2ε, the first term obeys

    |ρ_ε*g(y)|≤||ρ||∞ H/ε
       ≤ 2||ρ||∞ H/|y|
       ≤ C H |y|^-1[1+log(1/|y|)].                      (3)

For 2ε<|y|≤δ/2, every convolution point has magnitude between |y|/2 and
3|y|/2. Applying (1) there gives the same weighted bound with a fixed
multiple of K. The fixed collar-edge and cutoff regions are controlled by
the stated uniform exterior bounds; their positive distance from zero lets
the weight absorb the constants. Thus

    |r_ε^(5)(y)| ≤ C(H+M+K) |y|^-1[1+log(1/|y|)]

on a fixed smaller physical collar, uniformly in ε. Together with (2),
the explicit y⁴log y jet and fixed cutoff satisfy the recorded j≤5 weight
bounds with an enlarged constant independent of ε. The cubic c y³ is kept
as the source's separate leading jet.

## Scope

The bounds use stronger post-jet W^{5,1}, zero-jet, translation-modulus and
exterior-control assumptions. They do not establish these properties for
an arbitrary source-class field. The approximated full profile still has
the intentional log seam and is not smooth there; only its post-jet
remainder is smoothed. Uniform weighted bounds are not a curved heat-trace
or common-regulator proof, and no constant here is a physical admission
margin. No numerical computation is used.

Remaining to-do list: verify these assumptions for the intended fields and
physical paired domains; complete the response, novelty and regulator
audits; write and certify the supported paper claims in Lean on GCP.

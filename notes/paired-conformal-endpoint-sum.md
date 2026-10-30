# Paired symmetry and the conformal endpoint sum

This records an exact consequence of the closed partner identity used in `physical-product-mixed-cutoff-bridge.md`. It distinguishes the source's sum of partner traces from a possible relative determinant. The conclusions are conditional on the stated full operator and trace hypotheses; no physical realization or regulator limit is established.

Let D(z) be a two-real-parameter family of densely defined closed operators, with a fixed unitary involution J and the full domain identity

 D(z)* = -J D(z) J,     J²=I.                             (1)

Suppose a fixed scalar insertion b commutes with J, and put L(z)=D(z)*D(z), Lbar(z)=D(z)D(z)*. Operator composition with (1), including its domains, gives

 Lbar(z)=J L(z) J,    exp[-t Lbar(z)]=J exp[-t L(z)] J.  (2)

When b exp(-t L(z)) is trace class, the corresponding partner product is trace class and unitary invariance and cyclicity imply

 Tr[b exp(-t Lbar(z))]=Tr[b exp(-t L(z))].               (3)

If these traces are twice differentiable in the two real directions and (1) holds throughout the neighborhood with the same J and b, differentiating (3) gives equality of their complete mixed derivatives. Thus the plus sum in the bridge is twice either partner trace. A cancellation between the two terms of that plus sum cannot be deduced from the paired symmetry; relative-minus combinations and cancellations inside a mixed derivative are different questions.

For an unbounded sign-definite b, the same conclusion applies to positive localized traces S exp(-t L) S with S=sqrt(|b|) when J commutes with S: the two positive operators are unitarily conjugate, and their traces agree even when both are infinite. Therefore the single-partner bare-log obstruction in `conformal-log-gapless-trace-obstruction.md` is not removed by adding its paired positive trace under (1). It still does not imply divergence of the mixed response, where vertices may supply decay.

This argument requires (1) for the actual varying operator, including both domains. A formal Clifford relation or an identity at one parameter value alone does not justify differentiating it. It also does not replace source half-trace, angular or zero-sector normalization, establish weighted vertex estimates, or authorize cycling an unbounded non-trace-class product. No Lean certificate is claimed.

Remaining to-do list: verify physical partner domains and direction-weighted traces, control the complete response and regulator, resolve novelty, finish the manuscript, and certify supported claims on GCP.

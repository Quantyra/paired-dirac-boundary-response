# Signed heat-weighted transport and block cancellation

This checks cancellation in the zero-energy model of
`heat-weighted-transport-sharpness.md`. The result concerns a specified
block-diagonal observable, not the physical response or Lean certification.

In the basis (v_+,v_-) and for lambda=mu A, write

    c=cosh(lambda)/sqrt(cosh(2 lambda)),
    s=sinh(lambda)/sqrt(cosh(2 lambda)).

The transported rank-one projection and its difference from P(0) are

    P(lambda)=[[c²,cs],[cs,s²]],
    Q(lambda)=[[-s²,cs],[cs,s²]].                          (1)

In particular Tr Q(lambda)=0 exactly. Since exp(-tB²) is scalar on every
angular eigenspace, the block sum is absolutely trace class for t>0 and

    Tr[Q_A exp(-tB²)]=0.                                   (2)

This is compatible with a nonzero, possibly nonconvergent trace norm: the
positive and negative eigenvalues of each Q block cancel in the signed trace.
It does not say that an arbitrary insertion or the physical response has
zero trace.

More generally, suppose an observable W is block diagonal in the same
basis and angular decomposition, with block diag(w_+(mu),w_-(mu)) and
|w_+|,|w_-|<=M uniformly. Then

    tr_orbit[Q(lambda) W(mu)] = s² [w_-(mu)-w_+(mu)].      (3)

Since s²<=min(lambda²,1/2), and with the angular heat trace hypothesis
Tr exp(-tB²)<=H t^(-m/2), the spectral bound
mu² exp(-t mu²)<= (2/(e t)) exp(-t mu²/2) gives

    |Tr[Q_A W exp(-tB²)]|
       <= C M H A² t^(-(m+2)/2),  0<t<=1.                (4)

All traces in (2)--(4) are well-defined for each positive t; the heat factor
is trace class and Q_A,W are bounded. For m=2, |A|=o(t) is sufficient for
(4) to vanish along a joint path, weaker than the absolute trace-norm
condition |A|=o(t^(3/2)). These are sufficient bounds for different
observables; (4) need not be sharp for a particular W.

The block-diagonal condition is substantive. An off-diagonal component of W
couples to the cs term in (1), which is generally linear in lambda near zero,
and the quadratic estimate (4) need not hold. Physical boundary transport,
mode mixing, insertion and heat-operator blocks have not been shown to obey
this hypothesis; no cancellation is transferred to the actual geometric or
contact response. No numerical calculation is used.

Remaining to-do list: identify the physical boundary map and observables,
complete the response and prior-art audit, prepare the manuscript, and
certify supported claims in Lean on GCP.
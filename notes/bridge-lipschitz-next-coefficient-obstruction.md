# A Lipschitz path derivative does not give a uniform next bridge coefficient

This is a regularity diagnostic for the remainder in
[`full-weyl-curved-scalar-interior-leading-coefficient.md`](full-weyl-curved-scalar-interior-leading-coefficient.md).
It concerns only the abstract Brownian path-expansion input. It is not a
counterexample to the specific scalar angular-mass functional or to the
physical response.

## Claim

A uniform bound on the first derivative and its Lipschitz constant is enough
to give an `O(h^2)` bridge-centering error, but it does not give a uniform
second-order coefficient with an `o(h^2)` remainder over the bounded family.
In particular, the `W^(3,infinity)` argument used to obtain a uniformly
Lipschitz path derivative cannot, by itself, be iterated to identify the
coefficient hidden in the current `O(t^(-1))` heat-trace remainder.

## Explicit bridge-functional family

Let `xi` be the centered bridge with covariance
`2(min(s,r)-sr)`, so `Z=xi_(1/2)` is centered Gaussian with variance `1/2`.
Choose an even, nonnegative `g` in `C_c^infinity(R)` such that `g(x)=x^4`
near zero and `E[g(Z)]>0`. For any sequence `delta_n` decreasing to zero, set

    G_n(x) = delta_n^2 g(x/delta_n).

Then

    G_n(0)=G_n'(0)=G_n''(0)=0,
    sup_n ||G_n'||_infinity < infinity,
    sup_n Lip(G_n') <= ||g''||_infinity.

The path functional `Phi_n(eta)=G_n(eta_(1/2))` has the same uniform
derivative and Lipschitz-derivative bounds on path space with the supremum
norm, since point evaluation has norm one. It is even, so no odd bridge term
is involved. At `h=delta_n`, however,

    E[Phi_n(h xi)] = E[G_n(delta_n Z)]
                   = delta_n^2 E[g(Z)]
                   = h^2 E[g(Z)] > 0.

Thus the Taylor polynomial through the quadratic coefficient at the
constant path is identically zero, while its bridge expectation has an
order-`h^2` error along this family. No uniform `o(h^2)` remainder follows
from the stated `C^(1,1)` bounds alone. Each individual `G_n` is smooth; the
loss is the absence of a uniform modulus for its second derivative.

## Consequence for P1 and first unsupported implication

The scalar seam note correctly obtains
`E[G(y+sqrt(t) xi)]=G(y)+O(t)` from a uniformly Lipschitz first derivative.
After the prefactor `t^(-2)`, this leaves `O(t^(-1))`, which is not
integrable against `dt/t^2`. The counterexample shows that this remainder
cannot be upgraded uniformly merely by reapplying the same centering
argument or by noting that each smooth approximant has higher derivatives.
An approximation proof would need a derivative modulus uniform over the
admitted family, with the modulus carried through the shrinking scale.

This does not establish that the actual source family lacks the needed
modulus: its weighted physical-side `C^5` assumptions and the special
algebraic structure of `G` may supply additional control. The next ordinary
proof must derive such source-specific control for the *complete* local
functional, or identify and subtract its next coefficient under the same
regulator. It must also include the orbit, commutator, density, contact,
boundary and LLL terms. This diagnostic does not close any of those steps.

Numerical role: none. The example is exact and analytic; numerical bridge
sampling would not establish a uniform derivative modulus.

Remaining to-do list: derive a uniform second-order bridge expansion for the
actual source functional from its physical-side hypotheses, or prove that its
next local coefficient is exactly removed by the prescribed subtraction;
then control the remaining P1 sectors and common-regulator endpoint.

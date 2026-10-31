# Operator resolvent variation: ordinary constant audit

Status: ordinary abstract argument conditional on the actual paired operator
hypotheses below. This is an audit of the numerical mechanism in section 2 of
the [pinned rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md),
not a proof of the required geometric realization, a trace bound, or a Lean
certificate. The full angular and thermal sums are not estimated here.

## Operator assumptions

Let Q be a skew-adjoint operator on a complex Hilbert space with fixed dense
domain, M>0, and let b be a real bounded scalar multiplication operator with
||b||_infinity <= B=1/1000. Let multiplication by exp(b) be bounded and
self-adjoint. Set A_b=Q+M exp(b) on Dom(Q). In the paper application Q is
the actual paired first-order representative; skew-adjointness and its domain
must be proved, not obtained merely by choosing a self-adjoint extension.

Since Re <A_b v,v> >= M exp(-B)||v||^2, A_b is bounded below by M exp(-B).
The same holds for its adjoint -Q+M exp(b). Closed range and zero adjoint
kernel imply that A_b is onto, hence

    ||A_b^-1|| <= exp(B)/M.                                  (1)

For a complex bounded scalar perturbation z with ||z||_infinity<r=1/8,
A_(b+z)=A_b+M exp(b)(exp(z)-1) on the same domain. Define

    q=exp(2B)(exp(r)-1).

The multiplication estimate and (1) give
||A_b^-1 M exp(b)(exp(z)-1)|| <= q. Since q<1, the Neumann inverse exists
and is holomorphic in z as a bounded L-infinity-valued perturbation, with

    ||A_(b+z)^-1|| <= exp(B)/[M(1-q)].                       (2)

The order of factors in the inverse identity is important; the above bound
uses A_b^-1 on the left. The same argument must be checked for any second
resolvent used to reconstruct the square.

## Conjugated inverse and Cauchy constants

Set S(z)=exp((b+z)/2) A_(b+z)^-1 exp((b+z)/2). For complex z, the two
multipliers are not assumed adjoints; their norms are bounded separately.
Equations (1)-(2) give the uniform ball estimate

    ||S(z)|| <= C/M,     C=exp(2B+r)/(1-q).                  (3)

The elementary rational exponential bounds below show q<0.134 and C<1.32.
For nonzero directions u,w in the complex L-infinity perturbation space,
Cauchy's estimate on the disk |s|<r/||u|| gives

    ||DS(0)[u]|| < 1.32/(M r) ||u|| = 10.56 ||u||/M.

For the mixed derivative use the two disks |s|<r/(2||u||) and
|t|<r/(2||w||). Their sum remains inside the radius-r ball. The two-variable
Cauchy coefficient estimate gives

    ||D^2 S(0)[u,w]|| < 4(1.32)/(M r^2) ||u|| ||w||
                        = 337.92 ||u|| ||w||/M.              (4)

Zero directions follow by linearity. The use of half-radius disks explains
the mixed-derivative constant; a one-variable diagonal estimate by itself
would not automatically establish the same bilinear bound. If a square
resolvent is proved to equal `(S_plus+S_minus)/(2M)` with both terms satisfying
(3)-(4), the corresponding derivative constants are divided by M. That
identity and both signs must be audited on their actual domains independently.

## Exact rational support for the constants

For rational 0<=x<1 and N=6, positivity of the exponential series and the
ratio bound for terms beyond degree seven imply

    exp(x) <= sum_(n=0)^6 x^n/n!
               + [x^7/7!] / [1-x/8].                         (5)

All arithmetic in (5) can be performed over the rationals. Applying it at
x=0.002, 0.125 and 0.127 gives respectively the rational upper bounds
1.002003, 1.133149 and 1.13546. Consequently

    q < 1.002003 * 0.133149 < 0.134,
    C < 1.13546/(1-1.002003*0.133149) < 1.32.

The exact rational arithmetic in these final bounds is drafted in
[`lean/ResolventVariationConstants.lean`](../lean/ResolventVariationConstants.lean).
It defines the Taylor polynomial plus geometric tail and states rational
inequalities for the three inputs, the Neumann factor, and the resulting
first- and mixed-Cauchy constants. The draft has not been compiled: the
GCP-only Lean requirement applies. Its theorems would certify only the
rational arithmetic after the ordinary Taylor-tail argument, not that
argument itself, the Banach-space Cauchy estimates, any operator/domain
hypothesis, or a trace response.

The GCP-only exact-source runner is
[`lean/cloud-resolvent-variation-constants-20261031.sh`](../lean/cloud-resolvent-variation-constants-20261031.sh).
It pins the Lean source SHA-256 and the existing Lean 4.30.0 source-only
build at `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`; the source file must be
copied to the builder's home directory before running it. The runner has not
been executed because the selected GCP account cannot refresh its token.

The accompanying exact-integer check supports those finite rational
comparisons; it does not prove (1)-(4), geometric hypotheses, or a trace
estimate. The ball bound B is a sufficient assumption and not an evaluated
norm of an unknown corrected geometry.

Remaining to-do list: verify the actual paired skew-adjoint realization,
scalar multiplier and domain hypotheses, the plus/minus square identity,
the trace and regulator requirements, and formalize the supported statements
and exact inequalities on GCP.

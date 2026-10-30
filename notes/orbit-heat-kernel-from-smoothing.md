# Heat-kernel diagonal from fixed-orbit smoothing

This closes the kernel-representation input in the chain from
`seed-square-h2-from-first-order.md` to `lapse-localized-volume-gain.md`,
on the stated fixed compact auxiliary model. It does not verify the physical
paired bundle, locality or mixed response, and is not Lean-certified.

Let X have finite volume and E have rank r. Let L be nonnegative
self-adjoint on H=L²(X,E), and assume for 0<t<=t0

    ||exp(-t L)||_(L² -> L-infinity) <= C t^(-d/4).        (1)

The norm uses the fiber norm and the constant is uniform over the family.
For fixed t put S=exp(-tL/2) and choose a countable orthonormal basis e_j
of H. Choose measurable representatives of S e_j. On a common full-measure
set, the L-infinity bound applied to every finite rational complex linear
combination and density imply that for each x the evaluation map
f -> (Sf)(x) extends to a bounded map H -> E_x of norm at most
C(t/2)^(-d/4). Hence

    sum_j |(S e_j)(x)|² <= r C² (t/2)^(-d/2).             (2)

The basis expansion defines a measurable Hilbert--Schmidt kernel S(x,y)
for almost every x: its row is the Riesz representation of evaluation,
and (2) bounds its squared row norm. Integrating (2) over finite-volume X
also shows S is Hilbert--Schmidt. Since S is self-adjoint, S²=exp(-tL)
has a trace-class integral kernel defined almost everywhere by

    K(t;x,y)=integral S(x,z) S(y,z)* dz.                    (3)

Its natural diagonal representative satisfies

    tr K(t;x,x) = sum_j |(S e_j)(x)|²
                 <= r C² (t/2)^(-d/2)                       (4)

for almost every x. Formula (4) is a chosen diagonal representative; an
arbitrary L² kernel is only defined almost everywhere on X times X, so its
values on the measure-zero diagonal cannot be used without this construction.
The same representation gives the localized Hilbert--Schmidt identity in
`lapse-localized-volume-gain.md`. All constants in (2)--(4) are uniform when
(1), r and the fixed volume are uniform.

For the two-dimensional lapse comparator, the first-order D-elliptic seed
regularity and adjoint-domain assumptions in
`seed-square-h2-from-first-order.md`, the scalar multiplier and product-rule
hypotheses in `lapse-uniform-square-h2.md`, and the fixed-manifold
interpolation in `orbit-diagonal-from-h2.md` imply (1) with d=2. Thus no
additional independent smooth-kernel assumption is needed for the
almost-everywhere diagonal estimate on this auxiliary model. The construction
uses the actual nonnegative self-adjoint squares; it does not apply to the
complex family without a separate argument.

The physical bundle and boundary-domain matching, control of the fixed
insertion complement, all geometric vertices, angular normalization and
common regulator remain open. No numerical calculation is used.

Remaining to-do list: establish those physical inputs and the mixed response,
resolve prior art, prepare the manuscript, and certify supported claims in
Lean on GCP.
# Explicit tail bound for the recorded angular tower

Status: elementary bound for the source's positive-time angular factor,
not a bound on the full curved response or a Lean certificate. The
[stationary massive boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md)
uses per-exterior degeneracies d_n=2(q+2n), n≥1, including both nonzero
sphere-Dirac signs. The fixed-sphere product source uses squared masses
M_n²=n(n+q)/b². Assume q≥0, b>0 and t>0.

## Bound

For an integer N≥1 define the omitted angular weight

    R_N(t)=Σ_{n=N}^∞ 2(q+2n) exp[−t n(n+q)/b²].

Let r=exp[−t(N+q)/b²], so 0<r<1. Since n²≥Nn for n≥N,

    R_N(t) ≤ 2 r^N [ q/(1−r)
                          + 2N/(1−r) + 2r/(1−r)² ].     (1)

The geometric identities Σ_{n=N}∞r^n=r^N/(1−r) and
Σ_{n=N}∞n r^n=r^N[N/(1−r)+r/(1−r)²] give the displayed expression.
For t≥t₀>0, r≤exp[−t₀(N+q)/b²], so this is a uniform explicit
positive-time tail tending to zero as N→∞. At N=1 it bounds the complete
massive tower; using the sharper n²≥Nn is useful when an actual cutoff N
is chosen. The lowest Landau level n=0 is separate and is not bounded away
or discarded by (1).

## Scope and numerical contract

This tail applies directly to the nonnegative scalar weight Theta(t) in
the recorded product seed. If a mode contribution is bounded in absolute
value by a common factor H(t) times its displayed exponential, then
H(t)R_N(t) bounds its omitted angular sum. Establishing that common factor
for the mixed Dirac response, including the zero mode, boundary contacts and
normalization, is an additional analytic obligation. An operator-norm
resolvent bound by itself is not such a heat-trace estimate.

The positive-time sum/limit exchange proved in
[the sector note](positive-time-sector-sums.md) does not require this
geometric estimate; (1) adds a concrete computable majorant only for the
specified angular weight. No computation was used to prove it. A numerical
use must specify q, b, t₀, N, units, the observable factor H, and any
other omitted sectors. Because the denominator deteriorates as t↓0 at
fixed N, the estimate does not justify a common-regulator or curved
small-time limit.

Remaining to-do list: establish sector-specific bounds for the physical
mixed response, retain the lowest Landau level and contacts, verify the
bundle/normalization, and certify supported statements on GCP.

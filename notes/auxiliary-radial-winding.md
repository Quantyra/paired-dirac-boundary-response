# Radial winding correction for the compact auxiliary contact

Status: ordinary bound for the explicit periodic auxiliary cylinder. It
connects its two-insertion contact to the whole-line bridge at fixed
positive heat time, with the complete thermal sum retained. It does not
establish physical bundle matching, geometric derivatives or a Lean
certificate.

## Claim

Use the full doubled cylinder of [the auxiliary construction](compact-reflected-auxiliary.md),
with radial period 2L, thermal period T and antiperiodic thermal spin
structure. Let f be real 2L-periodic, m≤f≤M and ||f'||∞≤G. Let u be an
L¹∩L∞ radial insertion supported inside one chosen period, and v be a
bounded 2L-periodic radial insertion. Let I_cyl(t) be the full-cylinder
contact trace divided by T. Let I_line,0(t) be the k=0 radial-image contact
on the line with the same periodic f and v and with u used only on that
chosen period. Let r_f be the finite orbit-fiber rank, including whatever
copy convention is explicitly chosen. Then for t>0,

    |I_cyl(t)-I_line,0(t)|
      ≤ r_f t ||u||₁||v||∞ e^(G²t/(2m²))
         /sqrt(4πt) · Z_T(t) · W_L(t),                 (1)

where

    Z_T(t)=(1/T) Σ_(j∈ℤ) exp[-(m²t/2)(2π(j+1/2)/T)²],
    W_L(t)=2 Σ_(k≥1) exp(-L²k²/t).

Both sums converge for every t>0. W_L(t) is exponentially small as
t↓0, and Z_T(t)=O(1+t^(-1/2)). Thus (1) is exponentially small up to a
polynomial in t. It retains all thermal frequencies and all nonzero radial
windings. The bound is a localization error, not a physical admission margin.

## Proof

For each thermal frequency p, the squared orbit operator has two spin
sectors with scalar potentials p²f²±p f'. The matrix heat kernel is the
sum of these sectors in the finite orbit fiber. The completed-square bound

    p²f²±p f' ≥ (m²p²)/2-G²/(2m²)                         (2)

holds pointwise. Feynman–Kac domination therefore bounds the absolute
kernel of each sector by the free radial kernel times
exp[-tm²p²/2+tG²/(2m²)]. This uses the positive time t of the entire
two-factor path; no truncation of p is made.

The periodic radial kernel is the image sum of the line kernel. For the
product with the periodic insertion v, integrating over the intermediate
point and using the semigroup/bridge decomposition turns the k-th image
into paths from y to y+2Lk over time t, with v evaluated at the insertion
time modulo 2L. Its magnitude is bounded by ||v||∞ times the free radial
kernel at displacement 2Lk. Thus it is at most

    ||v||∞ (4πt)^(-1/2) exp[-L²k²/t]
       exp[-tm²p²/2+tG²/(2m²)].

Integrating |u| over the selected period, summing over p and the fiber,
and integrating the insertion time over [0,t] gives (1). The k=0 term is
exactly the line contact with the declared periodic continuation of v;
all other k are charged by W_L. Absolute convergence follows from the
Gaussian bounds and justifies the rearrangements. For W_L, k²≥1+3(k-1)
for k≥1 gives

    W_L(t) ≤ 2e^(-L²/t)/(1-e^(-3L²/t)).

For Z_T, a Gaussian sum or an integral comparison gives the stated
O(1+t^(-1/2)) bound with m,T fixed. The half-cylinder trace is obtained
from this full-fiber result using the separate reflection factor, and the
per-exterior division and angular tower are then applied only in their
source-defined conventions.

## Limits

The bound assumes exactly periodic f and v on the artificial radial double,
with a local u supported in one fundamental interval. It does not say that
an arbitrary nonperiodic physical insertion is periodic away from the
collar; that extension and its locality error must be specified. It also
does not prove the physical-to-auxiliary domain comparison or the
geometric response vertices. Uniformity requires fixed positive m,L,T and
fixed G. No numerical calculation is used.

Remaining to-do list: match the physical collar and insertion extensions,
combine with the uniform contact locality theorem and geometric vertices,
finish the common-regulator and novelty audits, and certify in Lean on GCP.

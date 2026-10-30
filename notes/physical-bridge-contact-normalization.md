# Conditional physical-to-bridge contact normalization

Status: assembled positive-time locality result under explicit physical
bundle, closed-domain and uniform-family hypotheses. It combines the local
[half-density match](physical-auxiliary-collar-match.md), the compact
[collar locality theorem](fixed-seed-collar-contact-locality.md), the
[reflected auxiliary](compact-reflected-auxiliary.md), and its
[radial winding bound](auxiliary-radial-winding.md). This is not a complete
physical response, common-regulator theorem or Lean certificate.

## Matched comparison

Assume the physical finite-cut orbit problem has the H¹ paired and
complementary adjoint domains, bounded geometry/graph and heat constants,
and fixed time-reduced trace convention required by those notes. Assume its
collar spin and copy identification realizes the local half-density map,
and that the auxiliary f and scalar insertions agree with the physical
data on an open collar containing their supports. Choose the auxiliary
insertion extensions even and 2L-periodic, supported in the matched collar,
with u supported in one selected fundamental interval. Fix the thermal
period T and antiperiodic spin structure.

Let I_phys^(4)(t) be the unnormalized paired half-orbit contact at fiber
rank four, divided by T, and let I_aux,full^(4)(t) be the contact on the
full doubled auxiliary cylinder at the same rank and time normalization.
The collar comparison gives

    |I_phys^(4)(t) - I_aux,half^(4)(t)| ≤ C t^(-N)e^(-c/t),
    I_aux,half^(4)(t) = (1/2) I_aux,full^(4)(t).          (1)

The first C,c,N include the fixed trace normalization 1/T and insertion
norms; the second equality retains the auxiliary second reflection point.
The winding estimate then gives

    |I_aux,full^(4)(t)-I_line^(4)(t)| ≤ E_wind(t),         (2)

where I_line^(4) is the k=0 line bridge with the same normalized thermal
trace and E_wind is the explicit full-fiber bound in the winding note.
All radial windings and all thermal frequencies are retained.

## Rank and per-exterior factor

In the source's per-exterior convention, the folded rank-four orbit trace
is divided by two. Therefore (1)–(2) imply

    |I_phys,per-ext(t) - (1/4) I_line^(4)(t)|
       ≤ (1/2) C t^(-N)e^(-c/t) + (1/4) E_wind(t).      (3)

The factors 1/2 in the two errors follow from the per-exterior division and
from applying the half-cylinder equality to (2), respectively.

If the two copy sectors are unitarily equivalent on the line with the same
scalar insertions and the same thermal spin convention, their traces agree,
so I_line^(4)=2 I_line^(2). Under that additional explicit identification,
the main term in (3) is (1/2) I_line^(2), the rank-two whole-line bridge
with its standard time-reduced normalization. The sphere degeneracy d_n,
which already includes both nonzero sphere signs in the pinned convention,
is not divided by two again. The zero-mode allocation and the separate
Θ'(t) factor in the source's cutoff conversion remain as declared there.

## Scope

The conclusion applies only after the listed physical H¹/adjoint domains,
common collar and uniform global graph/heat hypotheses are verified. The
local differential and projector algebra has been derived, but it does not
alone establish those global hypotheses. The comparison is for bounded
collar-supported volume insertions and the contact term at positive t; it
does not differentiate metric families or prove the coincident and
geometric vertices. Multiplying the exponential errors by a polynomially
growing angular weight preserves their small-time vanishing, but no claim is
made here about unproved interchanges or the complete subtracted remainder.
No numerical computation is used.

Remaining to-do list: verify the physical global hypotheses and copy-sector
trace identification, prove geometric/coincidence vertices and the common
regulator limit, complete novelty review, and certify supported claims in
Lean on GCP.

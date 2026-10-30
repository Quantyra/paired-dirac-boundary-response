# Mass-log collar H3 bound with cutoff transitions

Status: ordinary one-dimensional estimate, not a proof of the full paired
quantum response or a Lean certificate. It supplies an explicit way to use
[the conditional all-frequency tangent estimate](tangent-remainder-bound.md)
without replacing the full localized third-derivative norm by a collar-only
jet. The recorded collar class is in section 3 of the [pinned rough-variation
note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).

## Setup

Take 0<delta<1 and let L(y)=1+log(1/y) for 0<y<=delta. Let

    f(y)=c y^3+d y^4 log y+r(y),
    |r^(j)(y)| <= K j! 100^j y^(4-j) L(y),   j=0,1,2,3,       (1)

where c,d are real and r has the weak derivatives needed for the displayed
bounds. Assume the derivatives represent the same function and the ordinary
product rule applies. Let chi be a real smooth cutoff on [0,delta], equal to
one near zero, compactly supported in [0,delta), and |chi|<=1. Put h=chi f.
The compact support and cutoff norms must be included in the chosen problem;
they are not silently absorbed into a local jet.

The right sides in (1) show r,r',r'' tend to zero at zero. Together with the
pure mass/log terms, the even full-line extension of h has weak derivatives
through order three in L2, with no delta term at the seam. This uses the
standard one-dimensional trace and gluing result. It gives the H3 input for
the flat estimate, not membership in any unproved global curved domain.

## Exact pure-jet contribution

Write f0=c y^3+d y^4 log y. For y>0,

    f0'''(y)=6c+d y(24 log y+26).

Direct integration gives the exact nonnegative quadratic form

    Q_delta(c,d) := integral_0^delta |f0'''(y)|^2 dy
      = 36 delta c^2
        + delta^2(144 log(delta)+84)c d
        + delta^3[192 log(delta)^2+288 log(delta)+388/3]d^2.    (2)

The cross coefficient is retained. Q_delta is nonnegative because it is the
integral of a square, even when an individual coefficient in the expanded
expression is negative. It is not an admission margin or the norm of an
unknown physical correction.

## Remainder and transitions

For j=0,1,2,3 define p_j=9-2j and L_delta=1+log(1/delta). Elementary
integration gives

    I_j := integral_0^delta y^(8-2j) L(y)^2 dy
         = delta^p_j [L_delta^2/p_j + 2 L_delta/p_j^2 + 2/p_j^3].  (3)

Leibniz, (1), and the triangle inequality imply

    ||(chi r)'''||_L2(0,delta)
      <= K sum_(j=0)^3 binom(3,j) ||chi^(3-j)||_infinity
                         j! 100^j sqrt(I_j).                       (4)

Define the explicitly charged pure-jet cutoff transition

    T_chi(c,d) = sum_(j=0)^2 binom(3,j)
                      ||chi^(3-j) f0^(j)||_L2(0,delta),             (5)

where

    f0'=3c y^2+d y^3(4 log y+1),
    f0''=6c y+d y^2(12 log y+7).

Every term in (5) is finite: derivatives of chi are supported away from the
seam, and their actual sizes and support remain part of the estimate. By
Leibniz and |chi|<=1,

    ||h'''||_L2(0,delta)
      <= sqrt(Q_delta(c,d)) + T_chi(c,d)
         + K sum_(j=0)^3 binom(3,j) ||chi^(3-j)||_infinity
                              j! 100^j sqrt(I_j).                  (6)

For two directions u,w satisfying their respective versions of (1), inserting
the two right sides of (6) into the flat estimate gives a finite, explicit
upper bound for the declared localized tangent problem. The full multiplication
and cutoff must be used before taking norms. This is neither a claim of a
sharp constant nor a certified bound on a complete curved response.

The same integration method can handle any fixed finite log weight, with
its own finite moments and constants; no uniform bound over an unbounded
union of log powers is claimed.

Remaining to-do list: match the one-dimensional cutoff class and its weak
traces to the physical paired realization, verify all tangent normalizations
and the common-regulator scope, and formalize the supported result on GCP.

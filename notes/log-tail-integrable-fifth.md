# A sufficient remainder condition for the logarithmic Fourier tail

Status: ordinary fixed-profile theorem strengthening the pure-cutoff
calculation in [the Fourier-tail note](localized-fourier-tails.md). It
does not assert that the entire recorded weighted class satisfies this
extra hypothesis, nor is it a physical-domain or Lean certificate.

## Statement

Let χ be even, smooth, compactly supported and equal to one near zero.
Suppose the real even localized profile is

    u(y)=χ(y)[c_u |y|³+d_u |y|⁴log|y|]+r_u(y),

where r_u is compactly supported, piecewise C⁴ away from zero, its
one-sided derivatives through order four have matching traces at zero,
r_u^(4) is locally absolutely continuous on each side, and its ordinary
fifth derivative is in L¹(ℝ\{0}). Impose the same assumptions for w.
Then

    û(k)=12c_u |k|^-4 -24πd_u |k|^-5 + o(|k|^-5),
    conjugate(û(k)) ŵ(k)
      =144c_u c_w |k|^-8 -288π(c_u d_w+d_u c_w)|k|^-9
         +o(|k|^-9).                                    (1)

The matching derivative traces eliminate distributional delta terms through
order five. For an even remainder this condition is automatic at even
orders if the finite traces exist, but the odd-order traces still require
the stated matching. The condition allows nonzero smooth y⁴ remainder
terms and many nonsmooth remainders; it is not restricted to pure profiles.

## Proof

Distributionally, the fifth derivative of r_u is its ordinary L¹ fifth
derivative: the piecewise integration-by-parts boundary terms vanish by
matching the traces through order four. The Riemann–Lebesgue lemma gives

    (ik)^5 r̂_u(k)= Fourier(r_u^(5))(k) →0.

Thus r̂_u=o(|k|^-5). Adding the pure cubic and log tails proved in the
cited Fourier-tail note gives the first assertion. Multiplying the two
expansions gives (1); the log–log product is O(|k|^-10) and the two o terms
are o(|k|^-9). The logarithmic amplitude d is uniquely defined by the
specified decomposition because the remainder cannot hide another
|y|⁴log|y| term while satisfying the fifth-derivative L¹ condition.

## Consequence for the flat logarithmic term

With the conditional flat multiplier and subtraction of
[the boundary coefficient note](flat-boundary-coefficients.md), the
|k|^-9 term in (1) gives the same coefficient

    -(c_u d_w+d_u c_w)/(70π) · t³ log(t).

The o(|k|^-9) product remainder contributes o(t³|log t|), after subtracting
the leading cubic-cubic term. Indeed, given ε>0 choose K so its magnitude
is at most ε|k|^-9 beyond K. On K≤|k|≤t^-1/2 the small-x kernel is
O(t⁴k⁸), giving at most Cε t³ log(1/t). On |k|≥t^-1/2 the global kernel
bound gives O(εt³); the fixed |k|≤K part is O(t³). Let ε↓0. This argument
identifies the logarithmic coefficient for each fixed pair; the little-o
need not be uniform over a family without a uniform Fourier modulus.

## Relation to the original class

The original weighted upper bounds allow y⁴log y inside the remainder, whose
fifth derivative is 24/y and is not L¹. Therefore those bounds alone do not
imply the strengthened condition after choosing a logarithmic jet. The
physical paired folding, full action, common regulator and novelty remain
separate. No numerical computation is used.

Remaining to-do list: determine whether the intended fields satisfy a
uniform version of this condition, verify physical normalization/domains,
complete the response and novelty audits, and certify supported claims in
Lean on GCP.

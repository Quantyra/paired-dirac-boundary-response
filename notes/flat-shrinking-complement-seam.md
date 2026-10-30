# Complement-complement seam term on a shrinking locality scale

This strengthens `flat-fixed-complement-and-seam-limits.md` along a joint
cutoff/heat path. It concerns the flat multiplier B_t with the x³ subtraction
and the normalization in `flat-boundary-coefficients.md`; it is not a
curved-response theorem or Lean certificate.

Let u,w have the stated cubic-plus-weighted-remainder collars, with fixed
smooth localization outside the collar. In particular, on the physical side
for j<=3 their derivatives satisfy |u^(j)(y)|<=K y^(3-j), and away from the
seam the fourth derivative is locally bounded by C(1+|log y|), with a fixed
L²-compatible exterior. Use the smooth even cutoff chi(y/ell), equal to one
near zero, and set u_out,ell=(1-chi(y/ell))u, similarly for w.

Each complement is H⁴ on the full line. Moreover, uniformly for small ell,

    ||u_out,ell^(4)||_2 <= C_u (1+ell^(-1/2)),
    ||w_out,ell^(4)||_2 <= C_w (1+ell^(-1/2)).            (1)

Indeed the uncut fourth derivative away from zero is uniformly L² because
1+|log y| is locally square-integrable. Every term in which at least one
derivative hits the scaled cutoff is supported in an interval of length
O(ell) away from zero. For k=1,...,4 its magnitude is bounded by
C ell^(-k) ell^(k-1)=C ell^(-1), using the corresponding cubic derivative
bound; its L² norm is O(ell^(-1/2)). The complements vanish on a
neighborhood of the seam, so no distributional delta term is omitted.

The global kernel estimate |R3(x)|<=C x^4 and Parseval therefore give

    t^(-5/2) |B_t(u_out,ell,w_out,ell)|
       <= C sqrt(t) (1+ell^(-1/2))².                     (2)

For any joint path ell(t)->0 with ell(t)/sqrt(t)->infinity, the right side
of (2) tends to zero. In particular it vanishes for ell=t^p, 0<p<1/2,
including the locality scale used in `two-scale-model-cutoff-compatibility.md`.
Thus the complement-complement term has no normalized cubic seam
contribution on that path, not only when ell is held fixed first.

Bilinearity still leaves the local-local and two mixed local-complement
terms. The established full weighted-jet limit shows their sum must carry
the full flat seam coefficient along this path, but (2) alone does not show
that either mixed term vanishes or that the local-local term alone carries
it. Establishing those individual claims requires an additional nonlocal
kernel estimate. The integrated H³ complement result and the pointwise
coefficient statement address different limits.

This is a flat diagnostic. It does not transfer the decomposition to the
physical curved family, prove any common-regulator interchange, or identify
the complete response. No numerical calculation is used.

Remaining to-do list: control the mixed terms and physical complement,
match domains and regulator, complete novelty and manuscript work, recover
the pending GCP run, and certify supported claims in Lean on GCP.
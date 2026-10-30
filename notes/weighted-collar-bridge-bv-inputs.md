# Weighted collar fields supply periodic bridge BV inputs

This verifies the regularity hypotheses of `periodic-bridge-contact-assembled.md`
for a concrete class of reflected, cutoff collar coefficients and insertions.
It does not identify that auxiliary model with the physical paired operator,
or prove a curved geometric response or Lean certificate.

Fix a collar 0<y<delta and an even smooth cutoff chi equal to one near zero
and vanishing near delta. Suppose each physical-side field g has

    g(y)=c y³+r(y),
    |r^(j)(y)| <= K A_j y^(4-j)(1+log(1/y)), j=0,...,4,

with a uniform |c| bound, and is sufficiently smooth away from the seam.
An explicit y^4 log y term is included by enlarging K when its coefficient
is bounded. Let g_e be the even reflection of chi g, extended by zero to a
fixed circle. The bounds and cutoff product rule imply uniform W^{3,infinity}
bounds; `collar-third-derivative-bv.md` gives

    TV(g_e''') <= 12|c| + C_cut K,                           (1)

where C_cut is finite and includes the fixed transition region. The seam
atom 12c delta_0 is retained. The result applies to directions and to
coefficients built from such fields, provided the corresponding physical-side
approximants have the same uniform fourth-derivative weight.

Let f0 be a positive smooth even periodic seed with m0<=f0<=M0. For a real
reflected perturbation b_e as above, choose a fixed smooth function H with
bounded derivatives through order four on the common range of b_e, and set

    f=f0 H(b_e),     H(b_e)>=h0>0.                           (2)

The important example H(x)=exp(-x), or exp(x), has these properties on a
bounded scalar ball. Then f is positive and belongs to W^{3,infinity}, and
f''' is BV with constants controlled uniformly by the seed, the scalar
ball and (1). Indeed, in the distributional BV product and chain rules,

 (H(b_e))'''=H'(b_e)b_e'''
              +3H''(b_e)b_e'b_e'' + H'''(b_e)(b_e')³.       (3)

The derivative of the first term is the finite measure
H'(b_e) D(b_e''') plus the L1 density H''(b_e)b_e'b_e'''. The derivatives
of the other terms contain only products of derivatives through order three
and bounded H derivatives through order four. Hence their total variations
are bounded by the circle length times products of the uniform L-infinity
norms. Leibniz with smooth f0 preserves BV and provides the same type of
bound for f'''. The jump in (3) is H'(b_e(0)) times the jump in b_e''';
it is not discarded by smoothing.

A similarly reflected cutoff direction v_e has uniform W^{3,infinity} and
TV(v_e''') bounds by (1). A second insertion u_e has a uniform W^{1,infinity}
bound. Thus the periodic bridge estimate applies uniformly to this concrete
auxiliary family, with constants depending on m0,h0, seed and cutoff bounds,
the scalar ball, and the weighted collar constants. The same holds for any
physical-side regularization that preserves those bounds; periodic
mollification is a separate mathematical approximation and its uniform BV
bound does not identify it with the physical regulator.

This closes the collar-to-BV implication for the stated scalar construction.
It does not show that the actual metric coefficient equals (2), establish
a uniform global atlas or graph constants, match the physical half-domain,
or derive the source's geometric response and regulator limit. No numerical
calculation is used.

Remaining to-do list: match the actual metric and paired domains to this
construction, verify coefficient and thermal normalization, establish the
geometric response and regulator, decide novelty, prepare the manuscript,
and certify supported claims in Lean on GCP.

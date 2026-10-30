# Small-time winding bound on a fixed compact flat double

This strengthens the positive-time exhaustion in
`compact-exhaustion-rough-flat-hessian.md`: the same winding calculation
controls the small-time difference for each fixed compact double. It is a
flat model theorem under the compact form, folding and trace-variation
hypotheses cited there. It does not prove the physical curved remainder,
source normalization, common regulator or a Lean certificate.

Let T>0 and L>2R be fixed, with periodic or antiperiodic thermal spin
structure. Let real even u,v be supported in [-R,R] and belong to
H3(R) intersect W1,infinity(R). Write H_(L,T)(t) for the actual compact
half-double mixed heat-trace derivative divided by T and H_T^Fourier(t)
for the noncompact Fourier-defined flat form, both as in the exhaustion
note. Assume its compact positive-time variation and folding identities.
For each fixed t1>0 there are C,c>0 and a finite integer N, depending on
L,R,T,t1 and the fixed flat conventions, such that

  |H_(L,T)(t)-H_T^Fourier(t)|
     <= C (1+t^(-N)) exp(-c/t) ||u||_(H2) ||v||_(H2),
                         0<t<=t1.                               (1)

This is a small-time estimate at the free seed; it is not uniform over an
unspecified family of geometries or periods.

## Internal windings

For smooth compact directions use the Gaussian moment identities (4a)-(4b)
of the exhaustion note. Every nonzero radial winding carries
exp(-m^2 L^2/t). The first vertex has degree at most two in the external
frequency k; one time derivative introduces at most two more k powers. The
other factors are finite sums of products of powers of t^(-1), |m|L and
the fixed thermal traces or their first two derivatives. For each fixed T,
those thermal sums are bounded by C(1+t^(-M)) for 0<t<=t1: compare the
Gaussian lattice sums and their polynomial moments with one-dimensional
Gaussian integrals.

For fixed L and 0<t<=t1, any polynomial in |m|L and t^(-1) is therefore
bounded, after summing m!=0, by C(1+t^(-N)) exp(-L^2/t). For example,
exp[-(m^2-1)L^2/t] <= exp[-(m-1)L^2/t1], and the resulting polynomially
weighted geometric series is finite. Periodic Parseval and
Cauchy--Schwarz control the remaining (1+k^4) pairing by
C ||u||_H2 ||v||_H2. This gives the internal-winding contribution to (1).
The mixed second vertex is retained through the compact positive-time mixed
variation identity, not inferred from the first vertex alone.

## External sampling images and subtraction

The m=0 external sampling error is the periodization of the noncompact
multiplier. As shown in the exhaustion note, its real-space pieces are the
local pairing, the heat-kernel pairings of u,v, and those of u',v' with
heat time a t, 0<=a<=1/4. Nonzero images connect points at distance at least
2L-2R>0. The local pairing has no nonzero image. The Gaussian L1 tail bound,
uniform for 0<a<=1/4, gives C exp[-(2L-2R)^2/(C t)] for each image;
the remaining shifted images form a convergent Gaussian series. The
thermal multiplier coefficients and their t derivatives grow at most
polynomially in t^(-1). Young's inequality and Cauchy--Schwarz then bound
the external images by the right side of (1), possibly with smaller c and
larger N. This proves (1) for smooth directions.

At each fixed t>0, approximate u,v simultaneously in W1,infinity and H2
by smooth even functions with common compact support. The compact form
theorem gives trace-norm convergence of the mixed derivatives; the Fourier
form is H2-continuous. Since (1) depends only on the common support and H2
norms, the bound passes to the rough directions for every t. No uniform
trace-norm differentiability as t->0 is assumed.

Let S_t be the plane local subtraction in
`fixed-period-flat-boundary-coefficients.md`. Its periodic counterpart is
exactly the same value: Parseval turns its polynomial in k^2 into local
pairings of derivatives through order three, and the supported profiles have
no overlap with their nonzero radial translates. Define
B_(L,T)(t)=H_(L,T)(t)-S_t(u,v). Equation (1) then implies that the compact
and noncompact subtracted flat forms differ by o(t^p) for every real p.

Under the weighted collar and exterior assumptions of
`flat-weighted-cubic-leading-limit.md`, the *actual compact model* derivative
therefore has

  lim_(t->0) t^(-5/2) B_(L,T)(t)
       = -15 c_u c_v/(1024 sqrt(pi)).                          (2)

Under the additional explicit Fourier-product tail hypothesis in
`flat-boundary-coefficients.md`, the same compact model has its stated
cubic-log coefficient -(c_u d_v+d_u c_v)/(70 pi) multiplying t^3 log(t),
with the same O(t^3) remainder. The original weighted bound alone does not
supply that logarithmic jet. The coefficients include the declared half and
fiber conventions; equality to the actual physical trace remains an open
hypothesis. The local subtraction is explicitly the flat polynomial, not a
claim about the source's full curved counterterm.

Remaining to-do list: match the actual physical bundle and trace, prove the
curved response and regulator, settle novelty and scope, complete the
manuscript, and certify supported claims in Lean on GCP.

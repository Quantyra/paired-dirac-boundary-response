# Moving-cut massive conversion heat comparison

This combines the mass-weighted form comparison and complex trace bounds
for the compact orbit conversion model. It gives a conditional nonzero-mode
comparison, not physical boundary identification or a renormalized limit.

Assume the common-domain, uniform graph, sectorial, multiplier and W1,infinity
O(delta) pullback hypotheses in `conversion-mass-weighted-coercivity.md` and
`conversion-complex-sectorial-gap.md`. Assume the orbit is two-dimensional,
V->H is in S_p for a fixed 2<p<3, and the embedding norm is uniform. Let
T_delta(t), T_0(t) be the semigroups of the interpolating conversion forms
at a common r in [0,1], complex parameter z on the common smaller polydisc,
and mass M>=1. Constants below are uniform in these variables and in the
field regulator.

The complex version of the factor expansion in the mass-weighted note gives

  |q_delta(v,h)-q_0(v,h)| <= C delta ||v||_(V,M)||h||_(V,M).  (1)

Both forms have real part at least c(||v||_V^2+M^2||v||^2) and a uniform
sector angle. Set a=c M^2/2. On a common contour to the left of their
spectra, the form resolvent identity and coercivity, applied to each form
and its adjoint, yield

  ||(lambda-L_delta)^(-1)-(lambda-L_0)^(-1)||
       <= C delta / (|lambda-a|+M^2).                          (2)

Here the contour leaves a+1/t along two fixed rays in the left half-plane,
with a joining arc of radius 1/t around a; its angle is chosen outside the
common form sector. The two resolvent factors from H to the mass-weighted
form space each contribute C/(|lambda-a|+M^2)^(1/2). This follows by
rotating the sectorial form and applying Lax--Milgram; the same estimate for
the adjoint controls the dual factor. The constants are independent of M.
Dunford's formula then gives

  ||T_delta(t)-T_0(t)|| <= C delta exp(-c' M^2 t),             (3)

for 0<t<=1 and a smaller c'>0. On the rays the integral of
exp(-t s cos(theta))/(s+M^2) from s=1/t to infinity is uniformly bounded;
the arc contributes the same type of bound. The estimate includes the
mass-dependent shift rather than absorbing an exp(C M^2 t) constant.

The smoothing and mass decay in `conversion-massive-trace-angular-tail.md`
give ||T_delta(t)-T_0(t)||_p <= C t^(-1/2) exp(-c' M^2 t).
Interpolation between S_infinity and S_p gives the S3 bound

  ||T_delta(t)-T_0(t)||_3
      <= C delta^(1-p/3) t^(-p/6) exp(-c' M^2 t).            (4)

Factor each semigroup into three equal-time factors, telescope, and apply
Schatten Holder. Each undifferenced factor is bounded in S3 by C t^(-1/2)
exp(-c' M^2 t). Thus

  ||T_delta(t)-T_0(t)||_1
      <= C delta^(1-p/3) t^(-1-p/6) exp(-c' M^2 t).          (5)

Cauchy's formula on fixed smaller parameter circles supplies the same bound
for first and mixed derivatives. With a bounded moving insertion satisfying
the O(delta) comparison in `source-scalar-insertion-collar-pullback.md`,
the insertion telescope adds C delta t^(-1) exp(-c' M^2 t), which is
absorbed in (5) for delta,t<=1. Integration over r preserves the bound.

For the recorded nonzero angular tower, sum (5) using the tail bound in
`angular-tower-tail.md` with time c't. At each fixed positive time the tail
is uniform in delta, and the total difference tends to zero as delta tends
to zero. For a proper-time cutoff epsilon, a bound on the angular factor
for t>=epsilon and the exponential cut delta=exp(-4L/epsilon) imply
vanishing of the corresponding massive-model difference integrated over
[epsilon,1] against any fixed power of t. This conclusion still requires
the finite M<1 and zero sectors to be treated separately.

The claim depends on the stated common compact-domain assumptions and the
resolvent-contour estimate (2); it is not a physical-infinity boundary
comparison, an identification of source normalization or contacts, a
small-time subtracted curved estimate, or Lean certification. Those remain
open.

Remaining to-do list: verify the physical pullback and boundary, handle the
finite and zero modes, complete the curved response and common regulator,
resolve novelty, prepare the manuscript, and certify supported claims on GCP.

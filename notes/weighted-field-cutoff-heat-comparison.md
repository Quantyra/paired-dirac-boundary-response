# Weighted field cutoff in the compact moving-cut heat comparison

This extends the compact local-projector comparison of
`product-frame-moving-cut-response-rate.md` to weighted physical-half field
approximants. It identifies the heat-form error associated with the cutoff
used in `weighted-moving-collar-insertion.md`. It remains conditional on the
common compact product realization, graph and sectorial estimates of the
moving-cut note. It does not identify the physical transported boundary,
subtracted response, or regulator limit; no Lean check is claimed.

## Field approximation in the form norm

Let r and r_h be the weighted remainder and its physical-side cutoff in
`weighted-remainder-cutoff.md`. On the fixed collar, the discrepancy is
supported in 0<y<2h, and the j=0,1 weight bounds imply

  ||r_h-r||_(W1,infinity) <= C K h^3 L(2h),
  sup_h ||r_h||_(W1,infinity) <= C K,                         (1)

where L(y)=1+log(1/y). This follows from the cutoff Leibniz rule and the
monotonicity of y^3 L(y) on the small collar. A smooth approximation may be
chosen with W1,infinity error no greater than the right side, by the C5
mollification argument in the cited note. Fixed localization adds only fixed
cutoff constants. The unchanged explicit cubic and y^4 log(y) terms belong to
W1,infinity on the physical half; making those terms smooth requires a
separate approximant and rate.

Apply (1) to each remainder in a background b and directions u,w, with
uniformly bounded coefficients and weight constants. Denote the approximants
b_h,u_h,w_h and put

  eta_h = C K h^3 L(2h).                                       (2)

Suppose their extensions to the common compact product have the same uniform
W1,infinity bounds and error (for radial fields this means the fixed collar
extension and localization used in (1)); tangential dependence needs its own
mixed-derivative control. No uniform C5 bound at the seam is asserted.

## First-order and form comparison

Use the common H1 projector domain V and pulled-back first-order operators
P_delta of `product-frame-moving-cut-uniformity.md`, including its bound
||(P_delta-P_0)v|| <= C delta ||v||_V. Assume multipliers and their
exponentials preserve V. For z=(z1,z2) in a sufficiently small fixed complex
polydisc define

  E_(delta,h,z) = exp[-(b_(delta,h)+z1 u_(delta,h)
                              +z2 w_(delta,h))/2],
  D_(delta,h,z) = E_(delta,h,z) P_delta E_(delta,h,z) on V.     (3)

Assume the pullbacks of the fields at different cuts additionally differ by
O(delta) in W1,infinity, uniformly in h; combine that assumption with (1)
to compare them with the uncut, unregularized fields. The exponential map is
locally Lipschitz in W1,infinity on a uniformly bounded ball: its derivative
is multiplication by the exponential times the weak derivative of its
argument. The product rule and the uniform first-order graph bounds yield

  ||(D_(delta,h,z)-D_(0,0,z))v||
       <= C (delta+eta_h) ||v||_V,                             (4)

uniformly in z, h and small delta. The associated holomorphic square forms
use the corresponding holomorphic adjoint-side family, agreeing with the
actual D*D form on real parameters. Expanding their difference with (4) and
the uniform V-to-H bounds gives

  |q_(delta,h,z)(v,k)-q_(0,0,z)(v,k)|
       <= C (delta+eta_h) ||v||_V ||k||_V.                     (5)

This is a common-form-domain estimate; it neither assumes identical square
operator domains nor follows from pointwise coefficient convergence.
The unregularized fields themselves must meet the same sectorial-family and
uniform coercivity hypotheses. Their W1,infinity regularity is sufficient for
the above form algebra but is not by itself a proof of every physical domain
and heat trace hypothesis.

## Heat and complete mixed response

If the sectorial, smoothing and Schatten constants of the moving-cut note
are uniform for this enlarged family, repeat its resolvent, interpolation,
six-factor and parameter-Cauchy argument with delta replaced by
xi=delta+eta_h. For 0<t<=1 this gives

  ||partial_1 partial_2(T_(delta,h)-T_(0,0))(t)||_1
      <= C xi^(1/6) t^(-35/12).                                (6)

The bound applies to the entire mixed heat derivative, including both
ordered vertices and the mixed second form vertex. Inserting a fixed bounded
multiplier multiplies the right side by its norm. For a moving insertion,
combine (6) with the separate C2 insertion error from
`weighted-moving-collar-insertion.md`; under its hypotheses the complete
observable difference is bounded by

  C [xi^(1/6)t^(-35/12)
      +(delta+K h^2 L(2h))t^(-3)].                            (7)

Integrating (7) against dt/t^2 from epsilon to 1 gives

  C [xi^(1/6) epsilon^(-47/12)
      +(delta+K h^2 L(2h)) epsilon^(-4)].                     (8)

For bounded K, delta=exp(-4A/epsilon) and h=exp(-1/epsilon), A>0,
make both terms tend to zero. This establishes a sufficient *conditional*
path for the compact form-and-insertion comparison, not existence of the
renormalized physical action. The constants must be uniform in all other
regulators; moving infinity data, source normalization, contacts and local
counterterms still require independent matching. In particular (8) does not
prove the requested uniform t^(3/2) subtracted curved remainder.

Remaining to-do list: verify the actual physical bundle, transported boundary
and uniform heat hypotheses, derive all source subtractions and contacts,
prove the curved remainder and common regulator, resolve novelty, finish the
manuscript, and certify supported claims in Lean on GCP.

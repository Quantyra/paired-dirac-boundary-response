# Explicit angular-scale bound for the changing-cut resolvent

This evaluates the supremum in `changing-cut-resolvent-comparison.md` for
its separated self-adjoint half-line model. It controls the complete
inhomogeneous resolvent difference with an explicit angular heat multiplier;
it does not identify the physical paired resolvent or certify Lean.

Use that note's notation: ell is the removed collar length, A0=||a||∞,
z is nonreal, eta=|Im z|, and A is the sphere Dirac operator. Define

    M_p(tau)=(p/(2 exp(1) tau))^(p/2),  p>0.

For tau>0, sup_(x>=0) x^p exp(-tau x²)=M_p(tau). The fixed-mode
Poisson comparison, summed by direct-sum operator norm, yields

 ||[J_ell R_full(z)-R_cut(z)J_ell] exp(-tau A²)||
 <= sqrt(2ell)/eta { sqrt(|z|)+sqrt(A0) M_(1/2)(tau)
      + (sqrt(2)/eta)[ |z|^(3/2)+A0^(3/2) M_(3/2)(tau)] }. (1)

To obtain (1), put k=|z|+A0|mu| in the existing mode bound and use
sqrt(k)<=sqrt(|z|)+sqrt(A0)|mu|^(1/2) and
k^(3/2)<=sqrt(2)[|z|^(3/2)+A0^(3/2)|mu|^(3/2)]. Take the supremum
with the Gaussian weight. All nonzero modes and zero modes are retained.

For fixed nonreal z, bounded A0 and 0<tau<=1, (1) is
O(sqrt(ell) tau^(-3/4)); hence ell=o(tau^(3/2)) is a sufficient joint
condition for this smoothed operator-norm difference to vanish. More
complicated spectral contours must retain the explicit |z| and eta factors;
in particular the estimate deteriorates near the real axis. This sufficient
scale is conservative and is not a necessary condition.

The comparison is from full L² input to cut L² output, using the restriction
J_ell and the two self-adjoint local-projector realizations defined in the
cited note. It includes sources in the removed collar via the resolvent
argument, unlike a homogeneous transport estimate. It does not assert that
the cut projector is the exact transported physical infinity condition, or
control the zero-extension error in operator norm on the full Hilbert space.
The latter acts on a shrinking collar and converges strongly, but not in
operator norm merely because the collar shrinks.

Equation (1) also does not provide a trace-norm bound, identify an angular
smoothing with the common heat regulator, or establish a physical bundle and
boundary-value problem. These steps remain necessary before using it for a
manuscript claim about the actual quantum response. No numerical computation
is used.

Remaining to-do list: establish physical boundary and regulator matching,
complete response and novelty audits, prepare the manuscript, and certify
supported claims in Lean on GCP.

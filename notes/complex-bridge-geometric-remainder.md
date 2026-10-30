# Complex auxiliary bridge remainder and one geometric derivative

This gives a conditional route to the smeared geometric term in the
conversion, using a fixed-coordinate periodic bridge family. It extends the
real estimates assembled in `periodic-bridge-contact-assembled.md`; it does
not identify the physical Weyl direction, prove a physical domain theorem or
provide Lean certification.

Let f,g be real periodic W^{3,infinity} functions with f''',g''' of bounded
variation and 0<m<=f<=F. Let u be a fixed bounded Lipschitz periodic
insertion. Define f_z=f+z g for complex |z|<=r, choosing r>0 small enough
that Re f_z(y)^2>=m²/2 uniformly. For a covariance-2 Brownian bridge put

 A_z(h,y)=integral f_z(y+h xi_s)^2 ds,
 B_z(h,y)=integral f_z'(y+h xi_s) ds,
 J_z(h)=integral u(y) E[A_z^(-1/2)
                         exp(h² B_z²/(4 A_z))]dy.          (1)

The square root uses the holomorphic branch on the right half-plane. The
uniform lower bound on Re A_z, uniform upper bounds on f_z and f_z', and
finite bridge moments dominate the integrand and its z derivatives. Thus
J_z(h) is holomorphic in z on the open disk, for each fixed h. It is the
zero-image scalar bridge integral; the trace-density prefactor and physical
identification are handled separately below.

For |h|<=1, the BV Taylor argument for the zeroth term and the quadratic,
quartic and exponential-tail estimates extend to complex coefficients with
absolute values and uniform constants on |z|<=r: Re A_z>=m²/2 bounds every
inverse power, while the W³ and BV norms of f_z are bounded by those of f
and g. The weak fourth-derivative measure pairings remain valid for complex
measures by total variation. Consequently

 |J_z(h)-j0(z)-h² j2(z)-h^4 j4(z)| <= K |h|^5,             (2)

uniformly on that closed disk. The coefficient functions are holomorphic:
they are finite integrals and finite-measure pairings of holomorphic
functions of f_z and its derivatives with a common dominating bound; they
can equivalently be obtained as uniform limits of smooth approximants.
Cauchy's estimate on |z|=r/2 gives

 |partial_z[J_z(h)-j0(z)-h² j2(z)-h^4 j4(z)]_(z=0)|
       <= (2K/r)|h|^5.                                     (3)

For a family with uniform f,g BV and W³ bounds and a common positive m,
the same r and K can be chosen. If g=0 the derivative is zero; otherwise
r depends on the direction bound and should not be treated as independent
of an unbounded direction ball.

In the rank-two full-line time-reduced *smeared heat* bridge, the zero-image
trace carries the source prefactor 1/(2pi t), rather than the contact's
1/(2pi). With t=h², (3) therefore gives an O(t^(3/2)) bound for the
subtracted derivative of that auxiliary smeared trace. Multiplying by a
fixed product angular trace Theta(t)=O(t^-1) gives O(sqrt(t)) at the
endpoint. This does not establish the local coefficient formulas or identify
this coefficient derivative with the source's physical D_v T_t(u): the
actual Weyl variation also changes the proper-coordinate map and may move
the insertion. Those terms must be represented in a common fixed coordinate
and shown to meet the same complex BV hypotheses.

The nonzero thermal images and radial-winding/locality errors require their
own complex-uniform estimates before Cauchy's formula can be applied to
them. No conclusion about the full physical regulator, P1-D, or a varying
atlas follows from (3). No numerical calculation is used.

Remaining to-do list: verify the complex estimates and physical Weyl/insertion
mapping, control thermal and radial defects, establish the full conversion,
decide novelty, prepare the manuscript, and certify supported results in Lean
on GCP.

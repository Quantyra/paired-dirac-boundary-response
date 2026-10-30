# Mixed terms on a shrinking flat seam scale

This is an ordinary flat-model argument, conditional on the multiplier and
normalization in `flat-boundary-coefficients.md`. It does not establish the
physical curved response or a Lean certificate.

Take fixed real even compactly localized profiles u,w satisfying the cubic
collar derivative bounds and exterior regularity of
`flat-shrinking-complement-seam.md`. In addition, assume the Fourier-product
hypothesis (2) of `flat-boundary-coefficients.md`, so that its full-profile
cubic limit applies. Let chi be a smooth even cutoff equal to one on a
neighborhood of zero. Put ell=t^p with 0<p<1/2 and write
u_loc=chi(x/ell)u and u_out=(1-chi(x/ell))u, similarly for w.

Both normalized mixed terms tend to zero. To prove this, choose a smooth even
eta supported in a smaller neighborhood where chi is identically one, and
split u_loc=u_seam+u_transition, where u_seam=eta(x/ell)u and
u_transition=(chi-eta)(x/ell)u. The supports of u_seam and w_out are separated
by at least d ell for some fixed d>0. The transition profile vanishes near the
seam, and the same cutoff differentiation as in the complement estimate gives

    ||u_transition''''||_2 + ||w_out''''||_2 <= C(1+ell^(-1/2)).

Using |R3(x)|<=C x^4 and Parseval,

    t^(-5/2)|B_t(u_transition,w_out)|
       <= C sqrt(t)(1+ell^(-1/2))^2 -> 0.               (1)

For the separated term, the polynomial subtractions in R3 and the constant
part of F have kernels supported on the diagonal and therefore do not
contribute. Away from the diagonal the remaining kernel is

    K_t(r) = (1/(2 pi t)) integral_0^1
               (1-a t partial_r^2) G_(a t)(r) d alpha,
    a=alpha(1-alpha),  G_s(r)=(4 pi s)^(-1/2) exp(-r^2/(4s)).

The integral is understood with its endpoint limits. Absorbing the polynomial
factor into the Gaussian and using a<=1/4 and the integrability of a^(-1/2),
for |r|>=d ell one obtains

    |K_t(r)| <= C t^(-3/2) exp(-c ell^2/t).             (2)

The cubic collar bound gives ||u_seam||_1=O(ell^4), while ||w_out||_1 is
uniformly bounded. Thus

    t^(-5/2)|B_t(u_seam,w_out)|
       <= C ell^4 t^(-4) exp(-c ell^2/t) -> 0.        (3)

The exponential dominates the powers for the stated polynomial path. The
other mixed term follows by symmetry. Together with the complement-complement
bound in `flat-shrinking-complement-seam.md`, bilinearity and the independently
established full-profile limit give

    lim_(t->0) t^(-5/2) B_t(u_loc,w_loc)
       = -15/(1024 sqrt(pi)) c_u c_w.                  (4)

This conclusion uses the Fourier-tail hypothesis for the fixed full profiles;
the collar bounds alone are not asserted to imply it. The proof does not claim
(3) for every path with ell/sqrt(t)->infinity. The multiplier's physical-half
normalization and paired-domain identification remain conditional, and no
curved complement, regulator interchange, or physical admission margin follows.
No numerical calculation is used.

Remaining to-do list: control the physical curved complement and vertices,
match spin, domains and regulator, complete novelty and manuscript work,
recover the pending GCP run, and certify supported claims in Lean on GCP.
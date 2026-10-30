# Angular-summed full-Weyl flat tangent multiplier

This sums the fixed-mode formula in `flat-tangent-angular-mode.md` over a
fixed product-sphere sector at positive heat time. The calculation is for
the rank-two full-plane orbit trace density, before physical folding,
per-exterior normalization, contact terms or action subtraction. It is not
Lean-certified.

Let the chosen sector have real sphere eigenvalues mu_j, counted with the
actual multiplicities, and define

    Theta(t)=sum_j exp(-t mu_j²),   t>0.

Assume its heat trace is finite for every t>0. It follows that its first two
derivatives may be taken termwise on every compact positive-time interval:
mu_j^(2p) exp(-t mu_j²) is bounded by a t0-dependent multiple of
exp(-t0 mu_j²/2) for p=1,2 and t>=t0>0. Zero modes may be included in
Theta, or kept as a separate constant term with a stated multiplicity.

With x=t k² and the functions A,I in the fixed-mode note, summing its
complete mixed multiplier gives

    H_sector(t,k) = 2/(pi t) {
      Theta(t) [I(x)-x I'(x)]
      -t Theta'(t) [I(x)-x A'(x)]
      +t² Theta''(t) A(x) }.                                (1)

This follows directly from sum exp(-t mu²)=Theta,
sum t mu² exp(-t mu²)=-t Theta', and
sum t² mu^4 exp(-t mu²)=t² Theta''. Formula (1) retains the full
angular-dependent variation; the first term alone is the fixed-angular
orbit-family expression. At k=0 it becomes

    2/(pi t) [Theta-t Theta'+t² Theta''],                    (2)

matching `constant-weyl-angular-benchmark.md` after its rank-two orbit heat
density is inserted. A zero mode contributes only to the first term.

For smooth compact normal profiles, the sum can be interchanged with the
Fourier integral at every fixed t>0. Indeed A<=1, |A'|<=1/4,
|I|<=1+x/4, and |I'|<=1/2+x/16 follow by differentiating their alpha
integrals. These yield a polynomial-in-k majorant times the finite
exponentially weighted moments of Theta; the two profile Fourier transforms
have rapid decay. Uniformity on [t0,T] follows from the same bounds with
positive t0. This is a complete angular sum, not a finite-frequency cutoff.

For the recorded massive tower, use
Theta_massive=sum_(n>=1) 2(q+2n) exp[-t n(n+q)/b0²]. The degeneracy includes
both nonzero angular signs as recorded in the source. The zero sector and
its normalization must be specified separately. Applying a physical-half or
per-exterior factor to (1) requires the exact observable-to-folded-trace
identification in `flat-orbit-fiber-normalization.md`; no extra factor has
been silently inserted here.

Equation (1) is not yet the source's full regulated action: it excludes the
separately defined contact/conversion and local subtraction terms. Nor may
one reuse the massless cubic/log coefficients after merely multiplying them
by Theta: the Theta' and Theta'' kernels have their own small-time
contributions. Determining their subtracted Fourier tails and angular
asymptotics, and proving the physical common-regulator limit, remain open.
The formula also assumes the fixed product seed, rather than a general curved
family with varying sphere data.

Remaining to-do list: calculate the complete angular-weighted localized
subtraction, match the physical boundary and normalization, resolve the
curved/regulator estimate and novelty, prepare the manuscript, and certify
the supported claims in Lean on GCP.

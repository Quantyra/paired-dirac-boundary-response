# Periodic bridge parity and physical-half boundary terms

Status: ordinary comparison inside the scalar zero-image bridge model,
not a proof that this bridge is the actual paired heat kernel or a Lean
certificate. It connects [the BV expansion route](bridge-zeroth-bv-route.md)
and [the local contact identity](bridge-contact-t2-identity.md) to a
half-line calculation without assigning an arbitrary value to a boundary
delta.

## Exact parity of the scalar bridge

Let f,u,v be real even periodic functions, f bounded away from zero, and
let ξ have the symmetric covariance-2 bridge law. For the source's
A_h,B_h,V_h definitions, reflection y→−y and path reversal ξ→−ξ give

    A_h(−y,−ξ)=A_h(y,ξ),   B_h(−y,−ξ)=−B_h(y,ξ),
    V_h(−y,−ξ)=V_h(y,ξ).

Thus the expected scalar integrand
u(y)E[V_h A_h^(−1/2)exp(h²B_h²/(4A_h))] is even. Whenever it is
integrable, its full periodic integral equals twice its integral over the
positive half of a symmetric period. This is exact for each h; it also
holds for the three exponential pieces and their remainder separately.
The equality persists for the BV fields under the stated integrability and
positive lower bound. It is an integral identity for the scalar bridge,
not a statement about the rank-four paired trace or per-exterior action.

If an actual physical-half observable is independently identified with one
half of this full scalar bridge, the full-double expansion and its uniform
remainder transfer with that same factor. The normalizations in
[the orbit audit](flat-orbit-fiber-normalization.md), including the distinct
copy average, must be applied to the same observable; parity does not
supply an additional copy or angular factor.

## Boundary terms for the selected collar directions

On the physical half 0<y<δ, use f>0, q=f'/f and Δw=w''−q w', with
measure dy/f. For smooth fields, direct integration by parts gives

    ∫(dy/f) u [RΔv+R'v']
      = [u R v'/f]₀^δ − ∫(dy/f) R u'v',

    ∫(dy/f) [uΔ²v−(Δu)(Δv)]
      = [ (u(Δv)'−u'Δv)/f ]₀^δ.                         (1)

For the source's localized cubic/log directions, u(0)=u'(0)=0 and
v'(0)=0. The weighted bounds give finite one-sided traces of Δv and its
first derivative; f and R are bounded at zero. Hence both lower-end
brackets in (1) vanish. A smooth cutoff that makes u,v vanish near δ
also removes the upper-end brackets. These statements use the actual
one-sided normal traces; they are not inferred merely from parity of a
singular distribution.

For the reflected cubic, the distributional ΔR and Δ²v contain the seam
atoms recorded in [the seam note](bridge-contact-seam.md). A symmetric
even mollifier assigns half of a full-line delta to either half when the
continuous test function is paired on the closed half. For the selected
u, the relevant test has u(0)=0, so that atom's contribution is zero
regardless of the half-delta convention. Arbitrary smearings require an
explicit convention and cannot inherit this zero. The ordinary bulk
integration-by-parts result does not itself establish how the source's
actual mixed boundary kernel realizes the distributional completion.

The zeroth and quadratic BV estimates still require review and uniform
global coefficient bounds. Physical thermal images, bundle identification,
angular spectrum and common-regulator interchanges remain independent
obligations. No numerical computation replaces these boundary arguments.

Remaining to-do list: verify the physical scalar-bridge identification and
normalization, close the thermal/regulator and BV hypotheses, complete prior
art assessment, and certify supported statements on GCP.

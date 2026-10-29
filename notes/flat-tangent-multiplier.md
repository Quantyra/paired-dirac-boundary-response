# Flat Dirac tangent multiplier: ordinary derivation

Status: paper-specific ordinary calculation on the full flat plane, not a
proof of the curved paired-boundary theorem or a Lean certificate. It audits
the normalization and second-vertex mechanism recorded in section 4 of the
[pinned rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).
The unproved step is identification of the physical paired half-domain
response, including its contacts, with the corresponding folded full-plane
trace density and the claimed factor one half.

## Flat problem and variation identity

Let gamma_1,gamma_2 be Hermitian two-dimensional Clifford matrices with
{gamma_i,gamma_j}=2 delta_ij, so tr(gamma_i gamma_j)=2 delta_ij. On the
flat Euclidean plane let D=gamma_i partial_i, L=D*D=-D^2=-Delta, and for
real scalar b set E_b=exp(-b/2), D_b=E_b D E_b, L_b=D_b*D_b. Work first
with smooth compactly supported normal profiles u,w independent of the
boundary-tangential coordinate. Traces below are densities per unit
boundary length. They can be defined by periodic tangential boxes followed
by the infinite-length limit for each fixed t>0; this is a flat diagnostic.

At b=0, the first variation in direction u is

    delta_u D = -(uD+Du)/2,
    delta_u L = [(uD+Du)D + D(uD+Du)]/2.

For smooth test profiles and positive time, Duhamel's formula and cyclicity
of the localized trace density give

    delta_u Tr(exp(-tL))
      = -t Tr((delta_u L)exp(-tL))
      = -2t partial_t Tr(u exp(-tL)).                  (1)

The two `DuD` contributions are retained in the square variation. When (1)
is differentiated in w, the differentiation of the full heat kernel under
the time derivative accounts for the mixed/contact contribution; computing
only the product of two first vertices does not by itself establish (1).
The trace-density argument and Duhamel exchange need independent justification
for the rough profiles and the paired boundary realization.

## Momentum integral and normalization

Use uhat(k)=integral exp(-iky)u(y)dy and dk/(2pi) for inversion. In momentum
space let q=p+k e_y, with k the normal Fourier momentum. The first square
vertex has spin trace

    tr(delta_w L)(p,q)
      = -(1/2) tr[ gamma.(p+q) gamma.q + gamma.p gamma.(p+q) ] what(k)
      = -|p+q|^2 what(k).                              (2)

The minus sign and the factor are tied to rank two and the stated gamma
normalization. Duhamel integration then gives, for the bilinear density,

    delta_w Tr(u exp(-tL))
      = t integral_R dk/(2pi) conjugate(uhat(k)) what(k)
          integral_0^1 d alpha integral_R2 d^2p/(2pi)^2
             |2p+k e_y|^2 exp[-t((1-alpha)|p|^2+alpha|p+k e_y|^2)].

Completing the square with P=p+alpha k e_y gives

    (1-alpha)|p|^2+alpha|p+k e_y|^2 = |P|^2+a k^2,
    |2p+k e_y|^2 = |2P+(1-2alpha)k e_y|^2,
    a=alpha(1-alpha).

The cross term is odd. The two Gaussian moments are

    integral d^2P/(2pi)^2 exp(-t|P|^2) = 1/(4pi t),
    integral d^2P/(2pi)^2 |P|^2 exp(-t|P|^2) = 1/(4pi t^2).

Thus, writing x=t k^2,

    delta_w Tr(u exp(-tL))
      = integral_R dk/(2pi) conjugate(uhat(k)) what(k)
          [I(x)/(pi t)],
    I(x)=integral_0^1 [1+x(1-2alpha)^2/4] exp(-a x) d alpha.

Applying -2t partial_t as in (1) yields the full-plane mixed trace-density
multiplier

    H_t(k)=2 [I(x)-x I'(x)]/(pi t).                    (3)

The derivative of I is justified for each finite x by differentiation under
the alpha integral. For the smooth normal profiles, Gaussian estimates give
a direct fixed-t justification of the momentum integration and its t
differentiation. No finite-frequency truncation appears in (3).

## Equivalent kernel representation

Put F(x)=I(x)-xI'(x), a=alpha(1-alpha), and v=1-2alpha. Since v^2=1-4a,

    F(x)=integral_0^1 [1+x a+(x^2/4)a v^2] exp(-a x) d alpha.

Integration by parts in alpha uses the exact endpoint identities

    integral_0^1 [2+x v^2] exp(-a x) d alpha = 2,
    integral_0^1 [1-6a-x a v^2] exp(-a x) d alpha = 0.

The first follows by differentiating v exp(-a x), the second by
differentiating a v exp(-a x). Combining them gives

    F(x)=1/2 + (1/2) integral_0^1 (1+a x) exp(-a x) d alpha.    (4)

The [all-frequency estimate](tangent-remainder-bound.md) and
[tangent integral calculation](tangent-integral-argument.md) use (4), but
assume the physical-half factor and trace interpretation separately. This
note establishes an ordinary flat-plane route to (3)-(4), subject to review;
it does not prove the regular-bolt/outer-domain heat kernel, the exact folded
boundary-to-plane identity, regulator-uniform limits, or the curved remainder.

Remaining to-do list: justify the actual paired folding and one-half factor,
include complete contacts and regulator in the comparison, audit the rough
limits and prior art, and formalize the supported statements on GCP.

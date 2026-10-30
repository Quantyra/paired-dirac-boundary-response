# Physical-side cutoff and the logarithmic seam: noncommuting limits

Status: exact flat tangent-model audit of the regulator in
[the weighted cutoff note](weighted-remainder-cutoff.md). It shows why a
uniform logarithmic-jet claim cannot be inferred from that regulator
without preserving the jet. It does not disprove fixed-positive-time
convergence or establish a physical curved response, and is not a Lean
certificate.

## A specific allowed profile

Let χ be even, smooth, compactly supported and one near zero, and choose
real c,d,c_w with d c_w≠0. On the physical half take

    u(y)=χ(y)[c y³+d y⁴log y],    w(y)=χ(y)c_w y³.

The logarithmic term is allowed by the source's weighted remainder class.
Apply its physical-side regulator to that remainder:

    u_ε(y)=χ(y)[c y³+d q(y/ε)y⁴log y],

where q=0 for y≤ε and q=1 for y≥2ε. Reflect evenly. For every fixed ε,
the regulated profile equals c|y|³ near zero; its logarithmic jet is zero.
The regulator retains the cubic coefficient and u_ε→u in the localized
W^{3,∞} and H³ norms, as shown by the cutoff construction.

## Flat-model order of limits

Let B_t be the conditional flat tangent bilinear with the same physical-half
factor and polynomial subtraction used in
[the boundary coefficient note](flat-boundary-coefficients.md). Define

    Q_ε(t)=[B_t(u_ε,w)+15 c c_w t^(5/2)/(1024√π)]/[t³log t].

For each ε>0, the non-cubic part of u_ε is smooth and supported away from
the seam. Its Fourier transform is rapidly decreasing if q and χ are
smooth, while the cubic tail remains 12c|k|^-4. Consequently the
cubic–log Fourier coefficient is zero and the same all-frequency splitting
gives

    lim_(t↓0) Q_ε(t)=0.                                    (1)

For the unregulated u, the pure-profile calculation gives

    lim_(t↓0) Q(t)= -d c_w/(70π).                          (2)

For each fixed t>0, u_ε→u in H³ and w∈H³. The global multiplier remainder
bound in [the tangent remainder note](tangent-remainder-bound.md) gives
continuity of B_t in these norms, so Q_ε(t)→Q(t). Hence

    lim_(ε↓0) lim_(t↓0) Q_ε(t) = 0,
    lim_(t↓0) lim_(ε↓0) Q_ε(t) = -d c_w/(70π).           (3)

The denominators are nonzero for sufficiently small t. This is a
mathematical order-of-limits example for the declared flat, subtracted
observable; it does not assert that an unrelated physical cutoff has the
same behavior.

## Implication for a uniform jet condition

If a theorem assigns the limiting d to every approximant by subtracting
χd|y|⁴log|y| from u_ε, the residual contains the negative log jet near
zero. Its fifth derivative contains a nonintegrable 1/y term there. Thus
it fails the L¹ fifth-derivative hypothesis of
[the uniform tail note](uniform-log-tail-translation.md), before one can
ask for a uniform translation constant. If instead each approximant is
given its own jet, d_ε=0 and d_ε does not converge to d.

One possible alternative is to retain the explicit logarithmic jet and
regularize only a separately controlled post-jet remainder, while keeping
the nonsmooth jet's actual domain and common heat regulator. That is a
proposed route, not a proof that all physical approximants or geometric
vertices satisfy it. The source's existing regulator remains valid for its
stated weighted and first-order convergence purposes; (3) limits a stronger
uniform logarithmic-coefficient claim. No numerical computation is used.

Remaining to-do list: construct a jet-preserving approximation with uniform
post-jet bounds where justified, verify physical normalization and the
common regulator, complete novelty review, and certify supported claims in
Lean on GCP.

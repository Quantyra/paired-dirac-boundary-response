# Flat tangent remainder: all-frequency estimate

Status: ordinary conditional derivation, not yet reviewed or certified in
Lean. It uses the density-inclusive tangent multiplier and Fourier
normalization recorded in section 4 of the [pinned rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).
The multiplier itself, its relation to the actual paired operator, and its
coincidence/density terms are not established by this note. No curved trace
remainder or common-regulator interchange follows from this calculation.

## Analytic kernel bound

Set a=alpha(1-alpha), phi(z)=(1+z)exp(-z), and assume

    F(x) = 1/2 + (1/2) integral_0^1 phi(a x) d alpha,
    R(x) = F(x)-1+x^2/120,                       x >= 0.

For z>=0, differentiation and the zero value at zero give the exact identity

    phi(z)-1+z^2/2 = integral_0^z s(1-exp(-s)) ds.

Since 0 <= 1-exp(-s) <= min(s,1), the right side lies between zero and
min(z^3/3,z^2/2). Integrating these bounds in alpha and using
integral_0^1 a^2 d alpha=1/30 and integral_0^1 a^3 d alpha=1/140 gives

    0 <= R(x) <= min(x^3/840, x^2/120).                (1)

This is uniform for all x>=0; it does not truncate the Fourier integral.
The two upper estimates apply simultaneously, although the integral of a
pointwise minimum need not equal the minimum of the integrals.

## Conditional Fourier estimate

Let u,w be real, even, localized full-line H^3 functions and let their
physical-half restrictions be in H^3(0,infinity). Use the transform
`fhat(k)=integral exp(-iky)f(y)dy`, with Parseval measure dk/(2pi).
Assume the already-derived physical-half bilinear remainder is represented by

    r_flat(u,w;t) = (1/(pi t)) integral_R
                       conjugate(uhat(k)) what(k) R(t k^2) dk/(2pi),
                                                        t>0.          (2)

Equation (2) is an explicit input to this estimate: the 1/2 factor for a
physical half has already been applied to the source's full-line multiplier
2 F(t k^2)/(pi t). The existence of (2), the precise subtracted terms, and
its physical normalization must be audited against the Dirac variation; they
are not consequences of (1).

Using the cubic bound in (1), Parseval, and Cauchy--Schwarz gives

    |r_flat(u,w;t)| <= t^2/(840 pi)
                      ||u'''||_(L2,R) ||w'''||_(L2,R)
                    = t^2/(420 pi)
                      ||u'''||_(L2,half) ||w'''||_(L2,half).       (3)

For the equality, even full-line H^3 functions have odd third weak derivatives,
whose squared norms are twice their physical-half norms. The derivatives here
include the full localized fields, including their transition regions. The
integral in (2) converges absolutely by Cauchy--Schwarz and H^3 regularity.
Integrating (3) against dt/t^2 over (0,t0) then gives

    integral_0^t0 |r_flat(u,w;t)| dt/t^2
       <= t0/(420 pi) ||u'''||_(L2,half) ||w'''||_(L2,half).       (4)

No sign condition on the bilinear pairing is required, despite R>=0; the
absolute value is taken before Cauchy--Schwarz. This establishes an
all-frequency bound for the stated flat expression. It does not establish
that the unknown curved remainder has the same bound or that a full action
has been differentiated under its regulator.

Remaining to-do list: derive (2) from the paired-domain heat variation with
all vertices and contacts, verify the normalization and regularity hypotheses,
compare the result against closest prior literature, and formalize the
supported analytic result on GCP.

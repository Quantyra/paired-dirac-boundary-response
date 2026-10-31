# Full-Weyl tangent response: angular-weighted local subtraction

This derives the small-time local terms of the full-Weyl flat tangent
multiplier, summed over the recorded nonzero magnetic tower. It is an
ordinary full-plane rank-two trace-density result for smooth localized
profiles. It is not the orbit-only source conversion, a physical folded
trace, a curved common-regulator theorem, or a Lean certificate.

Use the complete mixed multiplier from
[`flat-tangent-angular-sum.md`](flat-tangent-angular-sum.md):

```text
H(t,k) = 2/(pi t) {
  Theta(t) [I(x)-x I'(x)]
  - t Theta'(t) [I(x)-x A'(x)]
  + t^2 Theta''(t) A(x)
},   x=t k^2,
```

where `A(x)=integral_0^1 exp(-alpha(1-alpha)x) d alpha` and
`I=(1+A)/2`. The sphere weights are
`M_n^2=n(n+q)/b^2`, `d_n=2(q+2n)`, `n>=1`, with both nonzero signs already
counted. Put

```text
alpha0 = 2 b^2,   C0 = -q-1/3,   C1 = q^2/6-1/30.
```

For fixed `q>=0` and `b>0`, the mass-weighted Euler--Maclaurin estimates give

```text
Theta(t)       = alpha0/t + C0 + (C1/b^2)t + O(t^2),
-t Theta'(t)   = alpha0/t - (C1/b^2)t + O(t^2),
t^2 Theta''(t) = 2 alpha0/t + O(t^2).                  (1)
```

The first two follow from
[`magnetic-angular-subleading-asymptotics.md`](magnetic-angular-subleading-asymptotics.md).
For the third, differentiate the absolutely convergent series twice at
positive time and estimate the weighted sum independently:
`Theta''=b^-4 sum 2(q+2n) f(n)^2 exp(-a f(n))`, where
`f(x)=x(x+q)`, `a=t/b^2`. Euler--Maclaurin has leading integral
`integral_0^infinity 2 f'(x) f(x)^2 exp(-a f(x)) dx=4/a^3`.
The endpoint corrections and periodic remainder are `O_q(1)` by the same
Gaussian rescaling used in the cited mass-weighted estimate, so
`Theta''=4 b^2/t^3+O_q,b(1)`. This is a separate estimate; it does not
differentiate an `O(t^2)` remainder.

The all-frequency Taylor bounds needed below follow from the defining alpha
integral:

```text
A(x)  = 1-x/6+x^2/60 + O(x^3),
A'(x) = -1/6+x/30 + O(x^2),                 x>=0,
```

with global remainder bounds `|O(x^3)|<=C x^3` and `|O(x^2)|<=C x^2`.
They follow from the integral Taylor remainder and `0<=alpha(1-alpha)<=1/4`;
they do not require a frequency cutoff.

Substitute (1) into the braces and first collect the leading `alpha0/t`
terms. Since `I=(1+A)/2` and `I'=A'/2`, their combined factor is

```text
(alpha0/t) { [I-xI']+[I-xA']+2A }
  = (alpha0/t) { 1+3A-(3/2)xA' }
  = 4 alpha0/t - alpha0 k^2/4 + O(alpha0 t^2 k^6).    (2)
```

The `x^2` coefficient cancels. The `C0` term is
`C0[I-xI']=C0+O(C0 x^2)`, since its term linear in `x` also cancels.
The two `C1 t/b^2` terms cancel at `x=0`; their difference is
`O(t x)=O(t^2 k^2)`. The remainders in (1) contribute
`O(t^2(1+x^2))` using the global polynomial bounds on the alpha-integral
kernels. Thus the braces equal

```text
4 alpha0/t + C0 - alpha0 k^2/4
  + O_{q,b}(t^2 (1+|k|^6)),   0<t<=t0.                 (3)
```

The bound includes the full frequency line. For real smooth compactly
supported profiles `u,w`, Plancherel and Cauchy--Schwarz therefore give

```text
integral_R conjugate(uhat(k)) what(k) H(t,k) dk/(2 pi)
  = 8 alpha0/(pi t^2) integral u w
    + 2 C0/(pi t) integral u w
    - alpha0/(2 pi t) integral u' w'
    + O_{q,b}(t) ||u||_(H^3) ||w||_(H^3).             (4)
```

Equivalently, the first three coefficients are
`16 b^2/(pi t^2)`, `2 C0/(pi t)`, and `-b^2/(pi t)` multiplying
`integral u w`, `integral u w`, and `integral u' w'`, respectively. In this
declared full-plane model there is no finite `t^0` local term. The divergent
terms in (4) are the subtraction data for this tangent Hessian; no physical
counterterm convention is inferred here.

If a separate zero angular block is modeled by multiplicity `z0` at `mu=0`,
its contribution is `z0*2/(pi t)[I-xI'] = 2z0/(pi t)+O(t k^4)` and adds
`2z0/(pi t) integral u w + O(t)||u||_(H^2)||w||_(H^2)` to (4). The source
LLL cocycle and its allocation are not established by this model and must
remain a separate block. Likewise, the full-plane rank-two normalization
must not silently acquire a physical-half or per-exterior factor.

This subtraction is distinct from
[`flat-conversion-angular-local-terms.md`](flat-conversion-angular-local-terms.md):
that note expands the orbit-only geometric-plus-contact endpoint conversion,
whereas (4) expands the full-Weyl tangent heat Hessian. The different leading
terms do not by themselves show disagreement of physical observables; a
common-regulator transfer with all contact, density, LLL and subtraction
terms is still required.

### Extension of the fixed-product tangent formula to rough H3 profiles

The remainder estimate in (4) is controlled by the `H^3` norms, so the
subtracted full-Weyl tangent bilinear extends by density from smooth compactly
supported profiles to `H^3(R)` profiles. Indeed, after subtracting the three
displayed local terms, the Fourier multiplier is bounded by
`C t (1+|k|^6)` for `0<t<=t0`; Cauchy--Schwarz makes the bilinear form
continuous on `H^3 x H^3`, uniformly with the stated factor `t`. The local
terms themselves involve only `L^2` and first-derivative pairings and extend
on the same space. Thus no uniform fourth-derivative bound is needed for
this fixed flat tangent calculation.

In particular, a compactly localized physical-side cubic/log profile
`c y^3+d y^4 log(y)` has third weak derivative in `L^2(0,delta)`. Its
balanced fold `c|y|^3+d|y|^4 log|y|` is locally `H^3(R)`; the third derivative
may jump at zero for the cubic term, which is allowed in `H^3`. This extends
the fixed-product full-Weyl tangent formula to those rough profiles by the
continuous bilinear extension, without smoothing the seam. It does not prove
that the frozen source's localized tangent extraction equals this full-Weyl
multiplier, nor does it estimate the curved difference, moving cutoff,
thermal images, density/contact, boundary transgression or LLL. In
particular the uniform `O(t)` bound alone is not integrable against
`dt/t^2`; the source-defined tangent must be subtracted before using the
curved `t^(3/2)` target.

Remaining to-do list: match this full-Weyl tangent subtraction to the physical
observable and source conversion under one regulator, establish the curved
remainder if the final claim requires it, resolve novelty, and certify the
supported claims on GCP.

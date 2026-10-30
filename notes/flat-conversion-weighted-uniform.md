# Uniform flat conversion remainder for the weighted cubic class

This extends `flat-conversion-subtraction-matching.md` from the selected pure
cubic/log profiles to the bounded weighted class used in the paper plan. It
is a uniform estimate for a specified flat endpoint diagnostic, conditional
on its folding and normalization, not a curved response or Lean certificate.

Let u,w be real even localized profiles with cubic coefficients c_u,c_w
and weighted remainder and fixed cutoff/interior bounds as in the uniform
section of `flat-boundary-coefficients.md`. Let K_u,K_w control those
bounds. Use the full massive angular tower with fixed q>=0 and b0>0, and
set C=2b0². For J_2, the conversion diagnostic with both flat kernels
subtracted through x², there are constants t_*>0 and A<infinity, depending
only on q,b0 and the declared localization and weighted constants, such
that for 0<t<=t_*,

 |J_2(t) - C t/(1680 pi) integral_0^infinity u'''w''' dy
          + 3 C c_u c_w t^(3/2)/(1024 sqrt(pi))|
       <= A K_u K_w t² [1+|log t|³].                       (1)

The constant A is not evaluated and is not an admission margin. The bound
includes the entire angular tower and full Fourier range.

To prove (1), use the exact identity between J_2 and J_3 in the subtraction
matching note. Euler--Maclaurin gives uniformly for fixed q,b0,

 -t²[Theta+2tTheta']/(1680 pi)=C t/(1680 pi)+O(t²).

The H³ norm of each direction, including the cutoff transition, is bounded
by its K constant, so the resulting O(t²) term is bounded by A K_u K_w t².

For J_3, write its Fourier kernel as

 [Theta R_I(tk²)/t + Theta' R_A(tk²)]/(2pi).

The angular estimates are Theta/t=C/t²+O(t^-1) and
Theta'=-C/t²+O(t^-1). Both remainders satisfy O(x^4) for x<=1 and
O(1+x³) for x>=1. The Fourier estimate in the cited weighted-class note
states, uniformly for |k|>=2,

 |conjugate(uhat(k)) what(k)-144 c_u c_w |k|^-8|
       <= A K_u K_w (1+log²|k|)|k|^-9.                   (2)

Split the frequency integral at |k|=2 and |k|=t^-1/2. On the middle
interval, (2) and the O(x^4) remainder give O(K_u K_w t²[1+|log t|³]);
on the high interval, the cubic growth bound gives at most
O(K_u K_w t²[1+|log t|²]). Bounded frequencies and the difference between
the truncated and full cubic moment are O(K_u K_w t²). The O(t^-1)
angular-weight errors contribute O(K_u K_w t^(5/2)) using the same split
and bounded cubic coefficients. The leading moment J_I-J_A yields the
coefficient -3C/(1024 sqrt(pi)) established in the conversion seam note.
These estimates prove (1).

In particular, J_2(t)->0 uniformly on any bounded family with these fixed
constants. Equation (1) does not extract a logarithmic coefficient from
the larger weighted class, whose log jet is not fixed. Nor does it identify
this flat endpoint diagnostic with the source's curved conversion, P1-D's
integrand, or a physical admission bound. Thermal images, physical domain,
subtraction matching and uniform curved estimates remain separate.

Remaining to-do list: prove the curved physical conversion and common
regulator, verify geometry, decide novelty, prepare the manuscript, and
certify supported claims in Lean on GCP.

# Regulated action endpoints for the graded conversion

This derives the positive-cut endpoint-integral expression used as a
definition in `graded-mass-conversion-positive-cut.md`, for that smooth
compact model. It retains both partner squares and their actual domains.
The source's physical trace normalization, full Weyl response and regulator
removal remain separate, and no Lean certification is claimed.

Use the skew-adjoint Q, domain-preserving grading Gamma, scalar b and
A_r(b) from the graded conversion note. Put B=||b||_infinity and

 P_r=A_r* A_r,  Pbar_r=A_r A_r*,
 Gamma_e(r)=1/2 integral_e^infinity Tr exp(-t P_r) dt/t.  (1)

The later [proper-time tower argument](product-conversion-proper-time-differentiation.md) proves the integrability and sum interchange for the stipulated positive-mass product model under its uniform seed and domain hypotheses.

Take M>0 and e>0, with the smooth compact form-differentiability and
trace-class hypotheses of that note. Assume the differentiated heat traces
are integrable in t and allow the cyclic trace operations below; the gap
calculation gives a concrete route to the large-t part, not the required
local trace estimates. For a tower, the sums and their differentiated
integrals must also be justified, or the derivation may first be done for a
finite tower.

## Uniform mass gap

Let E_r=exp(-r b/2). Since Q is skew-adjoint and exp(b)>=exp(-B),

 Re <x,(Q+M exp b)x> >= M exp(-B)||x||^2.               (2)

The same lower bound applies to the real part of its adjoint. Hence both
have trivial kernels and closed ranges; the adjoint-kernel criterion gives
surjectivity, so the middle operator is invertible with norm at most
e^B/M. Multiplication by E_r and E_r^-1 preserves Dom Q and its adjoint
under the stated hypotheses. Therefore

 A_r^-1=E_r^-1(Q+M exp b)^-1 E_r^-1,
 ||A_r^-1|| <= e^((1+r)B)/M <= e^(2B)/M.                (3)

Both P_r and Pbar_r are consequently bounded below by M^2 e^(-4B),
uniformly for r in [0,1]. This is a model spectral lower bound, not a
physical admission margin. It also shows that zero modes are absent for
M>0. The M=0 sector needs separate infrared treatment and is not included.

## Differentiation of the regulated action

The first-order derivative is dot A_r=-(b A_r+A_r b)/2. On the common form
core its square derivative is

 dot P_r=-(b P_r+P_r b)/2-A_r* b A_r.                    (4)

By form Duhamel differentiation and trace cyclicity at t>0,

 d_r Tr exp(-t P_r)=-t Tr_form[dot P_r exp(-t P_r)].

Polar decomposition intertwines A_r exp(-tP_r) A_r* with
Pbar_r exp(-tPbar_r). With the smoothing/trace assumptions this gives

 Tr_form[dot P_r exp(-tP_r)]
   =-Tr[b P_r exp(-tP_r)]-Tr[b Pbar_r exp(-tPbar_r)].    (5)

Substitution into (1) and integration in t yield

 d_r Gamma_e(r)=1/2 Tr[b(exp(-eP_r)+exp(-ePbar_r))].    (6)

The upper endpoint vanishes using the gap and the stated heat-trace bounds.
No determinant-product formula or fixed square domain is used.

Because Gamma anticommutes with Q and commutes with the real scalar b,
Gamma A_r Gamma=A_r*. Thus Gamma P_r Gamma=Pbar_r as closed operators,
including their domains. If the trace and b are Gamma-invariant,
Tr[b exp(-ePbar_r)]=Tr[b exp(-eP_r)], and integration of (6) in r gives

 Gamma_e(1)-Gamma_e(0)
     = integral_0^1 Tr[b exp(-eP_r)] dr.                  (7)

For a finite angular tower, sum (7) with its actual multiplicities. For an
infinite tower, the sum is legitimate only after a common positive-cutoff
domination of the action derivatives and endpoint integrals is established;
the seed sums for the first two jets are separately addressed in the graded
conversion note. The full angular, zero-mode and normalization conventions
must not be inferred from (7) alone.

By `product-mode-real-mass-interpolation.md`, the r=1 and r=0 squares match
the stipulated orbit-only fixed-angular and variable-mass mode families
under a left-unitary identification. The full four-dimensional Weyl
congruence is a different family and requires its angular vertices. Equation
(7) is an exact finite-cutoff statement under the stated model assumptions;
it does not establish the physical pulled-back bundle, physical-half/time
normalization, ultraviolet finite part or a common-regulator limit.

Remaining to-do list: verify the physical product/domain and trace matching,
prove the rough subtracted remainder and regulator, finish the novelty audit
and manuscript, and certify supported claims in Lean on GCP.
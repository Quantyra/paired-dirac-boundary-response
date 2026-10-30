# Positive-time parameter derivatives for the compact rough flat model

Status: ordinary proof route on the compact flat double, subject to
independent functional-analytic review and not Lean-certified. This extends
[the rough approximant result](rough-compact-flat-folding.md) to mixed
parameter derivatives at positive time. It does not establish the physical
curved response or a uniform small-time asymptotic.

## Claim

Let b_n, b, u_n, u, w_n, w be real even W^{1,infinity} scalar functions
on the fixed compact flat double, with each sequence converging in
W^{1,infinity}. Use the fixed free skew-adjoint Dirac operator D on H¹,
and set E_z = exp[−(b+z1 u+z2 w)/2]. For real z near zero, let
D_z=E_z D E_z on H¹ and L_z=D_z*D_z on its composition domain; define
the n-family analogously.

For each 0<t0<T, the mixed derivatives of exp(−t L_z) at z=0 converge
in trace norm uniformly for t in [t0,T]. The same holds for the corresponding
half-cylinder operators and their heat traces, with the exact one-half
full-trace relation for the mixed derivatives. The conclusion applies to the
weighted approximants after their W^{1,infinity} convergence is established.

## Fixed-domain forms

For complex z near zero define the sesquilinear form on V=H¹ by

    a_z(f,g) = <D_z f, D_{conj(z)} g>,

with the inner-product convention chosen so this expression is holomorphic
in z. For real z this is the closed quadratic form of L_z. Products and the
weak Leibniz rule show that a_z is bounded on V and holomorphic in the two
parameters. At z=0, the graph estimate for D_b gives

    a_0(f,f) + c ||f||² >= a ||f||_{H¹}²

for some a>0 and c>=0. Uniform W^{1,infinity} bounds and convergence imply
that, for all sufficiently large n and for one common small polydisc,
a_{n,z}+c'||.||² is uniformly coercive and sectorial. Moreover the forms
converge in the operator norm V → V* uniformly on that polydisc. In
particular their associated m-sectorial operators have uniformly controlled
sectorial resolvents, and the holomorphic form theorem and the resolvent
identity give operator-norm convergence of their heat semigroups uniformly
for z in a smaller closed polydisc and t in [t0,T].

## Trace-class and Cauchy step

Write S_z(t)=exp(−t A_z) for the complex form operator. Uniform sectorial
semigroup bounds give ||S_z(t)||_{H→H} <= C and
||A_z S_z(t)||_{H→H} <= C/t on positive-time compact intervals. Coercivity
and the form identity then give the uniform smoothing estimate

    ||S_z(t)||_{H→H¹} <= C_t.

The same bounds hold for the n-families. On the two-dimensional compact
torus, the embedding H¹ → L² is in Schatten S_p for every p>2, as follows
from the Fourier eigenvalues of (1−Delta)^{-1/2}. Consequently each
S_z(t) is uniformly bounded in S_p. Operator-norm convergence combined with
the uniform S_p bounds gives convergence in S_q for every q>p by the
singular-value interpolation inequality. Choose 2<p<4 and q=4. Factor

    S_z(t) = [S_z(t/4)]^4.

Schatten Hölder with four S_4 factors and the telescoping product identity
then upgrades the convergence to trace norm, uniformly on the smaller
polydisc and positive-time interval. The same factorization also shows
trace-norm holomorphy: local operator-norm holomorphy and local S_p bounds
give S_4 holomorphy, and multiplication S_4^4 → S_1 is continuous.

Apply the two-variable Cauchy formula on fixed circles inside the polydisc.
Uniform trace-norm convergence on those circles passes through the contour
integrals, proving convergence of the mixed derivatives uniformly for
t in [t0,T]. On real parameters the folding trace identity holds throughout
the neighborhood; differentiating that equality yields the stated half
factor. Equivalently the fixed reflection projection and extension maps
give the same derivative convergence in trace norm on the half-cylinder.

The complex form is an analytic device: it is not claimed to be the
physical positive square for nonreal parameters. The constants above may
deteriorate as t0 ↓ 0. No interchange with the short-time limit, no curved
locality, and no physical regulator or fiber normalization follows. No
numerical check substitutes for the form and Schatten estimates.

Remaining to-do list: independently verify the form and trace-ideal argument,
establish the small-time rough asymptotic and physical identification, audit
prior art, and formalize the supported statements on GCP.
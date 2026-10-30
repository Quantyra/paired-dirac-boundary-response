# Complex collar commutator and localized trace comparison

This combines `complex-offdiagonal-hilbert-schmidt.md` with the cutoff
comparison in `euclidean-collar-cutoff-comparison.md`. It is conditional on
the stated closed-domain, common-collar and uniform estimates; it does not
identify the physical source or prove the full regulator limit.

Let D_z=E_z D E_z on a common H1 projector domain and let the holomorphic
square form have associated operator L_z=D_(bar z)* D_z, with its natural
composition domain. Assume the corresponding adjoint-domain identities and
scalar product rules. Let chi be real, smooth, constant near each boundary,
with its derivative supported in an interior set F. Set

  A_z=[D_z,chi],  A_barz=[D_(bar z),chi].             (1)

These are bounded multiplication operators with uniformly bounded first
coefficients on F under the common W1 scalar and smooth seed bounds. For
w in Dom L_z, chi w lies in Dom D_z and
D_z(chi w)=chi D_z w+A_z w. The first term belongs to Dom D_(bar z)*
because chi preserves that first-order adjoint domain. The second belongs
there because it is H1 and compactly supported in the interior. Hence chi
preserves Dom L_z, and on this domain

  [L_z,chi]w = D_(bar z)* (A_z w)-A_barz* D_z w.    (2)

The identity [D_(bar z)*,chi]=-A_barz* follows by taking adjoints for real
chi. The right side is a first-order operator supported in F, with uniform
local coefficients; it is controlled by a suitable local Q:V->H and the H
norm. The same argument applies to the second compact comparator when its
collar data and domains agree.

Suppose two complex form families L_z and Ltilde_z agree on an identified
collar U, including the local first-order boundary conditions. Let chi=1 near
an insertion support K, be supported in U, and have F=supp(d chi) at positive
distance from K. Under the standard collar extension-by-zero identification,
the domain calculation gives

  T_z(t)chi-chi Ttilde_z(t)
    = - integral_0^t T_z(t-s) C_z Ttilde_z(s) ds,     (3)

where C_z=L_z chi-chi Ltilde_z equals the local commutator in (2).
For initial data in Dom Ltilde_z, (3) follows by differentiating
T_z(t-s)chi Ttilde_z(s). For general H data use density and the uniform
bound ||C_z Ttilde_z(s)||<=C(1+s^(-1/2)); its integrability near zero
justifies the Bochner limit. The domain mapping at the collar and cutoff
support are required; (3) is not a formal equality of operators on different
unidentified Hilbert spaces.

Compress (3) by 1_K on both sides. The first heat factor from K to F and the
commutator heat factor from K to F have the off-diagonal Hilbert--Schmidt
bounds of `complex-offdiagonal-hilbert-schmidt.md`, including the appropriate
adjoint orientation for the first factor. Schatten Holder and integration
therefore give, uniformly for z in the fixed complex disk and 0<t<=t_0,

  ||1_K(T_z(t)-Ttilde_z(t))1_K||_1
       <= C t^(-N) exp(-c/t).                          (4)

Both endpoint singularities are integrable because each carries a Gaussian
factor from the positive separation. A bounded smearing supported in K gives
the same scalar trace bound. If the scalar trace is holomorphic in z on a
fixed disk, Cauchy's formula transfers (4) to its first geometric variation.
All constants must be uniform in the cut and field approximant and in the
common collar separation. This is the complex-family ingredient required by
`geometric-locality-vertex.md`, conditional on those assumptions.

The result covers compact comparison models and the declared matching collar.
It does not prove their physical copy/boundary identification, uniformity for
a shrinking collar, local subtraction matching or the proper-time regulator.
No numerical run or Lean certificate is claimed.

Remaining to-do list: verify uniform physical collar and domain hypotheses,
match all subtractions and regulator terms, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.
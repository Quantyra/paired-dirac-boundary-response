# Complex congruence commutator and cutoff domain

Status: ordinary algebra and domain argument under the common H¹ paired
first-order and adjoint hypotheses. It supplies the complex commutator input
in [the local energy estimate](complex-local-energy.md); it does not prove
physical global bundle matching, the whole locality theorem or Lean
certification.

## Operator represented by the holomorphic form

Let D be closed and densely defined, with the fixed H¹ projector domain V
and complementary H¹ adjoint domain V*. Assume complex W^{1,∞} scalar
multipliers and their inverses preserve both. For real b,v and complex z
in the fixed sectorial disk, put

    E_z=exp[-(b+zv)/2],     D_z=E_z D E_z.

The form q_z(u,w)=<D_z u,D_(bar z) w>, with convention chosen for
holomorphy, is represented by

    L_z=D_(bar z)* D_z,
    Dom(L_z)={u∈V: D_z u∈V*}.                           (1)

Indeed D_(bar z)*=E_z D* E_z by bounded congruence, and the form
representation theorem identifies the operator on the right. For nonreal z
this is generally not D_z*D_z; replacing it by the latter would lose the
holomorphic family. The common H¹ identities and multiplier assumptions
are essential to (1).

## Cutoff and commutator

Let χ be real smooth, with dχ supported in an interior collar F, and set

    A_z=[D_z,χ]=E_z² c(dχ),
    B_z=[D_(bar z)*,χ]=-[D_(bar z),χ]*.                   (2)

Both are W^{1,∞} bundle multipliers supported in F. Their values and weak
first derivatives are bounded uniformly on the disk by the seed, cutoff,
B,G and |z| ||v||_(W^{1,∞}) bounds. In particular the adjoint in (2) is
formed before replacing bar z; its coefficient is holomorphic in z under
the stated convention.

For u∈Dom(L_z), χu∈V and
D_z(χu)=χD_z u+A_z u. The first term is in V* by scalar preservation,
and the second is in V* because it is H¹ and supported away from the
boundary. Hence χu∈Dom(L_z). On this domain,

    [L_z,χ]u = D_(bar z)*(A_z u)+B_z D_z u.              (3)

This formula contains no second derivative of b or v. Let ψ be a fixed
smooth scalar cutoff equal to one near F and supported in the common
collar. The first term is controlled by ||ψu||_(H¹); the second by
||ψD_z u||. The common graph estimate and the uniform W^{1,∞} coefficient
bounds yield

    ||[L_z,χ]u||₂
       ≤ C (||D_b(ψu)||₂+||ψu||₂),                      (4)

with C uniform on the disk and over the declared real multiplier ball.
The product rule for ψ converts ψD_z u to D_z(ψu) plus bounded terms; the
uniform graph comparison converts D_z to D_b. For fixed b and sufficiently
small z, that graph comparison follows from the same small relative form
bound used to choose the sectorial radius.

## Collar identification and scope

If physical and auxiliary first-order expressions, adjoints and scalar
coefficients are identified throughout the cutoff support, (2)–(4) hold
on either side with the same local coefficients. The cutoff identity is
then available for the complex form operators, subject to the standard
semigroup Duhamel justification and the off-diagonal Schatten estimates.
This does not itself prove the physical H¹ domains, global bundle map,
uniform changing-geometry constants or the common-regulator limit. No
numerical computation is used.

Remaining to-do list: establish the physical common-collar and global
hypotheses; complete the geometric/locality and regulator analysis, novelty
review and GCP Lean certification.

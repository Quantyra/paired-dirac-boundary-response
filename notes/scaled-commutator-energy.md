# Scaled commutator bound from the first-order energy

This derives the operator estimates (3)--(4) of
`scaled-offdiagonal-schatten.md` on a fixed compact model under explicit
uniform first-order and weighted-semigroup assumptions. It does not verify
those assumptions for the physical paired family or certify them in Lean.

Let P_ell be closed first-order realizations with common H¹ projector form
domain, L_ell=P_ell* P_ell, and T_ell(t)=exp(-tL_ell). Assume a uniform
graph estimate

    ||v||_(H¹) <= G (||P_ell v||_2+||v||_2)              (1)

on the form domain, uniform first-order product-rule coefficients for P_ell
and P_ell*, and preservation of both first-order domains by scalar Lipschitz
multipliers. Assume the weighted Davies and time-derivative estimates of
`paired-weighted-derivative.md` hold with constants uniform in ell. Thus,
for sets B,E at distance h>0 and 0<t<=1,

    ||1_B T_ell(t) 1_E|| <= C exp(-c h²/t),
    ||1_B L_ell T_ell(t) 1_E|| <= C t^(-1) exp(-c h²/t). (2)

Let chi_ell be a smooth cutoff constant near the boundary with its derivative
support F in an interior collar, and suppose its first two derivatives are
bounded by C ell^(-1), C ell^(-2). Assume fixed uniform coordinate and
coefficient bounds on that collar, including first weak derivatives of the
first-order coefficients. Let C_ell=[L_ell,chi_ell] on the actual square
domain. The product rule and the interior support of d chi give

    C_ell v = P_ell* [P_ell,chi_ell]v
                 + [P_ell*,chi_ell] P_ell v.             (3)

For a real cutoff psi equal to one on a neighborhood of F, (3) implies

    ||C_ell v||_2 <= C [ell^(-1)||psi v||_(H¹)
                               + ell^(-2)||psi v||_2],     (4)

provided psi is one on the supports of the coefficient derivatives as well.
The proof uses that the commutator [P,chi] is a zeroth-order multiplier,
its derivative is O(ell^(-2)), and its support is interior. These domain
facts are hypotheses of the fixed-model argument, not automatic physical
matching.

For a set E with h=dist(F,E)>=c0 ell, choose psi supported within distance
h/4 of F, equal to one near F, with ||d psi||_infinity<=C/h<=C'/ell.
Assume the fixed geometry supplies such cutoffs with constants uniform in
the relevant collar. For u=T_ell(t)1_E f, apply the exact local form-energy
identity in `paired-weighted-derivative.md` and the two bounds (2). Its
right-hand side is at most

    C (t^(-1)+ell^(-2)) exp(-c' h²/t) ||f||².

Together with (1), this gives

    ||psi u||_(H¹) <= C (1+t^(-1/2)+ell^(-1))
                              exp(-c'' h²/t)||f||.        (5)

Substitution in (4), for 0<t,ell<=1, yields

    ||C_ell T_ell(t)1_E||
       <= C ell^(-2)t^(-1/2) exp(-c'' h²/t).             (6)

The global version, without the exponential, follows from (4), (1),
||P_ell T_ell(t)||<= (2e t)^(-1/2), and ||d psi||<=C/ell. Thus the
operator bounds required for the Schatten splitting hold under the explicit
uniform inputs above. If F has several separated components, the cutoff and
coefficient estimates must hold for their union with the same constants.

The fixed auxiliary lapse construction supplies uniform scalar bounds and
first derivatives, conditional on its identified first-order realization;
the actual physical graph, boundary-domain maps, weighted estimates and
common collar still require verification. The two-insertion contact,
geometric vertices, fixed-direction complement, angular sum and regulator
are not proved by (6). No numerical computation is used.

Remaining to-do list: verify the uniform physical and auxiliary inputs,
complete the mixed response and novelty audit, prepare the manuscript, and
certify supported claims in Lean on GCP.
# Flat tangent response for a fixed angular mode

This extends the rank-two flat orbit calculation in
`flat-tangent-multiplier.md` to the full scalar congruence of one product
angular mode. It is an ordinary full-plane trace-density calculation, not a
physical folded-boundary identification, a curved remainder, or a Lean
certificate.

Use Hermitian orbit Clifford matrices, D=gamma_i partial_i on R²,
G=i gamma_y gamma_tau, and P_mu=D+i mu G for real mu. Let u,w be smooth
compactly supported functions of the normal coordinate y, and take trace
density per unit tangential length with rank-two orbit trace and Fourier
measure dk/(2pi). The square of the unvaried mode is H_mu=-Delta+mu².
The full Weyl family is P_mu,b=exp(-b/2)P_mu exp(-b/2), not the family
that holds i mu G fixed.

Put x=t k², z=t mu², a=alpha(1-alpha), and define

    A(x)=integral_0^1 exp(-a x) d alpha,
    I(x)=integral_0^1 [1+x(1-2alpha)²/4] exp(-a x) d alpha.

The first variation of the square is the orbit vertex from the flat note,
plus -2mu² w-i mu G c(dw). In the first variation of the smeared heat
trace Tr[u exp(-tH_mu)], the gradient term has zero rank-two fiber trace:
tr(G gamma_y)=0 and the unperturbed heat kernel is scalar in that fiber.
The scalar angular term contributes 2mu² times the rank-two Gaussian
integral. Thus its bilinear Fourier multiplier is

    Q_mu(t,k) = exp(-z)/(pi t) [I(x)+z A(x)].               (1)

The heat variation identity for the full mode family,

    delta_u K_mu(t)=-2t partial_t Tr[u exp(-tH_mu)],

uses the same partner/domain or flat trace-density hypotheses as the
massless calculation. Differentiating the complete (1), including exp(-z),
yields the full mixed heat multiplier

    H_mu(t,k) = 2 exp(-z)/(pi t)
       [(1+z) I(x)-x I'(x)+z² A(x)-x z A'(x)].             (2)

Equivalently it is exp(-z) times the fixed-angular orbit multiplier plus

    2 exp(-z)/(pi t) [z I(x)+z² A(x)-x z A'(x)].           (3)

Equations (2)--(3) include the mixed second vertex and cross terms through
differentiation of the complete heat response. They do not add separately
computed angular vertices a second time. The Gaussian and alpha integrals
are over their full ranges. For smooth compact profiles the first-variation
Fourier integrals and the t derivative are justified by Gaussian decay and
rapid decay of the Fourier transforms.

At mu=0, (2) reduces exactly to the rank-two multiplier in the flat note.
At k=0, I(0)=A(0)=1, giving 2 exp(-z)(1+z+z²)/(pi t), in agreement with
the constant-Weyl all-mode benchmark. The k=0 test is an algebraic limit;
constant directions need not satisfy the localized jet conditions.

For the selected nonzero sphere tower, the complete fixed-positive-time
response is obtained by summing (2) with the actual mode multiplicities,
subject to the sector, fiber and per-exterior identifications. The sign of
mu drops out of this particular flat scalar trace, but this does not prove
that every curved or boundary vertex cancels between signs. Since (2)
depends on z as well as x, multiplying the massless mixed multiplier by a
fixed angular heat factor omits (3). The separate contact and conversion
terms of the physical observable must still be included.

The formula by itself neither proves a physical half-trace factor nor
interchanges the angular sum with a small-time subtraction or regulator
limit. Applying it to the original cubic/log class also requires the
specified approximation and Fourier-tail arguments. No numerical
calculation was used.

Remaining to-do list: match the physical folding and normalization, derive
the angular-summed localized subtraction and regulator estimate, complete
novelty and manuscript, and certify supported claims in Lean on GCP.

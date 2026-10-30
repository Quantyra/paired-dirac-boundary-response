# Flat paired folding and the half-trace factor

Status: ordinary argument for a flat smooth even family under explicit trace
and domain hypotheses. This is not yet an audit of the original global paired
realization, a rough-family limit theorem, a curved response or a Lean
certificate. It addresses the physical-half factor left open in
[the flat multiplier note](flat-tangent-multiplier.md).

## Setup and claim

Work on the full flat cylinder R_y x S^1_tau with a fixed finite-dimensional
Hermitian Clifford representation. Let gamma_n and gamma_tau be Hermitian,
square to one and anticommute. Let chi be a Hermitian involution commuting
with gamma_n and anticommuting with gamma_tau. Set Pi_+=(1+chi)/2 and
Pi_-=1-Pi_+. A fixed periodic or antiperiodic spin structure around S^1 is
allowed. Let b=b(y) be real, smooth, even, bounded with bounded derivatives,
and set E=exp(-b/2), D_b=E(gamma_n partial_y+gamma_tau partial_tau)E and
L_b=D_b*D_b on the full cylinder.

On y>0 take the first-order domain with boundary trace Pi_- psi=0, and take
its complementary adjoint domain. Define the positive square by composition,
not by assuming its domain is independent of b. Assume the usual H^1 trace
and gluing theorems for this flat half-cylinder, and assume the particular
relative heat operators or differentiated localized products whose traces are
used below are trace-class. Under those hypotheses the half-domain trace of
such an operator is one half of the full doubled trace. The corresponding
statement holds for mixed variations in even scalar directions whenever the
trace-class differentiations are justified.

This claim compares the half-cylinder with a full cylinder carrying the SAME
fiber representation. Any reduction to a smaller spin/folded trace requires
its own rank and normalization accounting.

## Reflection and domains

Let R psi(y,tau)=psi(-y,tau), U=chi R, and Gamma=gamma_n gamma_tau. U is a
unitary involution, Gamma is unitary with Gamma^2=-1, and

    U D_b = -D_b U,     Gamma D_b = -D_b Gamma,
    U Gamma = -Gamma U.                                    (1)

The first relation uses [chi,gamma_n]=0, {chi,gamma_tau}=0 and E(-y)=E(y).
The second follows from the Clifford relations and scalar E. Thus both U and
Gamma commute with L_b, while Gamma interchanges the U-even and U-odd sectors.

For a half-cylinder spinor psi, its normalized extension to the full cylinder
is psi(y)/sqrt(2) for y>0 and chi psi(-y)/sqrt(2) for y<0. The H^1 gluing
condition at y=0 is precisely Pi_- psi(0)=0. Thus this extension is a unitary
identification of the half first-order domain with the U-even full H^1 domain.
By (1), D_b sends U-even to U-odd, whose half trace is Pi_+ phi=0; this is
the complementary adjoint boundary condition. Taking adjoints and composing
therefore identifies the actual half positive square with L_b restricted to
the U-even sector. This is an operator-domain statement, not a separately
imposed frozen Robin condition. Smooth even E has vanishing normal derivative
at the seam; the conclusion here does not automatically extend to a rough
limiting family or a general curved collar.

## Trace identity

Let A be any trace-class operator on the full cylinder which commutes with U
and Gamma, for example a relative heat operator when trace class. The U-even
projection is P_even=(1+U)/2, so

    Tr(P_even A) = (1/2) Tr(A) + (1/2) Tr(U A).

Unitary conjugation by Gamma preserves trace, fixes A, and sends U to -U.
Hence Tr(U A)=-Tr(U A)=0, and

    Tr(P_even A) = (1/2) Tr(A).                            (2)

Because every L_b in the even scalar family commutes with U and Gamma, the
same identity applies to heat differences and to their derivatives provided
those differences and derivatives exist in trace norm. It also applies to
products with scalar even smearings when the resulting operators are trace
class and commute with both symmetries. No cyclicity or differentiation of an
infinite trace is asserted without those hypotheses. A tangential length
normalization must be applied consistently to both sides before passing to a
noncompact tangential limit.

## Connection and remaining checks

For the recorded flat paired projector, chi=tau_3 gamma_n and the fixed
folded gamma matrices satisfy the required commutation relations, subject to
verification of the exact fiber and bundle identification in the physical
source. Under the smooth flat assumptions above, (2) gives a concrete route to
the one-half factor used in the tangent coefficient notes. It does not by
itself identify the original renormalized trace with this flat relative trace,
prove that the trace-class hypotheses hold for rough mass/log directions, or
justify the regular-bolt, finite-cut, thermal, angular, density/contact and
common-regulator limits. Those are independent obligations.

Remaining to-do list: audit the exact paired representation and trace-class
hypotheses, extend only the justified pieces to the selected rough profiles,
compare prior work, and formalize the supported operator and response results
on GCP.

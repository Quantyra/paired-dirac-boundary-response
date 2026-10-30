# Source contact subtraction versus the stronger remainder target

This audit compares [the flat angular contact result](angular-flat-contact-leading-remainder.md) with the frozen [variable-contact source at f0eab590](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md), sections 2–3. The source's statements are recorded evidence, not independently certified here.

The source defines the endpoint conversion J_e'' as a geometric term plus 2 Theta'(e) I_e. Its displayed equation (5) expands I_e through e² and writes a remainder o(e²). The accompanying prose asserts an O(e³) remainder on the rough collar and O(e^(5/2)) on regular C5 charts, with additional claims about thermal images and patch commutators. Section 3 uses Theta'(e)=O(e^−2) to conclude that these contact remainders vanish in the finite-part limit. It does not display an e³ contact subtraction in equation (5).

Under the conditional flat per-exterior identification, the e² truncation in equation (5) is precisely the three-term truncation audited in the flat contact note. The independently derived flat remainder has

    R_I(e)=− e³/(1680pi) integral_0^infinity u''' v''' dy + o(e³),
    2 Theta'(e) R_I(e)
      = [b0²/(420pi)] e integral_0^infinity u''' v''' dy + o(e).

Here the angular notation is as in the flat angular note, with C=b0² in the source's leading Theta(e)=2C/e convention. Thus the explicit term is compatible with the source's asserted O(e³) collar bound and with vanishing after angular weighting. It is not removed by the displayed e² truncation and, for u=v with nonzero third derivative, is not O(e^(3/2)).

The source's e^(5/2) chart bound, when multiplied by O(e^−2), gives O(e^(1/2)); its asserted e³ collar bound gives O(e). Both suffice for the stated endpoint-vanishing purpose, assuming the bounds and common normalization are established. Neither bound alone proves the proposed P1-D O(e^(3/2)) bound for a separately subtracted contact term. The source's claim of a rough-collar O(e³) argument still requires the independent derivative-redistribution and uniformity audit already identified in [the power audit](curved-contact-power-audit.md).

The distinction is consequential: the source's finite-part conversion and the P1-D stronger family remainder are different proof obligations. To obtain the latter, one must examine whether its definition includes additional local terms, prove the required higher-order contact expansion with the e³ coefficient removed, or establish a cancellation in the complete geometric-plus-contact expression. The flat calculation does not demonstrate a failure of that complete expression, establish the source's physical folding, or validate the source's common-regulator removal. No Lean or numerical certification is claimed.

Remaining to-do list: identify the exact complete P1-D subtraction and test geometric cancellation; independently audit the rough-collar estimate and physical domains; complete novelty, manuscript and GCP Lean certification.

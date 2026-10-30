# Angular-weighted flat contact: explicit leading remainder

This is an ordinary flat-model consequence of [the product-contact calculation](flat-product-contact.md) and the complete massive angular tower in [the angular estimate](angular-weighted-locality.md). It tests a particular componentwise subtraction; it is not a lower bound for the complete curved conversion or a Lean certificate.

Let q>=0, b0>0, M_n²=n(n+q)/b0², d_n=2(q+2n), and

    Theta(t)=sum_(n>=1) d_n exp(−t M_n²).

Then

    lim_(t down to 0) t²[−Theta'(t)] = 2 b0².                  (1)

To prove (1), put h=sqrt(t)/b0 and x_n=n h. The derivative sum becomes

    t²[−Theta'(t)]
       = b0² h sum_(n>=1) 2(2x_n+q h)x_n(x_n+q h)
                            exp[−x_n(x_n+q h)].

This is a Riemann sum for 4b0² integral_0^infinity x³ exp(−x²) dx=2b0². On every bounded interval the convergence is uniform; an integrable Gaussian majorant bounds the tails uniformly for h in (0,1], so the infinite sum converges to the integral. The complete n>=1 tower is used; q is fixed, and no zero-sector claim is made.

For real even localized H3 profiles u,w, use the conditional per-exterior flat normalization of the contact note, and subtract exactly its three local terms through t². That note proves

    R_I(t)/t³ -> −(1/(1680pi)) integral_0^infinity u''' w''' dy.

Combining this limit with (1) gives

    2 Theta'(t) R_I(t)
       = [b0²/(420pi)] t integral_0^infinity u''' w''' dy + o(t). (2)

For u=w with nonzero third derivative, the coefficient in (2) is strictly positive. Hence this particular flat contact remainder, after only the three displayed subtractions, cannot satisfy an absolute O(t^(3/2)) bound. Equivalently, the corresponding unweighted remainder cannot generally be O(t^(7/2)). The t term tends to zero, but it is too large for that stronger componentwise power.

This is a precise obstruction to the componentwise route in [the power audit](curved-contact-power-audit.md) with that particular subtraction. It does not show that the full geometric-plus-contact response violates the target: an additional explicit local subtraction or a proved cancellation with other conversion terms may remove the t contribution. It also does not identify the flat model with the physical paired trace, determine the curved coefficient, or settle the action's common-regulator limit. The physical normalization and selected directions must be verified independently.

Remaining to-do list: determine the complete source subtraction and geometric/contact cancellation, establish the physical-domain and regulator bridge, complete the novelty decision and manuscript, and certify supported claims in Lean on GCP.

# Moving-insertion term in the auxiliary geometric remainder

This incorporates the coordinate term identified in
`weyl-proper-bridge-direction.md` into the conditional complex-bridge route.
It is an auxiliary zero-image result, not a physical trace identification or
Lean certificate.

Use the periodic bridge functional

 J(f,u;h)=integral u(y) E[A_h^(-1/2) exp(h² B_h²/(4A_h))]dy,
 A_h=integral f(y+h xi_s)^2 ds, B_h=integral f'(y+h xi_s)ds.

Let f be positive with the W³/BV hypotheses of
`periodic-bridge-contact-assembled.md`. For fixed f this functional and each
of its local coefficients j0(f,u), j2(f,u), j4(f,u) are linear in u. The
assembled BV argument with its shifted insertion set to 1 gives

 |J(f,u;h)-j0(f,u)-h² j2(f,u)-h^4 j4(f,u)|
       <= K_f ||u||_{W^{1,infinity}} |h|^5,  |h|<=1.        (1)

The linear dependence on the insertion norm follows by tracing the
estimates: every integrand contains u once, or u' after translating a
fourth-derivative measure. K_f depends on the common positive, W³ and BV
bounds and period. This is a uniform auxiliary estimate, conditional on the
BV proof cited above.

For a real radial Weyl direction v and an insertion u fixed on the original
manifold, define W(y)=integral_0^y v(s)ds and

    g=-v f-W f',       p=-W u'.                              (2)

Under the weighted and fixed-cutoff hypotheses in the direction note, g
has the W³/BV bounds required by the complex coefficient path and p is a
bounded Lipschitz periodic insertion after a compatible localization.
The local dependence on u,v is bilinear; the extension must preserve the
actual collar values. Applying (1) to p gives an O(h^5) remainder for the
moving insertion contribution. Applying the complex Cauchy estimate to
the linear path f+z g gives the same order for the coefficient direction.
Therefore, if the real Weyl bridge functional is differentiable and its
chain rule is represented by those two terms, its derivative satisfies

 |delta J - delta j0 - h² delta j2 - h^4 delta j4|
       <= (2K/r + K_f ||p||_{W^{1,infinity}})|h|^5.        (3)

Here K and r are the uniform complex-disk constants of the coefficient
estimate; their dependence on the direction bound is explicit in that note.
The coefficient derivatives on the left include both g and p. For a
zero-image rank-two smeared trace, division by 2pi t converts (3), with
h²=t, to O(t^(3/2)); a fixed product angular factor O(t^-1) then yields
O(sqrt(t)). No cancellation between g and p is assumed.

The differentiability and chain rule in (3) are hypotheses until the
proper-coordinate unitary maps, actual paired domains and smearing are
matched to the physical family. The analytic complex extension, thermal
images and radial defects also need their uniform proofs. This result does
not determine the local coefficient values or prove the complete conversion
or P1-D. No numerical calculation is used.

Remaining to-do list: verify the complex and physical chain-rule hypotheses,
thermal and radial estimates, full regulator and novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.

# Uniform auxiliary contact cutoff and heat-time limits

This assembles the cutoff convergence and bridge estimates for the fixed RN
collar model. It is a conditional auxiliary contact result, not a proof of
the physical geometric variation, full action regulator, or Lean certificate.

Let f_e,u_e,v_e be periodic extensions satisfying the uniform positivity,
W^{3,infinity}, BV and insertion hypotheses of
`periodic-bridge-contact-assembled.md`, with common period and cutoff
constants. Assume f_e->f in W^{3,infinity} on each side, u_e->u and v_e->v
uniformly, and uniform total-variation bounds. The RN scalar construction
and `rn-contact-coefficient-weak-limit.md` provide these facts under their
fixed-extension hypotheses. Let I_e(t) be the zero-thermal-image bridge
contact, and let a_{0,e},a_{1,e},a_{2,e} be its local coefficients in the
normalization of the assembled bridge note.

The assembled estimate gives one K, independent of e, with

 |I_e(t)-a_{0,e}-t a_{1,e}-t² a_{2,e}| <= K t^(5/2),
                                                    0<t<=t0. (1)

The lower coefficients converge by uniform convergence of f_e and its
lower derivatives, and the fourth-order coefficient a_{2,e} converges by
the weak-measure argument in `rn-contact-coefficient-weak-limit.md`.
For every fixed t>0, I_e(t)->I(t): the exact bridge integrand converges
pointwise almost everywhere in y and bridge path, and is dominated by
||u_e||_1 ||v_e||_infinity m^-1 exp[t G²/(4m²)] with common bounds.
For path occupation of a null set, use the Gaussian law at almost every
bridge time and Fubini. Thus taking e->0 in (1) gives the same estimate
for the limit and its limiting coefficients.

If the antiperiodic thermal-image representation of
`contact-thermal-images.md` applies, its full nonzero-image contribution
has a common bound C exp(-c/t) for 0<t<=t0 after absorbing its fixed
prefactors. The same fixed-t dominated convergence applies to that image
sum using its uniform absolutely summable Gaussian majorant. Hence the
thermal contact obeys

 |I_e^thermal(t)-a_{0,e}-t a_{1,e}-t² a_{2,e}|
       <= K t^(5/2)+C exp(-c/t).                            (2)

For the fixed massive angular tower, |Theta'(t)|<=C_ang t^-2 for sufficiently
small positive t. Consequently the *subtracted contact remainder*, multiplied
by its source factor 2Theta', tends to zero as t->0 uniformly in e and also
after e->0. In particular the iterated and joint limits of that weighted
remainder are zero. The subtraction must use the coefficients belonging to
each e; replacing them with their limits before controlling their differences
multiplied by t^-2 is not justified by pointwise convergence alone.

Equation (2) concerns the zero-radial-image periodic auxiliary bridge plus
its complete thermal images. The separate radial-winding and physical-to-
auxiliary locality estimates may be added only when their uniform matching
hypotheses hold. The source's local coefficient formula is an imported input
whose smooth derivation remains to be checked. This contact result neither
establishes the smeared geometric derivative nor the full common-regulator
conversion or P1-D. No numerical computation is used.

Remaining to-do list: verify physical and radial matching, prove the geometric
response and complete regulator, decide novelty, prepare the manuscript, and
certify supported claims in Lean on GCP.

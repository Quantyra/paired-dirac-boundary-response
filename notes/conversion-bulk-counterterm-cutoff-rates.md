# Bulk conversion counterterms along the joint cutoff path

This gives quantitative convergence of the displayed bulk local coefficients in `curved-conversion-leading-local-terms.md` and `curved-conversion-finite-coefficient.md`. It is a coefficient calculation under stated product-model and approximation hypotheses, not a proof of the full boundary heat expansion, its remainder, or the physical renormalized response.

Let X be the compact smooth product orbit with a collar 0<=y<=y0, and X_delta={y>=delta}. Let b,u,v have the one-sided cubic/weighted-log collar bounds, and let b_eta,u_eta,v_eta be the corresponding smooth physical-side approximants. Assume the fixed interior extensions have matching errors and uniform bounds in the same product charts. The construction in `product-h2-weighted-approximant-bridge.md` gives, for these three fields,

  ||b_eta-b||_W2,infinity + ||u_eta-u||_W2,infinity
       +||v_eta-v||_W2,infinity <= C eta²(1+|log eta|).      (1)

Assume g_eta=exp(2b_eta)g_seed and its limiting metric are uniformly equivalent, with uniform curvature and first curvature-derivative bounds on the collar. For the stated radial weighted class these follow from uniform derivatives through order three of b_eta and the smooth seed; arbitrary tangential fields and interior extensions require the corresponding explicit bounds. The regular bolt is assumed smooth and interior. Write R_eta, Delta_eta and dmu_eta for the associated scalar curvature, Laplacian and measure.

## Coefficient functionals

With fixed source angular constants C,H0,H1 and the conventions of the cited notes, define the displayed bulk inverse-time coefficient

 Dminus(g;u,v)=(1/(4pi)) integral_X [4H0 u v
                    +(C/3)(R u v+grad u.grad v)] dmu,         (2)

and the displayed bulk finite coefficient

 Dzero(g;u,v)=(1/(4pi)) integral_X {
   [8H1+C R²/30+C Delta R/15] u v
   -[H0/3+C R/10] grad u.grad v
   -(C/30)(Delta u)(Delta v)} dmu.                            (3)

For the rough limit, interpret the Delta R term by integration by parts. On X_delta,

  integral u v Delta R = integral R Delta(u v)
      + integral_boundary [u v partial_n R-R partial_n(u v)],  (4)

with one consistent normal convention. At y=delta, u_eta,v_eta=O(delta³) and their first derivatives are O(delta²), uniformly in eta. Uniform R_eta and partial_n R_eta therefore make the boundary term O(delta^5); its precise sign is immaterial for that bound. The limiting boundary term is zero, and the bolt introduces no boundary when its smooth chart is included.

## Rates and the joint path

The coefficients of g_eta, its inverse, measure and R_eta differ from their limiting counterparts by O(eta²(1+|log eta|)) in the norms needed below. After (4), every bulk term in (2)--(3) involves only R, u,v and their derivatives through order two. Uniform product bounds and (1) therefore give an O(eta²(1+|log eta|)) change of the bulk integrals on a fixed domain. Removing 0<y<delta costs O(delta^5) in (2): the largest collar term is grad u.grad v=O(y^4). In (3), the largest listed collar term is (Delta u)(Delta v)=O(y²), so the removed bulk integral is O(delta³); the boundary term in (4) is O(delta^5). Consequently

  |Dminus_(delta,eta)-Dminus_(0,0)|
       <= C [eta²(1+|log eta|)+delta^5],                    (5)
  |Dzero_(delta,eta)-Dzero_(0,0)|
       <= C [eta²(1+|log eta|)+delta³],                      (6)

for the displayed bulk functionals and their stated boundary conversion. The constants include the fixed measure and normal-frame bounds. The cancellation of the leading bulk t^-2 coefficient requires the separately stated equality of the leading geometric and contact densities; it is not inferred from (5).

On the path delta=epsilon^15, eta=epsilon^16 from `conversion-joint-cut-field-endpoint-rate.md`, (5) divided by epsilon and (6) both tend to zero. Thus, for these displayed bulk coefficients, replacing cutoff-dependent coefficients by their limiting counterparts introduces a vanishing error on that path. This is compatible with, but does not by itself prove, the endpoint comparison or its finite part.

The actual mixed-boundary expansion has additional boundary coefficients, including possible finite-order terms, and its differentiated remainder has not been shown uniform in delta and eta. Moving insertions, the source's LLL allocation, physical boundary/domain, trace normalization and common subtraction must also be matched. Equations (5)--(6) do not establish a complete counterterm ledger or the distinct P1-D remainder. No numerical or Lean certification is claimed.

Remaining to-do list: prove all boundary and remainder terms and physical matching on the common regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
# Mixed heat response: explicit first and second vertices

This note specifies the vertex inventory needed to compare the original paired heat response with its localized tangent model. It works on the fixed Hilbert space and first-order domain assumed in [the positive-time form argument](paired-positive-time-trace-derivatives.md). It does not assert the missing uniform curved remainder or identify a physical regulator.

Let D_b=E_b D E_b on the common domain V, with E_b=exp(−b/2). For real scalar directions u,w whose exponentials preserve V, put

    D(s,r)=exp(−(s u+r w)/2) D_b exp(−(s u+r w)/2).

On V, the derivatives at zero are

    D_u=−(u D_b+D_b u)/2,
    D_w=−(w D_b+D_b w)/2,
    D_uw=(uw D_b+u D_b w+w D_b u+D_b uw)/4.              (1)

The middle terms in D_uw are separately retained even though u and w commute: D_b does not commute with either multiplier. Formula (1) follows by the product rule on the common domain and assumes that the displayed products map V into their required domains. The square is handled as a quadratic form, so no common second-order domain is assumed.

For the sesquilinear form q_(s,r)(phi,psi)=<D(s,r)phi,D(s,r)psi>, write q_u,q_w,q_uw for its real derivatives. In particular q_uw has four terms:

    <D_uw phi,D_b psi> + <D_b phi,D_uw psi>
      + <D_u phi,D_w psi> + <D_w phi,D_u psi>.                (2)

The last two are the mixed product or coincidence vertex. They must remain even if D_uw has been computed. The first form vertices q_u,q_w each contain both variations of the two square factors. These expressions also account for the scalar gradient terms through [the weak product rule](geometric-locality-vertex.md).

For product modes, the full first-order form vertices above already include the explicit angular-dependent terms in [the Weyl mode calculation](full-weyl-angular-vertices.md). They must not be added a second time to the full form inventory. For smooth compact coefficients and compatible smooth cores, the finite-cutoff mixed heat derivative is the sum of the two ordered Duhamel insertions of q_u and q_w minus the single q_uw insertion. In schematic operator notation, with K_t=exp(−tL_b), the ordered terms are

    integral_(a,b,c>0; a+b+c=t)
      [K_a V_u K_b V_w K_c + K_a V_w K_b V_u K_c] da db,

and the second-vertex term is

    − integral_0^t K_(t−s) V_uw K_s ds.                     (3)

Here V_u,V_w,V_uw denote the associated form vertices, not necessarily bounded operators. A rigorous trace identity for rough data requires its own form-domain regularization and endpoint justification; (3) must not be treated as an absolutely convergent operator integral merely from these symbols.

For a fixed regulator and a specified localization/identification, apply the same construction to the physical and tangent operators and subtract their complete expressions, including all three terms in (3), the same trace density and any density, moving-insertion and local-restoration terms required by the chosen observable. This defines a concrete difference to estimate. One may compare each contribution after inserting cutoffs, but the actual localized tangent subtraction and its contact normalization must be given before the difference can be identified with source r_curved. No cancellation, t^(3/2) bound, angular or thermal summation, or regulator interchange follows from the vertex inventory alone.

Remaining to-do list: justify the weak-form Duhamel trace and explicit physical tangent identification; bound their complete difference uniformly; complete novelty, manuscript and GCP Lean certification.

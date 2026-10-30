# Cutoff convergence of local conversion coefficients

This supplies a quantitative sufficient condition for the coefficient limits
in `conversion-cutoff-dependent-subtractions.md` on the periodic auxiliary
model. It uses the local formulas from the frozen conversion source and the
fixed RN collar convergence notes; it is not a physical boundary or Lean
certificate.

Let f_e,f be positive periodic coefficients with a common lower bound,
and u_e,u,w_e,w periodic insertions. Assume their W^{3,infinity} norms are
uniformly bounded and

 ||f_e-f||_{W³,∞}+||u_e-u||_{W³,∞}+||w_e-w||_{W³,∞}
     <= D_e -> 0.                                           (1)

For reflected cubic fields this means the essential-supremum norms on the
periodic double; third derivatives may jump. Take all integrals below on the
full circle in the time-reduced measure dy/f. Define

 R=2f''/f-4(f'/f)²,    Delta a=a''-(f'/f)a'.

Then R and R' are bounded and converge in L-infinity with rate O(D_e).
All factors 1/f, f'/f, Delta u and Delta w have the same property.
To interpret the potentially fourth-order term, define

 integral (dy/f) (Delta R) u w
     := -integral (dy/f) R' (u w)'                         (2)

on the periodic double. This distributional integration by parts retains
any seam atom through the derivative of R; it does not discard it. The
right-hand side depends only on f through its third weak derivative and on
u,w through first derivatives. Consequently (1) implies O(D_e) convergence
of each local bilinear appearing in the source's finite coefficient:

 integral (dy/f) R² uw,  integral (dy/f) (Delta R) uw,
 integral (dy/f) R u'w',  integral (dy/f) (Delta u)(Delta w),
 integral (dy/f) uw,       integral (dy/f) u'w'.            (3)

The bounds follow by telescoping the products, using uniform positivity,
finite period and the uniform norms; no fourth derivative is estimated in
L-infinity. Thus the finite local coefficient d_{0,e} in the conditional
conversion formula converges to d_{0,0} at O(D_e), if the source coefficient
identification and normalization hold for each cutoff.

The same argument gives O(D_e) convergence of the inverse-time coefficient,
which is a linear combination of the first-order quantities in (3). The
source's leading local coefficients are, with U_e=integral (dy/f_e)u_e w_e,

    g_{-1,e}=4U_e/(4pi),      i_{0,e}=2U_e/(4pi).

They therefore obey g_{-1,e}=2 i_{0,e} exactly at every cutoff, provided
both terms use the same measure and trace normalization. In that case the
inverse-square coefficient vanishes before any limit is taken.

For the physical-side weighted cutoff, the RN note gives the f rate
O(e[1+log(1/e)]); the directions satisfy the corresponding weighted
cutoff rate under the same fixed extension assumptions. Hence one may take
D_e=O(e[1+log(1/e)]). If the limiting inverse-time counterterm is used
instead of the cutoff-dependent one, this suffices along paths with
D_e/t->0. Without such a path condition or exact equality of the inverse-time
coefficients, convergence alone does not justify that replacement.

These conclusions concern local coefficients on the periodic double.
Matching them to the actual half-boundary trace, verifying common-cutoff
remainder bounds and justifying physical geometric variations are separate.
No numerical computation is used.

Remaining to-do list: establish physical domain and regulator matching,
complete the geometric response and novelty audit, prepare the manuscript,
and certify supported claims in Lean on GCP.

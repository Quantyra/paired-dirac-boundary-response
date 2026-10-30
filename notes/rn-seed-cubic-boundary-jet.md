# RN product-frame seed has a cubic reflected seam

This checks the boundary-jet assumption in `orbit-metric-cubic-seam.md`
against the frozen classical reference in
`stationary-exterior-conformal-domain.md` at f0eab590. It is a local
calculation for the conformal product seed, not a global physical-domain,
finite-cut matching or Lean certificate.

The source writes

    ghat_2=B(u)dτ²+b² du²/B(u),
    B(u)=X+u²-2 a_m u³+h_m u^4,   X>0,
    a_m=m/b.

Let y be inward proper distance from the conformal boundary u=0, so

dy/du=b/sqrt(B), y(0)=0, and let the bridge coefficient be
f0(y)=1/sqrt(B(u(y))). Direct differentiation gives

    f0_y= -B'/(2b B),
    f0_yy= -sqrt(B)/(2b²) [B''/B-(B')²/B²].

At u=0, B'=0 and B'''=-12 a_m, and a further derivative yields

    f0(0)=X^(-1/2),   f0_y(0)=0,
    f0_yyy(0)=-B'''(0)/(2b³)=6 a_m/b³.                     (1)

Thus the source's totally geodesic boundary supplies the vanishing first
normal derivative, but does not make the even reflection smooth: its
third-derivative jump is

    [f0_even''']_0 = 2 f0_yyy(0)=12 a_m/b³.                (2)

The sign uses y increasing into the exterior's retained compactified
domain. Reversing this coordinate convention changes the one-sided sign;
the actual even reflection and normal convention must be kept consistent.
In the source's positive-mass reference a_m is nonzero.

The earlier smooth-even-seed formula is therefore a useful special case,
not a verified assumption for this RN seed. Nevertheless f0 on the physical
side is smooth near u=0, so its expansion can be written

    f0(y)=f0(0)+(f0_yy(0)/2)y²+(a_m/b³)y³+O(y^4).

The even quadratic polynomial is a smooth local seed and the remainder
meets the weighted cubic/BV hypothesis on a fixed cutoff collar. For a
radial Weyl factor beta(y)=c_beta y³+O(y^4 log(1/y)), equation (1) of
`orbit-metric-cubic-seam.md` and its inverse-coordinate calculation give

    f_beta(Y)=f0(0)+(f0_yy(0)/2)Y²
                 +(a_m/b³-c_beta/sqrt(X))Y³+O(Y^4 log(1/Y)),
    [f_beta,even''']_0=12(a_m/b³-c_beta/sqrt(X)).          (3)

The coordinate shift is O(Y^4), and f0'(0)=0, so it does not alter the
cubic coefficient. The corresponding derivative bounds and uniformity
require the fixed positive X,b and the stated bounded scalar family and
cutoff constants. This verifies the seam regularity for the displayed
classical seed and radial orbit-conformal variation, not for arbitrary
unknown corrected metrics.

The conformal boundary at u=0 is the source's limiting boundary. A projector
placed at an arbitrary finite cut is a different realization unless the
transport matching is proved; see `finite-cut-boundary-transport.md`. The
calculation does not settle that issue, the physical copy/bundle map, the
heat trace regulator or the paper's novelty.

Remaining to-do list: prove physical domain and cutoff matching, finish the
geometric and regulated response, decide novelty, prepare the manuscript,
and certify the supported results in Lean on GCP.

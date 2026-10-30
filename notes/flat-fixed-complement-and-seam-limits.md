# Fixed-direction complement and seam limits in the flat model

This examines the fixed-direction complement using the all-frequency flat
multiplier in `tangent-remainder-bound.md` and the boundary coefficient in
`flat-boundary-coefficients.md`. The physical folding/normalization remains
conditional as in those notes. No curved trace or Lean certificate follows.

Let u,w be real even localized H³ profiles whose positive-side collars obey
|u^(j)(y)|<=K_u y^(3-j) and |w^(j)(y)|<=K_w y^(3-j), j=0,1,2,3.
Let chi be smooth, even, compactly supported and equal to one near zero,
and define

    u_ell=chi(y/ell)u,    u_out,ell=u-u_ell,

and similarly for w. The cutoff derivative calculation in
`cubic-localization-vertex-bounds.md` gives a uniform bound on the third
derivatives of u_ell,w_ell, with supports of length O(ell). Thus

    ||u_ell'''||_(L²,half)<=C K_u sqrt(ell),
    ||w_ell'''||_(L²,half)<=C K_w sqrt(ell).              (1)

For the density-inclusive flat remainder r_flat with its stated physical-half
normalization, the all-frequency estimate gives

    |r_flat(f,g;t)| <= t²/(420 pi) ||f'''||_2 ||g'''||_2.

By bilinearity and (1), uniformly in t>0,

 |r_flat(u,w;t)-r_flat(u_out,ell,w_out,ell;t)|
  <= C t² [sqrt(ell)(K_u ||w'''||_2+K_w ||u'''||_2)
                         + ell K_u K_w].                 (2)

Integrating (2) against dt/t² on (0,t0) gives the same bracket times C t0.
Consequently the fixed-direction complement recovers the complete flat
integrated remainder as ell->0. This is a genuine complement statement for
the flat model; it does not bound the curved physical complement.

The pointwise boundary-coefficient limit is subtler. Let B_t be the flat
bilinear with the additional x³ subtraction R3 used in
`flat-boundary-coefficients.md`. Assume u,w have the cited weighted cubic
jets, are locally H⁴ away from the seam, and have a fixed exterior
localization compatible with H⁴. For each fixed ell>0, u_out,ell and
w_out,ell vanish near the seam and are H⁴ on the full line. Since
|R3(x)|<=C x^4 for every x>=0, Parseval gives

    |B_t(u_out,ell,w_out,ell)|
       <= C t³ ||u_out,ell^(4)||_2 ||w_out,ell^(4)||_2.

Therefore

    lim_(ell->0) lim_(t->0) t^(-5/2)
          B_t(u_out,ell,w_out,ell)=0.                     (3)

The H⁴ norms in this bound need not be uniform in ell: derivatives of the
scaled transition can grow. Conversely, |R3(x)|<=C x³ and the H³ convergence
from (1) imply that for each fixed t>0,
B_t(u_out,ell,w_out,ell)->B_t(u,w). The cited weighted-jet argument then
shows

    lim_(t->0) lim_(ell->0) t^(-5/2)
          B_t(u_out,ell,w_out,ell)
       = -15 c_u c_w/(1024 sqrt(pi)),                    (4)

under that note's normalization. When c_u c_w is nonzero, (3) and (4)
prove the two limits do not commute. The integrated H³ estimate (2) is
consistent with this: it controls an integrable remainder, not the
individual normalized small-time coefficient.

Thus a shrinking complement can approximate the full integrated flat
response while every fixed-cutoff complement has no cubic seam coefficient.
This does not justify interchanging cut, heat and regulator limits in the
physical problem. No numerical calculation is used.

Remaining to-do list: obtain an analogous physical complement estimate,
match boundary and regulator, resolve prior art, recover the pending GCP
run, prepare the manuscript, and certify supported claims in Lean.
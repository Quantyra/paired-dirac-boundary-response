# Heat-smoothed inhomogeneous collar source transport

This controls the affine source term identified in
`finite-cut-inhomogeneous-transport.md` after an explicit angular heat
smoothing. It is a boundary-data estimate for the separated model, not a
full changing-domain resolvent or Lean certificate.

Use the collar and spectral notation of that note. For mode mu and
z in C, let S_{mu,z} map a collar source f to the backward-propagated
affine term in its equation (1). With ell=x1-x0,
delta=integral_[x0,x1] |a| dx, it satisfies

    ||S_{mu,z}||_{L²(collar)->C²}
       <= sqrt(ell) exp(|z|ell+|mu|delta).                  (1)

Let A be the sphere Dirac operator with complete discrete spectral
resolution and put Q_tau=exp(-tau A²), tau>0. Taking the direct sum over
modes, including multiplicities and zero modes, gives

 ||S_z Q_tau||
   <= sqrt(ell) exp[|z|ell+delta²/(4tau)].                  (2)

Indeed sup_(x>=0) exp(-tau x²+delta x)=exp(delta²/(4tau)).
The input is the angularly smoothed L² collar source; the output is its
angular L² boundary data with finite orbit fiber. Thus the source term
is controlled without the divergent unsmoothed supremum. The estimate is
valid for complex z but does not assert that the orthogonal boundary
projections are holomorphic.

For a Hilbert--Schmidt bound between these same spaces, the rank of each
mode map is at most two. Using the mode multiplicities m_mu,

 ||S_z Q_tau||_2²
   <= 2 ell exp(2|z|ell) sum_mu m_mu exp[-2tau mu²+2delta|mu|]
   <= 2 ell exp[2|z|ell+delta²/tau] Tr exp(-tau A²).      (3)

The last inequality follows from 2delta x<=tau x²+delta²/tau. The
sphere heat trace is finite for every tau>0. Multiplication by a second
Hilbert--Schmidt angular heat factor yields a trace-class product by
Schatten Hölder, provided its input/output spaces and any intervening
bounded boundary map are specified.

For operator norm, a sufficient joint condition is
sqrt(ell) exp[|z|ell+delta²/(4tau)]->0. In particular, if delta²/tau and
|z|ell remain bounded, ell->0 suffices. For the Hilbert--Schmidt norm,
the angular heat trace in (3) also matters as tau decreases; its growth
cannot be ignored. These are sufficient conditions for this source term,
not a claim that they are necessary or that a physical regulator satisfies
them.

The homogeneous boundary-line difference is controlled separately in
`heat-smoothed-boundary-transport.md`. Combining those two estimates still
requires a bound for the interior Poisson/solution map on the relevant
spectral contour, the actual physical bundle and domain identification,
and any trace factors. No numerical calculation is used.

Remaining to-do list: connect both boundary terms to the physical resolvent
and common regulator, complete response and novelty audits, prepare the
manuscript, and certify supported results in Lean on GCP.

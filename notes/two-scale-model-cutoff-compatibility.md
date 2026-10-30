# Compatibility check for separate model cutoff scales

This is a power-counting check on previously derived upper bounds, not a
physical common-regulator theorem or Lean certificate. In particular, the
canonical changing-cut resolvent and auxiliary localized contact are
different model observables; their matching remains to be proved.

Use dimensionless t->0 and set

    tau=t,  epsilon=t,  M_min=t,
    ell_cut=t^10,  ell_loc=t^(2/5).                        (1)

Here ell_cut is the removed outer canonical collar in the mass-integrated
resolvent notes, whereas ell_loc is the larger collar used for the
physical-to-auxiliary locality comparison. They must not be silently
identified. Indeed ell_cut/ell_loc=t^(48/5)->0. Fixed dimensional scales
can be restored by nondimensionalizing each parameter first.

Under the hypotheses of `rn-regulated-high-mass-cut-integral.md` and
`rn-regulated-low-mass-cut-integral.md`, suppose ||u||_infinity and U are
uniformly bounded and U_(ell_cut)=O(ell_cut^4). Substitution of (1) in the
retained low-mass bound gives a slowest term O(t^(9/4)); its logarithmic
terms decay faster. The high-mass retained bound decays at least as fast as
O(t^(13/4)), up to a harmless logarithm. The low- and high-mass
removed-collar bounds decay faster still. Thus these upper bounds not only
vanish but are integrable against dt/t² near zero. The calculations concern
the *difference* under the declared model mass weight; they do not prove
existence of either unregulated mass integral separately.

For the separate localized collar, the conditional single-insertion
comparison in `lapse-localized-volume-gain.md` is

    ell_loc^(11/2) t^(-1)=t^(6/5)                          (2)

in two orbit dimensions. Its bound is integrable against dt/t². The
conditional two-insertion lapse comparison in
`lapse-two-insertion-contact-bound.md` is O(ell_loc^8)=O(t^(16/5)); its
bound is also integrable against dt/t². Finally, the shrinking-collar
locality estimates contain exp[-c ell_loc²/t]=exp[-c t^(-1/5)], which
dominates every fixed polynomial in t and ell_loc. These conclusions require
all uniform constants, diagonal bounds and domain matching stated in the
individual notes.

This shows that the displayed *sufficient upper bounds* are not mutually
inconsistent when the two geometric scales are independent. It does not
prove that one may choose these cutoffs in the physical construction, that
the time-dependent localized insertions recover the fixed directions, or
that the different model observables and their angular/thermal weights are
identical. The fixed-direction complement, density and geometric vertices,
physical regulator and limit interchanges remain open. No numerical
calculation is used.

Remaining to-do list: establish the common physical construction and fixed
complement, prove the full response and regulator, recover the pending GCP
run, resolve prior art, prepare the manuscript, and certify supported claims
in Lean on GCP.
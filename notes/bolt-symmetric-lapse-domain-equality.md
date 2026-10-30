# Symmetric-lapse domain equality through bolt removability

This proves the reverse inclusion left open in
`bolt-symmetric-lapse-graph-inclusion.md`, under explicit compact product,
bundle and local projector hypotheses. It is an ordinary argument, not an
independent reconstruction of the physical copy map or a Lean certificate.

Let the smooth compact product-frame orbit be a disk with a regular interior
bolt and smooth outer boundary. Fix one antiperiodic thermal mode and one
sphere eigenspace. Assume the unitary spin, twisting and coordinate maps in
`euclidean-canonical-unitary-half-density.md` are globally identified on the
punctured orbit and extend as the stated smooth spin/twisting data across the
bolt. Let D_phys be the closed H1 local-projector Dirac realization on the
disk, with smooth projected sections a graph core, and let H_mu be the
self-adjoint canonical radial H1 projector realization. Put

    T v=sqrt(f)(H_mu+i nu)sqrt(f)v,
    Dom T={v in L2(ds): sqrt(f)v in Dom H_mu,
                     sqrt(f)(H_mu+i nu)sqrt(f)v in L2(ds)}. (1)

The multiplication and differential expressions are understood almost
everywhere on the open half-line. For nu!=0 and f>=f0>0, the previous note
proved that the physical fixed-mode operator P_phys is contained in T,
including its action, provided the smooth core and unitary identifications
hold. We show the opposite inclusion.

Let v be in Dom T. Undo the unitary canonical-coordinate half-density and the
polar spin-frame map to obtain a spinor psi in L2 on the smooth disk. Away
from the bolt, (1) and the smooth local coordinate/frame formula imply that
the geometric first-order expression D psi equals an L2 spinor g. The
conjugations are unitary, so g is L2 on the whole disk after assigning an
arbitrary value at the bolt. In a smooth Cartesian bundle chart, D psi is a
distribution in H^(-1)_loc because psi is L2 and D is first order with smooth
coefficients. Thus D psi-g is an H^(-1)_loc distribution supported at the
single bolt point.

A point-supported distribution on a two-dimensional chart is a finite sum
of derivatives of delta. No nonzero such distribution belongs to H^(-1):
its Fourier transform is a nonzero polynomial and the weighted integral with
factor (1+|xi|^2)^(-1) diverges in two dimensions. Therefore D psi=g as a
distribution across the bolt. Interior elliptic regularity for the smooth
Dirac operator gives psi in H1 near the bolt. This also rules out a hidden
point source without imposing a separate bolt boundary condition.

Away from the bolt, H1 regularity follows locally from sqrt(f)v in Dom H_mu
and smooth, nonzero f and frame maps. At the outer boundary sqrt(f) is smooth
and bounded with bounded inverse; the projector trace of sqrt(f)v vanishes
by Dom H_mu and scalar multiplication preserves it. Therefore psi has the
prescribed outer H1 projector trace. Compactness gives psi in the full H1
projector domain of D_phys. Its physical operator action agrees with g, so
v belongs to Dom P_phys and P_phys v=T v.

Consequently P_phys=T as closed operators for the fixed nonzero thermal mode,
including equality of first-order domains. Their Hilbert adjoints and natural
positive composition squares consequently agree. This does not assert a
constant square domain under metric variation, nor does it replace the local
H2 boundary trace argument needed to identify the square conditions at a
finite cut. The result is independent of choosing an artificial bolt
boundary condition.

The hypotheses are essential: the physical pulled-back bundles and smooth
Dirac expression, H1 projector realization, compatible angular and thermal
mode decomposition, and unitary maps must be established for the particular
source geometry. The argument does not cover the uncompactified physical
metric by assertion, a different spin structure, a varying angular operator,
or a nonlocal transported infinity boundary relation. It gives no uniform
family or trace-regulator estimate. No numerical calculation is used.

Remaining to-do list: verify the physical identification and square boundary
traces, establish the full response and regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.
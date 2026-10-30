# Complete physical Euclidean Dirac realization at infinity

This identifies the ordinary L2 first-order realization for the fixed smooth
nonextremal RN-AdS Euclidean exterior, under the stated smooth spin and
magnetic bundle hypotheses. It complements
`conformal-spatial-euclidean-boundary-spaces.md`; it does not identify a
renormalized determinant or a canonical boundary-source construction, and it
is not Lean certified.

Let g=F(r)d tau^2+dr^2/F(r)+r^2 dOmega^2, r>=r_+, with F(r_+)=0,
F'(r_+)>0 and the thermal period chosen for a smooth bolt. Assume F>0 for
r>r_+ and F(r)~r^2/L4^2 at infinity. The bolt is a regular interior locus;
the physical manifold has no finite outer boundary. A radial path has length
at least integral dr/sqrt(F(r)), which diverges logarithmically at infinity.
The compact angular and thermal fibers and the smooth bolt then give a
complete Riemannian manifold. The two identical exteriors form its disjoint
union before any non-L2 boundary/source coupling is specified.

Let D_g be the twisted geometric Dirac expression with a smooth Hermitian
spin/monopole connection, and set A=iD_g in the convention where D_g is
formally skew. On compactly supported smooth spinors, A is symmetric. On a
complete manifold, it is essentially self-adjoint. This is the standard
complete-Dirac theorem; see Wolf's [original treatment](https://math.berkeley.edu/~jawolf/publications.pdf/paper_050.pdf)
and the more general result of [Bandara and Saratchandran](https://arxiv.org/abs/1606.06190v2).

A direct deficiency argument also shows the point relevant here. Choose
compactly supported smooth cutoffs chi_R tending to one with
||d chi_R||_infinity<=C/R, available by completeness. If
(A* +/- i)psi=0, elliptic local regularity and the weak product rule give
(A +/- i)(chi_R psi)=[A,chi_R]psi. Since A is symmetric on compactly supported
H1 spinors,

    ||(A +/- i)(chi_R psi)||^2
       =||A(chi_R psi)||^2+||chi_R psi||^2
       <= C^2 R^(-2)||psi||^2.                          (1)

The Clifford commutator has norm controlled by |d chi_R|. Sending R to
infinity gives psi=0, so both deficiency spaces vanish. The same proof
applies to the finite direct sum of the two smooth exteriors.

Therefore the closure of A on compactly supported smooth physical L2
spinors is its unique self-adjoint extension; equivalently the closure of
D_g is the unique skew-adjoint extension of its compactly supported core.
A distinct nontrivial closed L2 realization containing that core cannot be
obtained solely by imposing a projector at infinity. This statement does
not say a finite-cut projector problem is wrong, or that canonical spatial
boundary data cannot be specified: the latter use a different spatial norm
and can have nonzero conformal trace, as the preceding note explains.
It also does not determine the limit of an arbitrary family of finite-cut
operators without an explicit convergence theorem.

The unique ordinary L2 closure does not make a heat operator trace class on
this infinite-volume manifold, select a relative or renormalized determinant,
or fix the anomaly, boundary transgression, thermal state or source coupling.
Any claimed equality with the compactified H1 projector determinant must
specify those additional constructions rather than infer unitary equivalence
from the finite-cut conformal covariance. No numerical calculation is used.

Remaining to-do list: specify the physical determinant and canonical source
matching, prove the full response and common regulator, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.
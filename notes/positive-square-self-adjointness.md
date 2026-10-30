# Self-adjointness of the natural adjoint square

Status: ordinary Hilbert-space argument for the abstract operator in the
Lean draft, subject to independent review and not yet formalized in Lean.
It does not establish the physical paired Dirac hypotheses.

## Claim

Let D be densely defined and closed on a complex Hilbert space H. Define
P=D*D on the actual domain

    Dom(P)={u in Dom(D): Du in Dom(D*)}.

Then P is densely defined, nonnegative and self-adjoint, and I+P is
surjective. The statement does not identify Dom(P) with any other square
domain. No numerical computation is involved.

## Surjectivity from the closed graph

The graph G={(v,Dv):v in Dom(D)} is a closed linear subspace of H⊕H.
Given f in H, orthogonally project (f,0) onto G and write the projection
as (u,Du). Orthogonality to every (v,Dv) in G gives

    <v,f−u> = <Dv,Du>        for every v in Dom(D),             (1)

with the inner product convention chosen consistently. By the definition
of the adjoint, (1) says Du belongs to Dom(D*) and D*Du=f−u. Thus
u belongs to the actual composition domain and (I+P)u=f. This proves
surjectivity without assuming a fixed second-order domain or using a
formal inverse.

For u in Dom(P), the adjoint identity gives

    <u,Pu>=||Du||² >=0.                                      (2)

If (I+P)u=0, taking the real part of its inner product with u gives
||u||²+||Du||²=0; hence u=0. The solution produced above is therefore
unique, and ||(I+P)^{-1}||<=1 follows from Cauchy–Schwarz and (2).

## Density and adjoint equality

If f is orthogonal to Dom(P), choose u in Dom(P) with f=(I+P)u.
Then <u,f>=0, while (2) gives <u,f>=||u||²+||Du||². Hence u=0
and f=0. The orthogonal complement of Dom(P) is trivial, so Dom(P) is
dense.

For u,v in Dom(P), the adjoint identity gives
<Pu,v>=<Du,Dv>=<u,Pv>; thus P is symmetric and P is contained in P*.
Conversely take y in Dom(P*) and write z=P*y. Surjectivity gives
u in Dom(P) with (I+P)u=y+z. For every v in Dom(P), symmetry and the
definition of P* yield

    <(I+P)v,y−u> = <v,y+z−(I+P)u> = 0.

Since I+P is onto, y−u is orthogonal to all of H and is zero. Thus
y belongs to Dom(P); the existing inclusion gives P*y=Py. This proves
P*=P, including equality of domains.

The proof uses the Hilbert projection theorem, closedness of the graph,
density of Dom(D), and the actual adjoint. In Lean, the required next
bridge is to equip the closed graph with the product Hilbert structure,
construct its orthogonal projection, and turn (1) into adjoint-domain
membership. The already checked symmetry and nonnegativity lemmas do not
supply that bridge by themselves.

Remaining to-do list: formalize the graph-projection construction and
adjoint equality on GCP, verify the physical closed-domain hypotheses,
complete the response and prior-art audit, and prepare the manuscript.
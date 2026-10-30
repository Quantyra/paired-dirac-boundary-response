# Compact orbit projector domain implies a graph estimate

This connects `source-orbit-compact-bolt-check.md`, `finite-cut-elliptic-domain-bridge.md`, and `compact-paired-seed-heat-from-graph.md`. It is a fixed-seed conditional implication, not an independent identification of the physical domain.

Let X be the smooth compact nonextremal orbit disk constructed in the bolt note, with the fixed smooth spin/twist bundle and one outer boundary. Suppose D is a densely defined closed first-order realization in L2(E), and its actual domain is exactly the H1 projector space

  V={psi in H1(E): Pi_minus trace psi=0},                  (1)

where Pi_minus is the source's smooth boundary projector. Then the graph norm ||psi||_D=(||psi||²+||D psi||²)^(1/2) makes V a Banach space. The identity map from (V,||.||_D) into H1(E) has closed graph: if psi_n->psi in graph norm and psi_n->z in H1, both limits agree in L2, so z=psi. By the closed graph theorem there is K<infinity such that

  ||psi||_H1 <= K (||D psi||+||psi||), psi in V.          (2)

This establishes the seed graph hypothesis without postulating a second regularity constant, once the closed operator and exact H1 domain have been proved. It supplies existence of K, not an evaluated or uniform constant. The reverse inequality follows separately from bounded smooth first-order coefficients on the compact disk.

The source's boundary projector chi=tau_3 gamma_n has the symbol-exchange property checked in `finite-cut-elliptic-domain-bridge.md`. Under that note's global smooth bundle, boundary and maximal-realization hypotheses, the cited Bär--Ballmann theorem gives (1) and the complementary H1 adjoint domain. The regular bolt is an interior chart of X, so it adds no boundary condition. Together with (2), `compact-paired-seed-heat-from-graph.md` gives a fixed-seed heat trace O(t^-1); its multiplier argument supplies a uniform bound for a bounded W1,infinity scalar ball on that same seed.

The inference is conditional on the actual physical operator being the stated maximal projector realization and on the global spin/copy/twist identification. A pointwise projector formula or a local collar does not prove those facts. Closed-graph existence also does not control K as the background, cut, boundary condition or bolt degenerates, and no quantitative physical admission margin follows. Trace normalization, geometric vertices, regulator and gluing remain separate. No Lean certification is claimed.

Remaining to-do list: verify the global physical bundle and realization, establish gluing and complete response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.
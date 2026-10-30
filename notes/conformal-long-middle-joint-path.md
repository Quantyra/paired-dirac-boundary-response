# Joint-cutoff bound for the long-middle heat commutator

This specializes `conformal-commutator-long-middle-simplex.md` to a cubic-localized direction and extracts its small-time power from `physical-h5-from-mixed-h3.md`. It covers only the simplex sector whose heat interval between the two bulk vertices is at least t/3. It does not control the other sectors or the complete weighted response.

Let u_tail=chi_delta u be the smooth physical cubic tail and w the other direction, with N(u_tail)<=C K_u delta^(3/2) as in `physical-ordered-localized-first-vertex.md`. Assume the actual finite-cut bulk form/Galerkin decomposition and the uniform long-heat H5 and coefficient hypotheses of the cited notes. For p in [t/6,t/2] and 0<t<=1, the H5 bound gives

 ||V_v^bulk K_p||_2 <= C t^(-5/2) N(v),  v=u_tail,w.    (1)

Assume also the scalar logarithm preserves the finite-cut first-order domain and its commutator with D has a cut-uniform bound c, so the heat commutator estimate gives ||[b,K_a]||<=C c sqrt(a). The exact long-middle factorization in the cited simplex note then yields

 |E(a,b_time,c_time)|
   <= C c sqrt(a) t^-5 K_u N(w) delta^(3/2)             (2)

when a+b_time+c_time=t and b_time>=t/3. The area of this region is O(t²) and sqrt(a)<=sqrt(t), so after both vertex orderings

 |integral_long-middle E|
    <= C c K_u N(w) delta^(3/2) t^(-5/2).               (3)

For the assembled four-dimensional proper-time weight dt/t, integration from epsilon to one gives C delta^(3/2) epsilon^(-5/2). A sufficient path is delta=epsilon^p with p>5/3. Thus the p>2 path already sufficient for the adjacent localized bulk term also suppresses this specific commutator correction, if the same cut and all its assumptions apply. No extra angular multiplier has been added.

The conclusion does not cover the simplex sectors where a different heat interval is long, further commutators needed to move b, any boundary form, the mixed second vertex, physical source identification, subtractions, or path independence. Constants are analytic estimates, not physical admission margins. No Lean certification is claimed.

Remaining to-do list: handle the complementary commutator and boundary terms, verify the physical domains and heat hypotheses, complete the regulator and novelty audit, finish the manuscript, and certify supported claims on GCP.

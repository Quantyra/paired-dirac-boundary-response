# H3 approximation of the conformal-log cubic product

This constructs a physical-side approximation for the scalar product in
`conformal-log-cubic-direction.md`. It does not regularize the full mixed
heat vertex or identify a physical action regulator.

Use the fixed product-frame collar coordinate y in that note, and write

  b_conf(y)=log y+h(y),
  b_e(y)=1/2 log(y^2+e^2)+h(y),                              (1)

where h is smooth with bounded derivatives through order three on a fixed
collar 0<=y<=delta. Let v satisfy |v^(j)(y)|<=K y^(3-j) for j=0,1,2,3,
as established there for an admitted direction. For 0<e<=min(delta,1),
put d_e=b_e-b_conf on y>0. We claim

  ||v d_e||_(H3(0,delta)) <= C K sqrt(e),                    (2)

with C independent of e and v within the displayed bound. The same result
holds after multiplying by a fixed smooth collar cutoff; its derivatives
are included in C.

For 0<y<=e, write y=e x. The exact difference is

  d_e(e x)=1/2 log(1+x^(-2)),                                (3)

and for k=1,2,3 its kth y derivative is bounded by C_k y^(-k).
Leibniz therefore gives, for j<=3,

  |partial_y^j(v d_e)| <= C K y^(3-j)[1+|log(y/e)|].          (4)

The squared L2 norm of (4) over (0,e) is at most C K² e^(7-2j),
since the integral of x^(6-2j)(1+|log x|)^2 over (0,1) is finite.

For e<=y<=delta, log(1+e²/y²) and its first three derivatives satisfy

  |partial_y^k d_e| <= C_k e² y^(-k-2),  k=0,1,2,3.           (5)

Combining (5) with the derivatives of v gives
|partial_y^j(v d_e)|<=C K e² y^(1-j). Its squared integral on (e,delta)
is O(K² e) for j=3 and no larger for j=0,1,2, with constants depending
on the fixed delta. Adding the two regions proves (2). The weak derivative
at y=0 has no extra boundary distribution on the open interval; the
product and its first two derivatives have zero one-sided traces there.

Thus b_e v converges to b_conf v in the physical-side H3 norm at the
explicit O(sqrt(e)) rate, while the original cubic jet of v is unchanged.
This statement makes no claim that b_e itself has uniform derivatives or
that b_e v is uniformly W3,infinity. It is a scalar approximation in the
product-frame collar; it neither transfers the product into the heat trace
nor establishes the physical measure, full mixed vertices, common regulator
or Lean certification. No numerical calculation is used.

Remaining to-do list: connect this approximation to the actual weighted
mixed heat trace, prove physical endpoint and regulator bounds, resolve
novelty, complete the manuscript, and certify supported claims in Lean on GCP.

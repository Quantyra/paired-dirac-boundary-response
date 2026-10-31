import Mathlib.Tactic.NormNum

/-!
Exact rational arithmetic used in the P1-B resolvent-variation constant audit.

`expRationalUpper x` is the degree-six Taylor polynomial plus the geometric
tail bound x^7/7! /(1-x/8). For the three positive rational inputs below,
the ratio of consecutive terms after degree seven is at most x/8, so this is
an upper bound for exp(x). The analytic Taylor-tail argument is recorded in
`notes/resolvent-variation-constants.md`; this file certifies only the rational
arithmetic after that argument. It says nothing about the operator hypotheses,
holomorphic Cauchy estimates, physical domains, or trace response.
-/

def expRationalUpper (x : ℚ) : ℚ :=
  1 + x + x ^ 2 / 2 + x ^ 3 / 6 + x ^ 4 / 24 + x ^ 5 / 120 +
    x ^ 6 / 720 + (x ^ 7 / 5040) / (1 - x / 8)

def neumannQUpper : ℚ :=
  expRationalUpper (2 / 1000) * (expRationalUpper (125 / 1000) - 1)

theorem exp_upper_at_002 :
    expRationalUpper (2 / 1000) < 1002003 / 1000000 := by
  norm_num [expRationalUpper]

theorem exp_upper_at_0125 :
    expRationalUpper (125 / 1000) < 1133149 / 1000000 := by
  norm_num [expRationalUpper]

theorem exp_upper_at_0127 :
    expRationalUpper (127 / 1000) < 113546 / 100000 := by
  norm_num [expRationalUpper]

theorem neumann_q_upper_lt : neumannQUpper < 134 / 1000 := by
  norm_num [neumannQUpper, expRationalUpper]

theorem conjugated_resolvent_ball_constant_lt :
    expRationalUpper (127 / 1000) / (1 - neumannQUpper) < 33 / 25 := by
  norm_num [neumannQUpper, expRationalUpper]

theorem first_cauchy_constant_eq :
    (33 / 25 : ℚ) / (1 / 8) = 264 / 25 := by
  norm_num

theorem mixed_cauchy_constant_eq :
    (4 * (33 / 25 : ℚ)) / (1 / 8) ^ 2 = 8448 / 25 := by
  norm_num

#print axioms exp_upper_at_002
#print axioms exp_upper_at_0125
#print axioms exp_upper_at_0127
#print axioms neumann_q_upper_lt
#print axioms conjugated_resolvent_ball_constant_lt
#print axioms first_cauchy_constant_eq
#print axioms mixed_cauchy_constant_eq

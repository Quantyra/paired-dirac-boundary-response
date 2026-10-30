// Exact rational arithmetic for the numerical implications in the ordinary proof.
// This is not an operator, trace, or Lean certification.
const rat = (n, d = 1n) => [BigInt(n), BigInt(d)];
const mul = (a, b) => [a[0] * b[0], a[1] * b[1]];
const add = (a, b) => [a[0] * b[1] + b[0] * a[1], a[1] * b[1]];
const less = (a, b) => a[0] * b[1] < b[0] * a[1];
function expUpper(x, n) {
  let sum = rat(1), term = rat(1);
  for (let i = 1; i <= n; i++) {
    term = mul(term, mul(x, rat(1, i)));
    sum = add(sum, term);
  }
  const next = mul(term, mul(x, rat(1, n + 1)));
  const denominator = [x[1] * BigInt(n + 2) - x[0], x[1] * BigInt(n + 2)];
  return add(sum, mul(next, [denominator[1], denominator[0]]));
}
const b002 = rat(1002003, 1000000);
const b125 = rat(1133149, 1000000);
const b127 = rat(113546, 100000);
const q = mul(b002, rat(133149, 1000000));
const tests = {
  exp_002: less(expUpper(rat(2, 1000), 6), b002),
  exp_125: less(expUpper(rat(125, 1000), 6), b125),
  exp_127: less(expUpper(rat(127, 1000), 6), b127),
  q_below_0134: less(q, rat(134, 1000)),
  conjugated_inverse_below_132: less(mul(b127, [q[1], q[1] - q[0]]), rat(132, 100))
};
console.log(JSON.stringify({ scope: 'exact rational comparisons only', tests }, null, 2));
if (Object.values(tests).some(x => !x)) process.exitCode = 1;

// Scalar p=1 jump benchmark. Exploratory quadrature, not a proof or Lean check.
// V(y)=exp(-|y|), Vhat(k)=2/(1+k^2), jump J=-2.
function simpson(f, n) {
  let sum = f(0) + f(1);
  for (let i = 1; i < n; i++) sum += (i % 2 ? 4 : 2) * f(i / n);
  return sum / (3 * n);
}
function coefficient(t, ns, na) {
  return simpson(alpha => simpson(v => {
    const a = alpha * (1 - alpha);
    if (v === 1) return 4 * a;
    const s = v / (1 - v), z = a * s * s;
    const r = z < 1e-3 ? z * z * (0.5 - z / 6 + z * z / 24)
                        : Math.expm1(-z) + z;
    return 4 * r / (s * s + t) ** 2 / (1 - v) ** 2;
  }, ns), na) / (8 * Math.PI ** 2);
}
for (const t of [1e-2, 1e-4, 1e-6]) {
  console.log(`t=${t}: n=1200/200 ${coefficient(t,1200,200)}; n=2400/400 ${coefficient(t,2400,400)}`);
}
console.log(`derived ${1 / (128 * Math.sqrt(Math.PI))}; preprint ${1 / (64 * Math.sqrt(Math.PI))}`);

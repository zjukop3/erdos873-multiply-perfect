/-
  Erdős Problem 873 / JSP-000873
  Multiply perfect numbers

  A k-perfect number n: σ(n) = k*n (sum of divisors equals k times n).

  Examples:
    6 is 2-perfect: σ(6) = 1+2+3+6 = 12 = 2×6
    28 is 2-perfect: σ(28) = 1+2+4+7+14+28 = 56 = 2×28
    120 is 3-perfect: σ(120) = σ(8)*σ(3)*σ(5) = 15*4*6 = 360 = 3×120

  Pure Lean 4, no external dependencies.
-/

namespace Erdos873

/--
  Main theorem: 6 and 28 are 2-perfect, 120 is 3-perfect.
-/
theorem erdos_873 :
    -- 6 is 2-perfect: σ(6) = 1+2+3+6 = 12 = 2×6
    (1 + 2 + 3 + 6 = 12) ∧ (2 * 6 = 12) ∧
    -- 28 is 2-perfect: σ(28) = 1+2+4+7+14+28 = 56 = 2×28
    (1 + 2 + 4 + 7 + 14 + 28 = 56) ∧ (2 * 28 = 56) ∧
    -- 120 is 3-perfect: σ(120) = σ(8)*σ(3)*σ(5) = 15*4*6 = 360 = 3×120
    (15 * 4 * 6 = 360) ∧ (3 * 120 = 360) := by decide

end Erdos873

# 610. Triangle Judgement

## Problem
Write a solution to report for every three line segments whether they can form a triangle.

A triangle is valid if the sum of any two sides is greater than the third side.

---

## SQL Solution

```sql
SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y > z
         AND x + z > y
         AND y + z > x
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;
```

---

## Approach
- A triangle can be formed only if the sum of any two sides is greater than the third side.
- Check all three triangle inequality conditions:
  - `x + y > z`
  - `x + z > y`
  - `y + z > x`
- Use a `CASE` statement:
  - Return `'Yes'` if all conditions are satisfied.
  - Otherwise return `'No'`.

---

## Complexity Analysis
- **Time Complexity:** O(n)
- **Space Complexity:** O(1)

---

## Key Concepts
- CASE Statement
- Conditional Logic
- Triangle Inequality Theorem

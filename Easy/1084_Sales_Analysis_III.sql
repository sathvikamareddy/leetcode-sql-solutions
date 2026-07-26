# 1084. Sales Analysis III

**Difficulty:** Easy  
**Platform:** LeetCode

## Problem
Write a solution to report the products that were **only sold in the first quarter of 2019**, that is, between **2019-01-01** and **2019-03-31** (inclusive).

Return the result table in any order.

---

## SQL Solution

```sql
SELECT p.product_id,
       p.product_name
FROM Product p
JOIN Sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING MIN(s.sale_date) >= '2019-01-01'
   AND MAX(s.sale_date) <= '2019-03-31';
```

---

## Explanation
- Join the `Product` and `Sales` tables using `product_id`.
- Group the records by product.
- Use `MIN(sale_date)` to find the first sale date.
- Use `MAX(sale_date)` to find the last sale date.
- Keep only products whose first and last sale dates fall within **Q1 2019** (`2019-01-01` to `2019-03-31`).

**Time Complexity:** `O(n)`  
**Space Complexity:** `O(1)` (excluding the output)

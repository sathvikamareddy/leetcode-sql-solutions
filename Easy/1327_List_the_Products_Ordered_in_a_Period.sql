# 1327. List the Products Ordered in a Period

**Difficulty:** Easy  
**Platform:** LeetCode SQL

## Problem
Write a solution to get the names of products that have at least **100 units** ordered in **February 2020** and their total ordered amount.

Return the result table in **any order**.

---

## SQL Solution

```sql
SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
```

---

## Explanation
- Join the **Products** and **Orders** tables using `product_id`.
- Filter orders placed between **2020-02-01** and **2020-02-29**.
- Group the records by `product_id` and `product_name`.
- Calculate the total ordered units using `SUM(unit)`.
- Use the `HAVING` clause to keep only products with **100 or more units** ordered.
- Return the product name and total units.

---

## Concepts Used
- `JOIN`
- `WHERE`
- `BETWEEN`
- `GROUP BY`
- `SUM()`
- `HAVING`

**Time Complexity:** `O(n)`  
**Space Complexity:** `O(1)`

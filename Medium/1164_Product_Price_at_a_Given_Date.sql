# 1164. Product Price at a Given Date

**Difficulty:** Medium

## Problem Statement

Table: `Products`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| new_price   | int     |
| change_date | date    |
+-------------+---------+
```

- `(product_id, change_date)` is the primary key.
- Each row indicates that the price of a product was changed to `new_price` on `change_date`.

Write a solution to find the prices of all products on the date **2019-08-16**.

Assume the price of all products before any change is **10**.

Return the result table in **any order**.

---

## Example

### Input

**Products**

```text
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
```

### Output

```text
+------------+-------+
| product_id | price |
+------------+-------+
| 1          | 35    |
| 2          | 50    |
| 3          | 10    |
+------------+-------+
```

### Explanation

- Product `1`'s latest price on or before `2019-08-16` is `35`.
- Product `2`'s latest price on or before `2019-08-16` is `50`.
- Product `3` has no price changes before or on `2019-08-16`, so its price is `10`.

---

## SQL Solution

```sql
SELECT
    p.product_id,
    COALESCE(t.new_price, 10) AS price
FROM
    (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN
    (
        SELECT
            product_id,
            new_price
        FROM Products
        WHERE (product_id, change_date) IN (
            SELECT
                product_id,
                MAX(change_date)
            FROM Products
            WHERE change_date <= '2019-08-16'
            GROUP BY product_id
        )
    ) t
ON p.product_id = t.product_id;
```

---

## Key Concepts

- GROUP BY
- MAX()
- LEFT JOIN
- COALESCE()
- Subquery

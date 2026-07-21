# 1070. Product Sales Analysis III

**Difficulty:** Easy  

## Problem Statement
Write a solution to find all sales that occurred in the first year each product was sold.

For each `product_id`, identify the earliest year it appears in the `Sales` table.

Return all sales entries for that product in that year.

Return a table with the following columns:

- `product_id`
- `first_year`
- `quantity`
- `price`

Return the result table in **any order**.

---

## Table Schema

### Sales

| Column Name | Type |
|-------------|------|
| sale_id | int |
| product_id | int |
| year | int |
| quantity | int |
| price | int |

- `(sale_id, year)` is the primary key.
- `product_id` is a foreign key referencing the `Product` table.
- Each row indicates the product sold, the year of the sale, its quantity, and price.

### Product

| Column Name | Type |
|-------------|------|
| product_id | int |
| product_name | varchar |

- `product_id` is the primary key.
- Each row contains the product name.

---

## SQL Solution

```sql
SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN (
    SELECT
        product_id,
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) f
ON s.product_id = f.product_id
AND s.year = f.first_year;
```

---

## Approach

1. Find the earliest (`MIN`) year for each `product_id`.
2. Join the result back with the `Sales` table.
3. Match both `product_id` and the earliest year.
4. Return the required columns:
   - `product_id`
   - `first_year`
   - `quantity`
   - `price`

---

## Key SQL Concepts

- `MIN()`
- `GROUP BY`
- `JOIN`
- Column Aliasing (`AS`)

---

**LeetCode Problem:** 1070. Product Sales Analysis III

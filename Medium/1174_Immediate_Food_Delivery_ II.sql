# 1174. Immediate Food Delivery II

**Difficulty:** Medium

## Problem Statement

Table: `Delivery`

```text
+------------------------+---------+
| Column Name            | Type    |
+------------------------+---------+
| delivery_id            | int     |
| customer_id            | int     |
| order_date             | date    |
| customer_pref_delivery_date | date |
+------------------------+---------+
```

- `delivery_id` is the column with unique values.
- The table holds information about food delivery orders.
- If the customer's preferred delivery date is the same as the order date, then the order is considered **immediate**; otherwise, it is **scheduled**.
- The **first order** of a customer is the order with the earliest `order_date`.

Write a solution to find the percentage of **immediate** first orders for all customers, rounded to **2 decimal places**.

## SQL Solution

```sql
SELECT
    ROUND(
        AVG(
            CASE
                WHEN order_date = customer_pref_delivery_date THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT
        customer_id,
        MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
```

## Explanation

- Select only the **first order** of each customer using a subquery.
- Check whether the `order_date` matches the `customer_pref_delivery_date`.
- Assign:
  - `1` → Immediate delivery
  - `0` → Scheduled delivery
- Calculate the average of these values and multiply by **100** to get the percentage.
- Use `ROUND(..., 2)` to display the result with **2 decimal places**.

# 586. Customer Placing the Largest Number of Orders

## Question

Write a solution to find the **customer_number** for the customer who has placed the **largest number of orders**.

The test cases are generated so that **exactly one customer** will have placed more orders than any other customer.

Return the result table in the following format.

---

## Table: Orders

| Column Name     | Type |
|-----------------|------|
| order_number    | int  |
| customer_number | int  |

- `order_number` is the primary key (column with unique values) for this table.
- Each row contains the order number and the customer number associated with that order.

---

## Example

### Input

**Orders**

| order_number | customer_number |
|--------------|-----------------|
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |

### Output

| customer_number |
|-----------------|
| 3               |

### Explanation

- Customer **1** placed **1** order.
- Customer **2** placed **1** order.
- Customer **3** placed **2** orders.

Since customer **3** has placed the largest number of orders, the result is:

| customer_number |
|-----------------|
| 3               |

---

## SQL Solution (MySQL)

```sql
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
```

---

## Explanation

- `GROUP BY customer_number` groups all orders by customer.
- `COUNT(*)` counts the number of orders placed by each customer.
- `ORDER BY COUNT(*) DESC` sorts customers by the number of orders in descending order.
- `LIMIT 1` returns the customer with the highest number of orders.

---

## Key Concepts

- `GROUP BY`
- Aggregate Function (`COUNT`)
- `ORDER BY`
- `LIMIT`

---

## Complexity Analysis

- **Time Complexity:** `O(n log n)` (due to sorting)
- **Space Complexity:** `O(n)` (for grouping)

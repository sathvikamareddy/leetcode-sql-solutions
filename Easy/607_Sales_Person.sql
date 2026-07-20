# 607. Sales Person

**Difficulty:** Easy

## Problem Statement

Write a solution to find the names of all the salespersons who **did not have any orders** related to the company with the name **"RED"**.

Return the result table in **any order**.

---

## Tables

### SalesPerson

| Column Name | Type |
|--------------|------|
| sales_id | int |
| name | varchar |
| salary | int |
| commission_rate | int |
| hire_date | date |

- `sales_id` is the primary key.
- Each row contains information about a salesperson.

### Company

| Column Name | Type |
|--------------|------|
| com_id | int |
| name | varchar |
| city | varchar |

- `com_id` is the primary key.
- Each row contains information about a company.

### Orders

| Column Name | Type |
|--------------|------|
| order_id | int |
| order_date | date |
| com_id | int |
| sales_id | int |
| amount | int |

- `order_id` is the primary key.
- `com_id` is a foreign key referencing `Company(com_id)`.
- `sales_id` is a foreign key referencing `SalesPerson(sales_id)`.

---

## SQL Solution

```sql
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT o.sales_id
    FROM Orders o
    JOIN Company c
        ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
```

---

## Explanation

- Join the `Orders` and `Company` tables to find all orders associated with the company **"RED"**.
- Retrieve the `sales_id` values from those orders.
- Select the names of salespersons whose `sales_id` does **not** appear in that list.
- Return the result in any order.

---

## Complexity Analysis

- **Time Complexity:** `O(n + m)`
- **Space Complexity:** `O(n)`

---

### Concepts Used

- `JOIN`
- `NOT IN`
- `Subquery`

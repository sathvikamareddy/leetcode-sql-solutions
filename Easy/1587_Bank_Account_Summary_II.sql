# 1587. Bank Account Summary II

**Difficulty:** Easy  
**Platform:** LeetCode  

---

## Problem

Write an SQL query to report the **name** and **balance** of users whose account balance is **greater than 10000**.

The **balance** of an account is the **sum of all transaction amounts** for that account.

Return the result table in any order.

---

## Table Schema

### Users

| Column Name | Type |
|-------------|------|
| account | int |
| name | varchar |

- `account` is the primary key.
- Each row contains the account number and the user's name.

### Transactions

| Column Name | Type |
|-------------|------|
| trans_id | int |
| account | int |
| amount | int |

- `trans_id` is the primary key.
- Each row represents a transaction.
- `amount` can be positive (deposit) or negative (withdrawal).

---

## SQL Solution

```sql
SELECT
    U.name,
    SUM(T.amount) AS balance
FROM Users U
JOIN Transactions T
ON U.account = T.account
GROUP BY U.account, U.name
HAVING SUM(T.amount) > 10000;
```

---

## Explanation

- Join the **Users** and **Transactions** tables using the `account` column.
- Calculate each user's total balance using `SUM(amount)`.
- Group the transactions by account and user name.
- Use the `HAVING` clause to filter users whose total balance is greater than **10000**.

---

## Concepts Practiced

- `INNER JOIN`
- Aggregate Functions (`SUM()`)
- `GROUP BY`
- `HAVING`
- Aliasing (`AS`)

---

## Time Complexity

- **O(n)**

## Space Complexity

- **O(1)** *(excluding query result)*

---

⭐ If you found this solution helpful, consider giving the repository a star!

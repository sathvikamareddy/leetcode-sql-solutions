# 🔄627- Swap Sex of Employees

## 📝 Problem
Write a solution to swap all `'f'` and `'m'` values in the `sex` column (i.e., change all `'f'` values to `'m'` and all `'m'` values to `'f'`) using a **single `UPDATE` statement**.

- Do **not** use any temporary tables.
- Do **not** use any `SELECT` statement.

---

## 📋 Table Schema

**Salary**

| Column Name | Type |
| ------------ | ---- |
| id | int |
| name | varchar |
| sex | ENUM('m', 'f') |
| salary | int |

---

## 💡 SQL Solution

```sql
UPDATE Salary
SET sex = CASE
            WHEN sex = 'm' THEN 'f'
            WHEN sex = 'f' THEN 'm'
          END;
```

---

## 🧠 Explanation

- The `CASE` expression checks the current value of the `sex` column.
- If the value is `'m'`, it is updated to `'f'`.
- If the value is `'f'`, it is updated to `'m'`.
- The swap is completed in a **single `UPDATE` statement** without using temporary tables.

---

## ✅ Key Concepts

- `UPDATE`
- `CASE WHEN`
- Conditional Update
- Data Manipulation Language (DML)

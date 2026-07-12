# 569. Median Employee Salary

**Difficulty:** Hard  
**Platform:** LeetCode  
**Language:** PostgreSQL

---

## Problem

### Table: Employee

| Column Name | Type |
|--------------|------|
| id | int |
| company | varchar |
| salary | int |

- `id` is the primary key.
- Each row contains the employee's ID, company, and salary.

Write a solution to find the **median salary employee(s)** for each company.

- If the number of employees is **odd**, return the employee with the middle salary.
- If the number of employees is **even**, return the two employees with the middle salaries.

Return the result table in any order.

---

## Approach

- Partition employees by `company`.
- Assign a row number using `ROW_NUMBER()` ordered by `salary` and `id`.
- Count the total employees in each company using `COUNT() OVER()`.
- Select the employee(s) whose row number lies between:
  - `(total + 1) / 2`
  - `(total + 2) / 2`
- This handles both odd and even numbers of employees.

---

## PostgreSQL Solution

```sql
WITH ranked AS (
    SELECT
        id,
        company,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY company
            ORDER BY salary, id
        ) AS rn,
        COUNT(*) OVER (
            PARTITION BY company
        ) AS total
    FROM Employee
)

SELECT
    id,
    company,
    salary
FROM ranked
WHERE rn BETWEEN (total + 1) / 2 AND (total + 2) / 2;
```

---

## Key Concepts

- Common Table Expression (CTE)
- Window Functions
- `ROW_NUMBER()`
- `COUNT() OVER()`
- `PARTITION BY`
- Median Calculation

---

## Complexity Analysis

- **Time Complexity:** `O(n log n)`
- **Space Complexity:** `O(n)`


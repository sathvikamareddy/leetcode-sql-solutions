# 570. Managers with at Least 5 Direct Reports

## Question

Write a solution to find managers with **at least five direct reports**.

Return the result table in **any order**.

---

## Table: Employee

| Column Name | Type    |
| ------------ | ------- |
| id           | int     |
| name         | varchar |
| department   | varchar |
| managerId    | int     |

- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the name of an employee, their department, and the `id` of their manager.
- If `managerId` is `NULL`, then the employee does not have a manager.
- No employee is their own manager.

---

## Example

### Input

**Employee**

| id | name  | department | managerId |
|----|-------|------------|-----------|
| 101 | John  | A | NULL |
| 102 | Dan   | A | 101 |
| 103 | James | A | 101 |
| 104 | Amy   | A | 101 |
| 105 | Anne  | A | 101 |
| 106 | Ron   | B | 101 |

### Output

| name |
|------|
| John |

### Explanation

- **John (id = 101)** manages **Dan, James, Amy, Anne, and Ron**.
- Since John has **5 direct reports**, he is included in the result.

---

## SQL Solution (MySQL)

```sql
SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);
```

---

## Explanation

- The subquery groups employees by `managerId`.
- `COUNT(*)` counts the number of employees reporting to each manager.
- `HAVING COUNT(*) >= 5` keeps only managers with at least **5** direct reports.
- The outer query returns the names of those managers.

---

## Key Concepts

- Subquery
- `IN` Operator
- `GROUP BY`
- `HAVING`
- Aggregate Function (`COUNT`)

---

## Complexity Analysis

- **Time Complexity:** `O(n)`
- **Space Complexity:** `O(n)` (used for grouping manager IDs)

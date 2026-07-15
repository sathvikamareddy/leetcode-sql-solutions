# 570. Managers with at Least 5 Direct Reports

**Difficulty:** Medium

**Concepts:** `GROUP BY`, `HAVING`, `SELF JOIN`, `COUNT()`

**LeetCode:** https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

---

## Problem

Write a solution to find managers with **at least five direct reports**.

Return the result table in **any order**.

---

## Table: Employee

| Column Name | Type |
|-------------|------|
| id | int |
| name | varchar |
| department | varchar |
| managerId | int |

- `id` is the primary key.
- Each row indicates the ID of an employee, their name, department, and the ID of their manager.
- If `managerId` is `NULL`, the employee does not have a manager.
- No employee manages themselves.

---

## Example

### Input

| id | name | department | managerId |
|----|------|------------|-----------|
| 101 | John | A | NULL |
| 102 | Dan | A | 101 |
| 103 | James | A | 101 |
| 104 | Amy | A | 101 |
| 105 | Anne | A | 101 |
| 106 | Ron | B | 101 |

### Output

| name |
|------|
| John |

---

## Approach

- Perform a **SELF JOIN** on the `Employee` table.
- Match each employee with their manager using `e.managerId = m.id`.
- Group the records by the manager's ID and name.
- Count the number of employees reporting to each manager.
- Use the `HAVING` clause to filter managers with **5 or more direct reports**.

---

## SQL Solution

```sql
SELECT m.name
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
GROUP BY m.id, m.name
HAVING COUNT(*) >= 5;
```

---

## Explanation

- `e` represents employees.
- `m` represents managers.
- `JOIN` links employees to their managers.
- `GROUP BY` groups employees under each manager.
- `COUNT(*)` counts the number of direct reports.
- `HAVING COUNT(*) >= 5` returns only managers with at least five direct reports.

---

## Key Concepts

- Self Join
- GROUP BY
- HAVING
- COUNT()
- Aggregate Functions
- Employee-Manager Hierarchy

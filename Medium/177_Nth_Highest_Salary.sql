# LeetCode 177. Nth Highest Salary

## Question

Write a solution to find the nth highest distinct salary from the Employee table.

If there is no nth highest salary, return `null`.

---

## Table: Employee

| Column Name | Type |
|------------|------|
| id | int |
| salary | int |

`id` is the primary key (column with unique values) for this table.

Each row of this table contains information about the salary of an employee.

---

## Example

### Input

Employee

| id | salary |
|----|--------|
| 1 | 100 |
| 2 | 200 |
| 3 | 300 |

N = 2

### Output

| getNthHighestSalary(2) |
|------------------------|
| 200 |

---

## SQL Solution

```sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;

    RETURN (
        SELECT DISTINCT salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT 1 OFFSET N
    );
END
```

---

## Explanation

- `DISTINCT` removes duplicate salaries.
- Salaries are sorted in descending order using `ORDER BY salary DESC`.
- `SET N = N - 1` converts N into a zero-based offset.
- `LIMIT 1 OFFSET N` fetches the nth highest distinct salary.
- If the nth highest salary does not exist, MySQL returns `NULL`.

---

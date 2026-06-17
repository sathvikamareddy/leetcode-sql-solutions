# LeetCode 185. Department Top Three Salaries

## Problem
A company's executives are interested in seeing who earns the most money in each of the company's departments.

A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write a solution to find the employees who are high earners in each of the departments.

---

## Approach
- Rank salaries within each department using `DENSE_RANK()`.
- Assign the same rank to employees with the same salary.
- Keep only employees whose rank is less than or equal to 3.
- Join with the `Department` table to get department names.

---

## Solution

```sql
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM
(
    SELECT
        departmentId,
        name,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS rnk
    FROM Employee
) e
JOIN Department d
    ON e.departmentId = d.id
WHERE e.rnk <= 3;
```

---

## Explanation
- `PARTITION BY departmentId` creates separate rankings for each department.
- `ORDER BY salary DESC` ranks salaries from highest to lowest.
- `DENSE_RANK()` ensures employees with the same salary receive the same rank.
- `rnk <= 3` selects employees whose salaries are among the top three unique salaries in their department.

---

## Complexity Analysis
- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

## Key Concepts
- Window Functions
- DENSE_RANK()
- PARTITION BY
- SQL Joins

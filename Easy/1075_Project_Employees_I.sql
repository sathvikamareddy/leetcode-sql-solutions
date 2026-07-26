# Average Experience Years Per Project

## Problem
Write an SQL query that reports the average experience years of all the employees for each project, rounded to **2 decimal places**.

Return the result table in **any order**.

---

## SQL Solution

```sql
SELECT
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;
```

---

## Explanation
- Join the **Project** and **Employee** tables using `employee_id`.
- Use `AVG(experience_years)` to calculate the average experience for employees in each project.
- Apply `ROUND(..., 2)` to round the result to **2 decimal places**.
- Group the records by `project_id` to calculate the average for each project.

### Concepts Used
- `JOIN`
- `AVG()`
- `ROUND()`
- `GROUP BY`

**Difficulty:** Easy

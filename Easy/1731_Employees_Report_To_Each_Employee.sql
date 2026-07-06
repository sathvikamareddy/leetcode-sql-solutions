/*
===============================================================================
📌 Problem: 1731. The Number of Employees Which Report to Each Employee
⭐ Difficulty: Easy
🔗 Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

===============================================================================

📝 Problem Statement:

For this problem, we will consider a manager an employee who has 
at least 1 other employee reporting to them.

Write a solution to report:
    - employee_id
    - name
    - reports_count
    - average_age

Where:
    reports_count → number of employees reporting directly
    average_age → average age of the reports rounded to nearest integer

Return the result table ordered by employee_id.

===============================================================================

📂 Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |
+-------------+---------+

employee_id is the primary key.

===============================================================================

💡 Approach:

1. Use SELF JOIN on Employees table.
2. Treat one table as managers and another as employees.
3. Match:
        manager.employee_id = employee.reports_to
4. Use COUNT() to find total reports.
5. Use AVG() to calculate average age.
6. GROUP BY each manager.

===============================================================================

🧠 Concepts Used:

✔ Self Join
✔ Aggregate Functions
✔ COUNT()
✔ AVG()
✔ ROUND()
✔ GROUP BY
✔ ORDER BY

===============================================================================

💻 SQL Solution:
*/

SELECT 
    m.employee_id,
    m.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees m
JOIN Employees e
ON m.employee_id = e.reports_to
GROUP BY 
    m.employee_id,
    m.name
ORDER BY 
    m.employee_id;

/*
===============================================================================
⏱️ Complexity Analysis:

Time Complexity  : O(n²)
Space Complexity : O(1)

===============================================================================
*/

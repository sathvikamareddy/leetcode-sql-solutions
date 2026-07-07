
===============================================================================
📌 Problem: Primary Department for Each Employee
🔗 LeetCode: https://leetcode.com/problems/primary-department-for-each-employee/
🟢 Difficulty: Easy
===============================================================================

📝 Problem Statement:

Employees can belong to multiple departments. When an employee joins 
other departments, they need to decide which department is their primary 
department.

- If an employee belongs to multiple departments:
  → Return the department where primary_flag = 'Y'

- If an employee belongs to only one department:
  → Return their only department (primary_flag will be 'N')

Return the result table in any order.

===============================================================================

📂 Table: Employee

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |
+---------------+---------+

(employee_id, department_id) is the primary key.

primary_flag is an ENUM ('Y','N').

===============================================================================

💡 Approach:

1. Select employees whose primary department is marked as 'Y'.

2. Select employees who belong to only one department using GROUP BY
   and HAVING COUNT(*) = 1.

3. Combine both results using UNION.

===============================================================================

💻 SQL Solution:
*/

SELECT 
    employee_id,
    department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT
    employee_id,
    department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(*) = 1;



===============================================================================
✅ Concepts Used:
   • WHERE Clause
   • GROUP BY
   • HAVING
   • COUNT()
   • UNION

⏱️ Complexity:
   Time Complexity  : O(n)
   Space Complexity : O(n)

===============================================================================

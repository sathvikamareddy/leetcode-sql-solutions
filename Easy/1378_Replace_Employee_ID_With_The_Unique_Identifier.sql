-- LeetCode 1378
-- Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Question:
-- Write a solution to show the unique ID of each employee.
-- If an employee does not have a unique ID, return NULL instead.

-- Schema:
-- Employees Table
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+

-- EmployeeUNI Table
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | unique_id     | int     |
-- +---------------+---------+

-- Example Output:
-- +-----------+----------+
-- | unique_id | name     |
-- +-----------+----------+
-- | null      | Alice    |
-- | null      | Bob      |
-- | 2         | Meir     |
-- | 3         | Winston  |
-- | 1         | Jonathan |
-- +-----------+----------+

SELECT EmployeeUNI.unique_id,
       Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;

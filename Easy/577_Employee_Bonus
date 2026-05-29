-- LeetCode 577
-- Employee Bonus
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employee-bonus/

-- Question:
-- Write a solution to report the name and bonus amount of each employee
-- with a bonus less than 1000.
--
-- Return the result table in any order.
--
-- Example Input:
--
-- Employee table:
-- +-------+------+------------+--------+
-- | empId | name | supervisor | salary |
-- +-------+------+------------+--------+
-- | 3     | Brad | NULL       | 4000   |
-- | 1     | John | 3          | 1000   |
-- | 2     | Dan  | 3          | 2000   |
-- | 4     | Thomas | 3        | 4000   |
-- +-------+------+------------+--------+
--
-- Bonus table:
-- +-------+-------+
-- | empId | bonus |
-- +-------+-------+
-- | 2     | 500   |
-- | 4     | 2000  |
-- +-------+-------+
--
-- Example Output:
--
-- +------+-------+
-- | name | bonus |
-- +------+-------+
-- | Brad | NULL  |
-- | John | NULL  |
-- | Dan  | 500   |
-- +------+-------+

-- Solution:

SELECT
    Employee.name,
    Bonus.bonus
FROM Employee
LEFT JOIN Bonus
ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000
   OR Bonus.bonus IS NULL;

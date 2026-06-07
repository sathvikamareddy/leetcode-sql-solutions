-- LeetCode 596
-- Classes More Than 5 Students
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/classes-more-than-5-students/

-- Question:
-- Write a solution to find all the classes that have at least five students.
-- Return the result table in any order.

-- Schema:
-- +---------+---------+
-- | Column  | Type    |
-- +---------+---------+
-- | student | varchar |
-- | class   | varchar |
-- +---------+---------+

-- Example:
-- Input:
-- +---------+-------+
-- | student | class |
-- +---------+-------+
-- | A       | Math  |
-- | B       | English |
-- | C       | Math  |
-- | D       | Biology |
-- | E       | Math  |
-- | F       | Computer |
-- | G       | Math  |
-- | H       | Math  |
-- +---------+-------+
--
-- Output:
-- +-------+
-- | class |
-- +-------+
-- | Math  |
-- +-------+

-- Solution:
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;

-- LeetCode 619
-- Biggest Single Number
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/biggest-single-number/

-- Question:
-- A single number is a number that appeared only once in the MyNumbers table.
--
-- Find the largest single number. If there is no single number,
-- report null.
--
-- Return the result table in any order.

-- Schema:
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | num         | int  |
-- +-------------+------+

-- Example:
-- Input:
-- +-----+
-- | num |
-- +-----+
-- | 8   |
-- | 8   |
-- | 3   |
-- | 3   |
-- | 1   |
-- | 4   |
-- | 5   |
-- | 6   |
-- +-----+
--
-- Output:
-- +------------------+
-- | num              |
-- +------------------+
-- | 6                |
-- +------------------+

-- Solution:
SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
);

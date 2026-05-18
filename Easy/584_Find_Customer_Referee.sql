
-- LeetCode 584
-- Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-customer-referee/

-- Schema:
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+

-- Example Input:
-- +----+------+------------+
-- | id | name | referee_id |
-- +----+------+------------+
-- | 1  | Will | NULL       |
-- | 2  | Jane | NULL       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | NULL       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |
-- +----+------+------------+

-- Expected Output:
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+

SELECT name
FROM Customer
WHERE referee_id IS NULL
OR referee_id != 2
ORDER BY name;

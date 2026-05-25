-- LeetCode 197
-- Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/rising-temperature/

-- Question:
-- Find all dates' Id with higher temperatures compared to its previous dates (yesterday).

-- Schema:
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+

-- Example Input:

-- Weather Table:
-- +----+------------+-------------+
-- | id | recordDate | temperature |
-- +----+------------+-------------+
-- | 1  | 2015-01-01 | 10          |
-- | 2  | 2015-01-02 | 25          |
-- | 3  | 2015-01-03 | 20          |
-- | 4  | 2015-01-04 | 30          |
-- +----+------------+-------------+

-- Expected Output:
-- +----+
-- | id |
-- +----+
-- | 2  |
-- | 4  |
-- +----+

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

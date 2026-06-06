-- LeetCode 1633
-- Percentage of Users Attended a Contest
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/

-- Question:
-- Find the percentage of users registered in each contest,
-- rounded to two decimal places.
--
-- Return the result table ordered by percentage in descending order.
-- In case of a tie, order it by contest_id in ascending order.

-- Schema:

-- Users Table:
-- +----------+---------+
-- | Column   | Type    |
-- +----------+---------+
-- | user_id  | int     |
-- | user_name| varchar |
-- +----------+---------+
-- user_id is the primary key.

-- Register Table:
-- +------------+------+
-- | Column     | Type |
-- +------------+------+
-- | contest_id | int  |
-- | user_id    | int  |
-- +------------+------+
-- (contest_id, user_id) is the primary key.

-- Solution:

SELECT
    r.contest_id,
    ROUND(COUNT(r.user_id) * 100.0 /
          (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;

-- Concepts Practiced:
-- 1. COUNT()
-- 2. Subquery
-- 3. ROUND()
-- 4. GROUP BY
-- 5. ORDER BY

-- Learning Takeaway:
-- Use a subquery to get the total number of users and
-- calculate percentages for each group. ROUND() helps
-- format the result to the required decimal precision.

-- LeetCode 1934
-- Confirmation Rate
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/confirmation-rate/

-- Problem:
-- The confirmation rate of a user is the number of 'confirmed' messages
-- divided by the total number of requested confirmation messages.
-- Users who did not request any confirmation messages have a confirmation rate of 0.
-- Return the confirmation rate of each user rounded to two decimal places.

-- Schema:
-- Signups
-- +---------+------------+
-- | user_id | time_stamp |
-- +---------+------------+

-- Confirmations
-- +---------+---------------------+-----------+
-- | user_id | time_stamp          | action    |
-- +---------+---------------------+-----------+
-- action is either 'confirmed' or 'timeout'

-- SQL Solution:

SELECT
    s.user_id,
    ROUND(
        IFNULL(
            SUM(c.action = 'confirmed') / COUNT(c.action),
            0
        ),
        2
    ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Explanation:
-- 1. LEFT JOIN ensures all users from Signups are included.
-- 2. SUM(c.action = 'confirmed') counts confirmed requests.
-- 3. COUNT(c.action) counts total confirmation requests.
-- 4. Division gives the confirmation rate.
-- 5. IFNULL() returns 0 for users with no confirmation requests.
-- 6. ROUND() formats the result to two decimal places.

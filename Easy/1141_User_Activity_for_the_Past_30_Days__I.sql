-- LeetCode 1141
-- User Activity for the Past 30 Days I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

-- Question:
-- Write a solution to find the daily active user count for a period of
-- 30 days ending 2019-07-27 inclusively. A user was active on a day
-- if they made at least one activity on that day.
--
-- Return the result table in any order.
--
-- The result format is in the following example.

-- Schema:

-- Activity table:
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | user_id       | int     |
-- | session_id    | int     |
-- | activity_date | date    |
-- | activity_type | enum    |
-- +---------------+---------+
--
-- activity_type is an ENUM (category) of type
-- ('open_session', 'end_session', 'scroll_down', 'send_message').
--
-- The table shows the user activities for a social media website.
-- Note that each session belongs to exactly one user.

-- Example Input:
-- Activity
-- +---------+------------+---------------+---------------+
-- | user_id | session_id | activity_date | activity_type |
-- +---------+------------+---------------+---------------+
-- | 1       | 1          | 2019-07-20    | open_session  |
-- | 1       | 1          | 2019-07-20    | scroll_down   |
-- | 1       | 1          | 2019-07-20    | end_session   |
-- | 2       | 4          | 2019-07-20    | open_session  |
-- | 2       | 4          | 2019-07-21    | send_message  |
-- | 2       | 4          | 2019-07-21    | end_session   |
-- | 3       | 2          | 2019-07-21    | open_session  |
-- | 3       | 2          | 2019-07-21    | send_message  |
-- | 3       | 2          | 2019-07-21    | end_session   |
-- | 4       | 3          | 2019-06-25    | open_session  |
-- | 4       | 3          | 2019-06-25    | end_session   |
-- +---------+------------+---------------+---------------+

-- Example Output:
-- +------------+--------------+
-- | day        | active_users |
-- +------------+--------------+
-- | 2019-07-20 | 2            |
-- | 2019-07-21 | 2            |
-- +------------+--------------+

-- Solution:
SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
                        AND '2019-07-27'
GROUP BY activity_date;

-- Concepts Used:
-- 1. COUNT(DISTINCT)
-- 2. GROUP BY
-- 3. Date Filtering (BETWEEN)
-- 4. DATE_SUB()
-- 5. Aggregate Functions

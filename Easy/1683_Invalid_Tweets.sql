-- LeetCode 1683
-- Invalid Tweets
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/invalid-tweets/

-- Question:
-- Find the IDs of tweets that have invalid content.
-- A tweet is considered invalid if the number of characters
-- used in the content is strictly greater than 15.

-- Schema:
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | tweet_id     | int     |
-- | content      | varchar |
-- +--------------+---------+

-- tweet_id is the primary key for this table.
-- content consists of characters written in English.

-- Example Input:
-- +----------+-----------------------------------+
-- | tweet_id | content                           |
-- +----------+-----------------------------------+
-- | 1        | Vote for Biden                    |
-- | 2        | Let us make America great again   |
-- +----------+-----------------------------------+

-- Expected Output:
-- +----------+
-- | tweet_id |
-- +----------+
-- | 2        |
-- +----------+

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

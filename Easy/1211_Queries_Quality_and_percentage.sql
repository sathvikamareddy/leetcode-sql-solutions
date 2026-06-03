-- LeetCode 1211
-- Queries Quality and Percentage
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/

-- Table: Queries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |
+-------------+---------+

-- This table may contain duplicate rows.
-- The position column has a value from 1 to 500.
-- The rating column has a value from 1 to 5.
-- Query with name query_name is the name of the query,
-- result is the result returned by this query.

-- Problem:
-- We define query quality as:
-- The average of the ratio between query rating and its position.
--
-- We also define poor query percentage as:
-- The percentage of all queries with rating less than 3.
--
-- Write a solution to find each query_name,
-- the quality and poor_query_percentage.
--
-- Both quality and poor_query_percentage should be
-- rounded to 2 decimal places.

-- Example Input:

Queries
+------------+-------------------+----------+--------+
| query_name | result            | position | rating |
+------------+-------------------+----------+--------+
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |
+------------+-------------------+----------+--------+

-- Example Output:

+------------+---------+-----------------------+
| query_name | quality | poor_query_percentage |
+------------+---------+-----------------------+
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |
+------------+---------+-----------------------+

-- Solution:

SELECT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(
        100 * AVG(
            CASE
                WHEN rating < 3 THEN 1
                ELSE 0
            END
        ),
        2
    ) AS poor_query_percentage
FROM Queries
GROUP BY query_name;

-- LeetCode Number: 1484

-- Problem Name: Group Sold Products By The Date

-- Difficulty: Easy

-- Question:
-- Write a solution to find for each date the number of different products sold
-- and their names.
--
-- The sold product names for each date should be sorted lexicographically.
--
-- Return the result table ordered by sell_date.

-- Schema:

-- Activities
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sell_date   | date    |
| product     | varchar |
+-------------+---------+

-- Example Output:

+------------+----------+-------------------+
| sell_date  | num_sold | products          |
+------------+----------+-------------------+
| 2020-05-30 | 3        | Headphone,Mask    |
| 2020-06-01 | 2        | Basketball,TShirt |
+------------+----------+-------------------+

-- SQL Solution:

SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(
        DISTINCT product
        ORDER BY product
        SEPARATOR ','
    ) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;

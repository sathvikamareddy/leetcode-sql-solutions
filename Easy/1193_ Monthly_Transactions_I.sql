-- LeetCode 1193
-- Monthly Transactions I
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/monthly-transactions-i/

-- Find for each month and country:
-- 1. Number of transactions
-- 2. Number of approved transactions
-- 3. Total transaction amount
-- 4. Total approved transaction amount

/* Schema

Transactions
+------------+---------+
| Column Name| Type    |
+------------+---------+
| id         | int     |
| country    | varchar |
| state      | enum    |
| amount     | int     |
| trans_date | date    |
+------------+---------+

id is the primary key.

*/

/* Example Output

+---------+---------+-------------+----------------+--------------------+-----------------------+
| month   | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
+---------+---------+-------------+----------------+--------------------+-----------------------+
| 2018-12 | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01 | US      | 1           | 1              | 2000               | 2000                  |
+---------+---------+-------------+----------------+--------------------+-----------------------+

*/

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;

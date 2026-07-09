
=========================================================
LeetCode SQL Problem: 571. Find Median Given Frequency of Numbers
Difficulty: Hard
Platform: LeetCode

Problem:
The Numbers table keeps the value of numbers and their frequency.

Write a solution to find the median of all numbers after expanding
the numbers according to their frequency.

Return the median rounded to one decimal point.

Table: Numbers

+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
| frequency   | int  |
+-------------+------+

num is the primary key.
Each row shows how many times the number appears.

Example:

Input:
Numbers table:

+-----+-----------+
| num | frequency |
+-----+-----------+
| 0   | 7         |
| 1   | 1         |
| 2   | 3         |
| 3   | 1         |
+-----+-----------+

Expanded numbers:
0,0,0,0,0,0,0,1,2,2,2,3

Median = (0 + 0) / 2 = 0.0

Output:

+--------+
| median |
+--------+
| 0.0000 |
+--------+

Concepts:
- Window Functions
- SUM() OVER()
- Cumulative Frequency
- Median Calculation

=========================================================


-- PostgreSQL Solution

WITH cte AS (
    SELECT 
        num,
        SUM(frequency) OVER(ORDER BY num) AS cumulative,
        SUM(frequency) OVER() AS total,
        frequency
    FROM Numbers
)

SELECT 
    ROUND(AVG(num)::numeric, 1) AS median
FROM cte
WHERE 
    cumulative >= total / 2.0
    AND
    cumulative - frequency <= total / 2.0;

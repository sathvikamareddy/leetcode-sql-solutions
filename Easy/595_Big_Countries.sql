-- LeetCode 595
-- Big Countries
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/big-countries/

-- Question:
-- Find the name, population, and area of countries that are considered big.
-- A country is considered big if:
-- • its area is greater than or equal to 3,000,000
-- OR
-- • its population is greater than or equal to 25,000,000.

-- Schema:
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+

-- Example Input:
-- +-------------+-----------+---------+------------+---------------+
-- | name        | continent | area    | population | gdp           |
-- +-------------+-----------+---------+------------+---------------+
-- | Afghanistan | Asia      | 652230  | 25500100   | 20343000000   |
-- | Albania     | Europe    | 28748   | 2831741    | 12960000000   |
-- | Algeria     | Africa    | 2381741 | 37100000   | 188681000000  |
-- | Andorra     | Europe    | 468     | 78115      | 3712000000    |
-- | Angola      | Africa    | 1246700 | 20609294   | 100990000000  |
-- +-------------+-----------+---------+------------+---------------+

-- Expected Output:
-- +-------------+------------+---------+
-- | name        | population | area    |
-- +-------------+------------+---------+
-- | Afghanistan | 25500100   | 652230  |
-- | Algeria     | 37100000   | 2381741 |
-- +-------------+------------+---------+

SELECT
    name,
    population,
    area
FROM World
WHERE area >= 3000000
   OR population >= 25000000
ORDER BY name;

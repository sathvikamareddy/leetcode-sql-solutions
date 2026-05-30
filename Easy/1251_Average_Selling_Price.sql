-- LeetCode 1251
-- Average Selling Price  
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/average-selling-price/

-- Question:
-- Find the average selling price for each product.
-- average_price should be rounded to 2 decimal places.
-- If a product does not have any sold units,
-- its average selling price is assumed to be 0.

-- Schema:

-- Prices Table:
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | start_date  | date    |
-- | end_date    | date    |
-- | price       | int     |
-- +-------------+---------+

-- UnitsSold Table:
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | product_id    | int     |
-- | purchase_date | date    |
-- | units         | int     |
-- +---------------+---------+

-- Solution:
SELECT 
    p.product_id,

    ROUND(
        CASE 
            WHEN SUM(u.units) IS NULL THEN 0
            ELSE SUM(p.price * u.units) / SUM(u.units)
        END,
        2
    ) AS average_price

FROM Prices p

LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date

GROUP BY p.product_id;

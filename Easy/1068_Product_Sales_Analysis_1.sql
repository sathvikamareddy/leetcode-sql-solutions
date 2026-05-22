-- LeetCode 1068
-- Product Sales Analysis I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/product-sales-analysis-i/

-- Question:
-- Report the product_name, year, and price for each sale_id in the Sales table.
-- Return the resulting table in any order.

-- Schema:
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | sale_id     | int     |
-- | product_id  | int     |
-- | year        | int     |
-- | quantity    | int     |
-- | price       | int     |
-- +-------------+---------+

-- Product Table:
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | product_id   | int     |
-- | product_name | varchar |
-- +--------------+---------+

-- Example Input:

-- Sales Table:
-- +---------+------------+------+----------+-------+
-- | sale_id | product_id | year | quantity | price |
-- +---------+------------+------+----------+-------+
-- | 1       | 100        | 2008 | 10       | 5000  |
-- | 2       | 100        | 2009 | 12       | 5000  |
-- | 7       | 200        | 2011 | 15       | 9000  |
-- +---------+------------+------+----------+-------+

-- Product Table:
-- +------------+--------------+
-- | product_id | product_name |
-- +------------+--------------+
-- | 100        | Nokia        |
-- | 200        | Apple        |
-- | 300        | Samsung      |
-- +------------+--------------+

-- Expected Output:
-- +--------------+------+-------+
-- | product_name | year | price |
-- +--------------+------+-------+
-- | Nokia        | 2008 | 5000  |
-- | Nokia        | 2009 | 5000  |
-- | Apple        | 2011 | 9000  |
-- +--------------+------+-------+

SELECT
    Sales.year,
    Sales.price,
    Product.product_name
FROM Sales
LEFT JOIN Product
ON Sales.product_id = Product.product_id;

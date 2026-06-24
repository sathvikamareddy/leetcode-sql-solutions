# 1045. Customers Who Bought All Products

## Problem
Find the customer IDs of customers who bought all the products in the Product table.

## Approach
- Group records by `customer_id`.
- Count the number of distinct products purchased by each customer.
- Compare this count with the total number of products available in the `Product` table.
- Return customers whose counts match.

## SQL Solution

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*)
    FROM Product
);

## Explanation
- `GROUP BY customer_id` groups all purchases made by each customer.
- `COUNT(DISTINCT product_key)` counts unique products bought by a customer.
- The subquery calculates the total number of products.
- `HAVING` filters customers who purchased every product.

## Complexity Analysis
- Time Complexity: O(n)
- Space Complexity: O(n)

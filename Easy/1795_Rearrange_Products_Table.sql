# 1795. Rearrange Products Table

**Difficulty:** Easy

## Problem Statement

Table: `Products`

```text
+-------------+------+
| Column Name | Type |
+-------------+------+
| product_id  | int  |
| store1      | int  |
| store2      | int  |
| store3      | int  |
+-------------+------+
```

* `product_id` is the primary key for this table.
* Each row of this table indicates the price of `product_id` in each store.
* If a product is not available in a store, the price is `NULL`.

Write an SQL query to rearrange the `Products` table so that each row has `(product_id, store, price)`.

Return the result table in **any order**.

---

## Approach

* Select all available products from **store1**.
* Select all available products from **store2**.
* Select all available products from **store3**.
* Filter out `NULL` prices.
* Combine the three result sets using `UNION ALL`.

---

## SQL Solution

```sql
SELECT product_id, 'store1' AS store, store1 AS price
FROM Products
WHERE store1 IS NOT NULL

UNION ALL

SELECT product_id, 'store2' AS store, store2 AS price
FROM Products
WHERE store2 IS NOT NULL

UNION ALL

SELECT product_id, 'store3' AS store, store3 AS price
FROM Products
WHERE store3 IS NOT NULL;
```

---

## Explanation

### Step 1

Retrieve all products available in **store1**.

```sql
SELECT product_id, 'store1' AS store, store1 AS price
FROM Products
WHERE store1 IS NOT NULL;
```

### Step 2

Retrieve all products available in **store2**.

```sql
SELECT product_id, 'store2' AS store, store2 AS price
FROM Products
WHERE store2 IS NOT NULL;
```

### Step 3

Retrieve all products available in **store3**.

```sql
SELECT product_id, 'store3' AS store, store3 AS price
FROM Products
WHERE store3 IS NOT NULL;
```

### Step 4

Combine all the rows using `UNION ALL`.

```sql
UNION ALL
```

---

## Example

### Input

| product_id | store1 | store2 | store3 |
| ---------- | ------ | ------ | ------ |
| 0          | 95     | 100    | 105    |
| 1          | 70     | NULL   | 80     |

### Output

| product_id | store  | price |
| ---------- | ------ | ----- |
| 0          | store1 | 95    |
| 1          | store1 | 70    |
| 0          | store2 | 100   |
| 0          | store3 | 105   |
| 1          | store3 | 80    |

---

## Complexity Analysis

* **Time Complexity:** `O(n)`
* **Space Complexity:** `O(1)`

---

## Key Concepts

* `UNION ALL`
* `WHERE`
* `IS NOT NULL`
* Column Aliasing (`AS`)

---

## LeetCode Link

https://leetcode.com/problems/rearrange-products-table/

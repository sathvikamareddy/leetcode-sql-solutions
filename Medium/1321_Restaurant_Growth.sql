# 1321. Restaurant Growth

## Problem Statement
You are the restaurant owner and want to analyze a possible expansion.

Compute the **7-day moving sum** and **7-day moving average** of customer spending, where the window consists of the current day and the previous 6 days.

Return the result table ordered by `visited_on` in ascending order.

---

## Approach

1. Aggregate daily revenue using `GROUP BY visited_on`.
2. Use a window function to calculate the total revenue for the current day and previous 6 days.
3. Calculate the 7-day moving average using `AVG() OVER()`.
4. Round the average to 2 decimal places using `ROUND()`.
5. Exclude the first 6 days since a complete 7-day window is not available.

---

## SQL Solution

```sql
SELECT
    visited_on,
    SUM(amount) OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS amount,
    ROUND(
        AVG(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS average_amount
FROM (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
) c
LIMIT 1000000 OFFSET 6;
```

---

## Explanation

### Step 1: Calculate Daily Revenue

```sql
SELECT
    visited_on,
    SUM(amount) AS amount
FROM Customer
GROUP BY visited_on;
```

This combines all customer payments made on the same day.

### Step 2: Calculate 7-Day Moving Sum

```sql
SUM(amount) OVER (
    ORDER BY visited_on
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
)
```

Computes the total revenue generated in the last 7 days.

### Step 3: Calculate 7-Day Moving Average

```sql
AVG(amount) OVER (
    ORDER BY visited_on
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
)
```

Computes the average daily revenue over the same 7-day window.

### Step 4: Round Average

```sql
ROUND(..., 2)
```

Rounds the result to 2 decimal places.

### Step 5: Remove Incomplete Windows

```sql
LIMIT 1000000 OFFSET 6
```

Skips the first 6 rows because they do not have a full 7-day window.

---

## Complexity Analysis

- Time Complexity: **O(n log n)**
- Space Complexity: **O(n)**

where `n` is the number of unique dates.

---

## Key Concepts

- GROUP BY
- Window Functions
- SUM() OVER()
- AVG() OVER()
- Moving Average
- Sliding Window
- ORDER BY
- ROUND()

---

## LeetCode Link

https://leetcode.com/problems/restaurant-growth/

---
⭐ If you found this solution helpful, consider giving the repository a star!

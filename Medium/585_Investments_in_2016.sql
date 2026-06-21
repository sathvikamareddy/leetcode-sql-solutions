# 585. Investments in 2016

**Difficulty:** Medium  
**Platform:** LeetCode

## Problem

Write a solution to report the sum of all total investment values in **2016 (tiv_2016)**, where:

- The policyholder had the same `tiv_2015` value as one or more other policyholders.
- The policyholder's location (`lat`, `lon`) is unique and not shared with any other policyholder.

Round the result to **two decimal places**.

---

## SQL Solution

```sql
SELECT
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
```

---

## Approach

1. Find all `tiv_2015` values that appear more than once.
2. Find locations (`lat`, `lon`) that are unique.
3. Filter records that satisfy both conditions.
4. Sum the corresponding `tiv_2016` values.
5. Round the result to two decimal places.

---

## Concepts Used

- `GROUP BY`
- `HAVING`
- Subqueries
- Aggregate Functions (`SUM`)
- `ROUND()`

---

## Complexity Analysis

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

#SQL #LeetCode #Database #MySQL #DataAnalysis

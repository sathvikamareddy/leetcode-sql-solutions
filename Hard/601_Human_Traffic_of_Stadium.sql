# LeetCode 601. Human Traffic of Stadium

## Problem Statement
Write a query to display records that belong to a sequence of **three or more consecutive IDs** where the number of people is **greater than or equal to 100**.

Return the result ordered by `visit_date` in ascending order.

---

## Approach

This problem can be solved using the **Gaps and Islands** pattern.

### Steps:
1. Filter records where `people >= 100`.
2. Use `DENSE_RANK()` to assign rankings based on IDs.
3. Create groups of consecutive IDs using:
   ```sql
   id - DENSE_RANK() OVER (ORDER BY id)
   ```
4. Consecutive IDs will have the same group value.
5. Count records in each group and keep groups with at least 3 records.
6. Return the records ordered by `visit_date`.

---

## SQL Solution

```sql
WITH filtered AS (
    SELECT *,
           id - DENSE_RANK() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
)

SELECT
    id,
    visit_date,
    people
FROM filtered
WHERE grp IN (
    SELECT grp
    FROM filtered
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
ORDER BY visit_date;
```

---

## Example

### Input

| id | visit_date | people |
|----|------------|---------|
| 1 | 2017-01-01 | 10 |
| 2 | 2017-01-02 | 109 |
| 3 | 2017-01-03 | 150 |
| 4 | 2017-01-04 | 99 |
| 5 | 2017-01-05 | 145 |
| 6 | 2017-01-06 | 1455 |
| 7 | 2017-01-07 | 199 |
| 8 | 2017-01-09 | 188 |

### Output

| id | visit_date | people |
|----|------------|---------|
| 5 | 2017-01-05 | 145 |
| 6 | 2017-01-06 | 1455 |
| 7 | 2017-01-07 | 199 |
| 8 | 2017-01-09 | 188 |

---

## Key Learning

- Window Functions (`DENSE_RANK`)
- Common Table Expressions (CTEs)
- Gaps and Islands Pattern
- Identifying Consecutive Records Efficiently
- SQL Interview Preparation

---

### Complexity Analysis

- **Time Complexity:** O(n log n)
- **Space Complexity:** O(n)

---

⭐ If you found this solution helpful, consider giving the repository a star.

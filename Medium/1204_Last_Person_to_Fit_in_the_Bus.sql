# 1204. Last Person to Fit in the Bus

**Difficulty:** Medium

## Problem Statement

Table: `Queue`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| person_id   | int     |
| person_name | varchar |
| weight      | int     |
| turn        | int     |
+-------------+---------+
```

- `person_id` is the column with unique values for this table.
- `turn` determines the order in which people board the bus.
- The bus has a **maximum weight limit of 1000 kg**.

Write an SQL query to find the **name of the last person** who can fit on the bus without exceeding the weight limit.

Return the result table in **any order**.

---

## Approach

- Calculate the cumulative (running) sum of weights using a window function.
- Keep only the rows where the cumulative weight is less than or equal to **1000**.
- Select the person with the largest `turn` value among those remaining.

---

## SQL Solution

```sql
SELECT person_name
FROM (
    SELECT
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
) AS q
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
```

---

## Explanation

### Step 1
Compute the running total of weights in the order people board the bus.

```sql
SUM(weight) OVER (ORDER BY turn)
```

### Step 2
Filter out all rows where the cumulative weight exceeds **1000 kg**.

```sql
WHERE total_weight <= 1000
```

### Step 3
Sort the remaining rows by `turn` in descending order and return the first row.

```sql
ORDER BY turn DESC
LIMIT 1;
```

---

## Example

### Input

| person_id | person_name | weight | turn |
|-----------|------------|--------|------|
| 5 | Alice | 250 | 1 |
| 4 | Bob | 175 | 5 |
| 3 | Alex | 350 | 2 |
| 6 | John Cena | 400 | 3 |
| 1 | Winston | 500 | 6 |
| 2 | Marie | 200 | 4 |

### Running Total

| Turn | Person | Weight | Running Total |
|------|--------|--------|---------------|
| 1 | Alice | 250 | 250 |
| 2 | Alex | 350 | 600 |
| 3 | John Cena | 400 | 1000 |
| 4 | Marie | 200 | 1200 ❌ |

### Output

| person_name |
|-------------|
| John Cena |

---

## Complexity Analysis

- **Time Complexity:** `O(n log n)`
- **Space Complexity:** `O(n)`

---

## Key Concepts

- Window Functions
- `SUM() OVER()`
- Running Total (Cumulative Sum)
- `ORDER BY`
- Filtering
- `LIMIT`

---

## LeetCode Link

https://leetcode.com/problems/last-person-to-fit-in-the-bus/

# 1667. Fix Names in a Table

## Problem Link
https://leetcode.com/problems/fix-names-in-a-table/

## Difficulty
**Easy**

## Approach
- Extract the first character of each name using `LEFT(name, 1)`.
- Convert the first character to uppercase using `UPPER()`.
- Extract the remaining characters using `SUBSTRING(name, 2)`.
- Convert the remaining characters to lowercase using `LOWER()`.
- Combine both parts using `CONCAT()`.
- Sort the result by `user_id`.

## SQL Solution

```sql
SELECT
    user_id,
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;
```

## Explanation
- `LEFT(name, 1)` extracts the first letter.
- `UPPER()` capitalizes the first letter.
- `SUBSTRING(name, 2)` gets the rest of the name.
- `LOWER()` converts the remaining letters to lowercase.
- `CONCAT()` joins the capitalized first letter with the lowercase remaining letters.
- `ORDER BY user_id` returns the output sorted by `user_id`.

## Complexity Analysis
- **Time Complexity:** `O(n)`
- **Space Complexity:** `O(1)`

## Key SQL Functions Used
- `CONCAT()`
- `UPPER()`
- `LOWER()`
- `LEFT()`
- `SUBSTRING()`
- `ORDER BY`

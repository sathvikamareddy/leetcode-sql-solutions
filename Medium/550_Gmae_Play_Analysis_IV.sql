# 550. Game Play Analysis IV

## 🟡 Difficulty: Medium

### Problem

Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places.

In other words, determine the number of players who logged in on the day immediately following their initial login and divide it by the total number of players.

---

## Table: Activity

| Column Name  | Type |
| ------------ | ---- |
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

### Primary Key

```sql
(player_id, event_date)
```

Each row of this table is a record of a player's activity on a certain day.

---

## Example

### Input

#### Activity

| player_id | device_id | event_date | games_played |
| --------- | --------- | ---------- | ------------ |
| 1 | 2 | 2016-03-01 | 5 |
| 1 | 2 | 2016-03-02 | 6 |
| 2 | 3 | 2017-06-25 | 1 |
| 3 | 1 | 2016-03-02 | 0 |
| 3 | 4 | 2018-07-03 | 5 |

### Output

| fraction |
| -------- |
| 0.33 |

### Explanation

Player 1 logged in on 2016-03-01 and again on 2016-03-02, which is the day immediately after their first login.

Players 2 and 3 did not log in on the day after their first login.

Therefore:

- Players who returned the next day = 1
- Total players = 3

Fraction = 1 / 3 = 0.33

---

## SQL Solution

```sql
SELECT
    ROUND(
        COUNT(DISTINCT a.player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT
        player_id,
        MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) f
ON a.player_id = f.player_id
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);
```

---

## Approach

1. Find each player's first login date using `MIN(event_date)`.
2. Check whether the player logged in again exactly one day after their first login.
3. Count all such distinct players.
4. Divide by the total number of distinct players.
5. Round the result to 2 decimal places.

---

## Complexity Analysis

- **Time Complexity:** O(N)
- **Space Complexity:** O(N)

---

## Concepts Practiced

- Aggregate Functions (`MIN`)
- Subqueries
- Joins
- Date Functions (`DATE_ADD`)
- DISTINCT
- SQL Analytics

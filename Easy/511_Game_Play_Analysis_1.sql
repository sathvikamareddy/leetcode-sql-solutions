# LeetCode 511. Game Play Analysis I

**Difficulty:** Easy  
**Link:** https://leetcode.com/problems/game-play-analysis-i/

## Problem

Write a solution to find the first login date for each player.

Return the result table in any order.

---

## Schema

### Activity

| Column Name  | Type |
|-------------|------|
| player_id   | int  |
| device_id   | int  |
| event_date  | date |
| games_played| int  |

- `(player_id, event_date)` is the primary key of this table.
- This table shows the activity of players of some games.
- Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using a specific device.

---

## SQL Solution

```sql
SELECT
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
```

---

## Explanation

- `GROUP BY player_id` groups all records belonging to the same player.
- `MIN(event_date)` returns the earliest login date for each player.
- The result contains the player's ID and their first login date.

---

## Example Output

| player_id | first_login |
|-----------|------------|
| 1 | 2016-03-01 |
| 2 | 2017-06-25 |
| 3 | 2016-03-02 |

---

## Concepts Used

- `SELECT`
- `GROUP BY`
- `MIN()`
- Aggregate Functions

---

### Time Complexity
- **O(n)**

### Space Complexity
- **O(1)** (excluding result storage)

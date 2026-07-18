# 1050. Actors and Directors Who Cooperated At Least Three Times

**Difficulty:** Easy

## Problem

Write a solution to find all the pairs **(actor_id, director_id)** where the actor has cooperated with the director **at least three times**.

Return the result table in **any order**.

---

## Table Schema

### ActorDirector

| Column Name | Type |
|-------------|------|
| actor_id | int |
| director_id | int |
| timestamp | int |

- `timestamp` is the UNIX timestamp of the event.
- Each row indicates that an actor cooperated with a director.

---

## Example

### Input

| actor_id | director_id | timestamp |
|----------|-------------|-----------|
| 1 | 1 | 0 |
| 1 | 1 | 1 |
| 1 | 1 | 2 |
| 1 | 2 | 3 |
| 1 | 2 | 4 |
| 2 | 1 | 5 |
| 2 | 1 | 6 |

### Output

| actor_id | director_id |
|----------|-------------|
| 1 | 1 |

---

## SQL Solution

```sql
SELECT
    actor_id,
    director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3;
```

---

## Explanation

- Group the records by `actor_id` and `director_id`.
- Count the number of collaborations for each actor-director pair.
- Use the `HAVING` clause to keep only those pairs that have collaborated **three or more times**.

---

## Complexity Analysis

- **Time Complexity:** `O(n)`
- **Space Complexity:** `O(n)`

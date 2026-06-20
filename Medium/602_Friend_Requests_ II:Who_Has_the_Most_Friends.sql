# 602. Friend Requests II: Who Has the Most Friends

## Problem
Find the person who has the most friends and return their ID along with the number of friends.

A friendship is established when a friend request is accepted. Since friendship is mutual, both the requester and accepter should be counted as friends.

---

## Approach

1. Extract all user IDs from the `requester_id` column.
2. Extract all user IDs from the `accepter_id` column.
3. Combine them using `UNION ALL` to preserve all friendship records.
4. Count the total occurrences of each user ID.
5. Sort the counts in descending order.
6. Return the user with the highest friend count.

---

## SQL Solution

```sql
SELECT
    id,
    COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
) AS friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;
```

---

## Example

### Input

| requester_id | accepter_id | accept_date |
| ------------ | ----------- | ----------- |
| 1 | 2 | 2016/06/03 |
| 1 | 3 | 2016/06/08 |
| 2 | 3 | 2016/06/08 |
| 3 | 4 | 2016/06/09 |

### Output

| id | num |
|----|-----|
| 3 | 3 |

### Explanation

- User 1 has 2 friends: {2, 3}
- User 2 has 2 friends: {1, 3}
- User 3 has 3 friends: {1, 2, 4}
- User 4 has 1 friend: {3}

Therefore, user **3** has the most friends.

---

## Complexity Analysis

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

where `n` is the number of rows in the `RequestAccepted` table.

---

## Key Concept

Since friendship is bidirectional, both `requester_id` and `accepter_id` contribute equally to a user's friend count. Using `UNION ALL` ensures every friendship participation is counted correctly.

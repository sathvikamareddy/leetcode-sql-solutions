# LeetCode 626. Exchange Seats
## Question

Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

Return the result table ordered by id in ascending order.

### Table: Seat

| Column Name | Type |
|------------|------|
| id | int |
| student | varchar |

`id` is the primary key (column with unique values) for this table.

### Example Input

| id | student |
|----|---------|
| 1 | Abbot |
| 2 | Doris |
| 3 | Emerson |
| 4 | Green |
| 5 | Jeames |

### Example Output

| id | student |
|----|---------|
| 1 | Doris |
| 2 | Abbot |
| 3 | Green |
| 4 | Emerson |
| 5 | Jeames |

---

# Solution

```sql
SELECT
    CASE
        WHEN id % 2 = 1
             AND id = (SELECT MAX(id) FROM Seat)
        THEN id
        WHEN id % 2 = 1
        THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;

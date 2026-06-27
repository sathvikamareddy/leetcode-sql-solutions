# 196 : Delete Duplicate Emails

## Problem

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key.
- Each row of this table contains an email.
- The emails will not contain uppercase letters.
- Delete all duplicate emails, keeping only one unique email with the smallest `id`.

### Example

**Input:**

| id | email |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

**Output:**

| id | email |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

---

## SQL Solution

```sql
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;
```

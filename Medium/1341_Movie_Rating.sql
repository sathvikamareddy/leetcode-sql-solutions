# 1341. Movie Rating

**Difficulty:** Medium

## Problem Statement

Table: `Movies`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| movie_id    | int     |
| title       | varchar |
+-------------+---------+
movie_id is the primary key.
title is the name of the movie.
```

Table: `Users`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| user_id     | int     |
| name        | varchar |
+-------------+---------+
user_id is the primary key.
name is the name of the user.
```

Table: `MovieRating`

```text
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| movie_id    | int     |
| user_id     | int     |
| rating      | int     |
| created_at  | date    |
+-------------+---------+
(movie_id, user_id) is the primary key.
This table contains the rating given by a user to a movie.
```

## SQL Solution

```sql
(
    SELECT u.name AS results
    FROM MovieRating mr
    JOIN Users u
        ON mr.user_id = u.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name ASC
    LIMIT 1
)

UNION ALL

(
    SELECT m.title AS results
    FROM MovieRating mr
    JOIN Movies m
        ON mr.movie_id = m.movie_id
    WHERE mr.created_at >= '2020-02-01'
      AND mr.created_at < '2020-03-01'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    LIMIT 1
);
```

## Explanation

- Count the number of ratings given by each user.
- Return the user with the highest number of ratings.
- If multiple users have the same count, return the lexicographically smaller name.
- Filter ratings to **February 2020**.
- Calculate the average rating for each movie.
- Return the movie with the highest average rating.
- If multiple movies have the same average rating, return the lexicographically smaller title.
- Use `UNION ALL` to combine both required results into a single output.

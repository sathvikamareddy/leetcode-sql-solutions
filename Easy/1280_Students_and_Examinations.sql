-- LeetCode 1280
-- Students and Examinations
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/students-and-examinations/

-- Problem:
-- Write a solution to find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.

-- Schema:
-- Students
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | student_id  | int     |
-- | student_name| varchar |
-- +-------------+---------+
-- student_id is the primary key.

-- Subjects
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | subject_name | varchar |
-- +--------------+---------+
-- subject_name is the primary key.

-- Examinations
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | student_id   | int     |
-- | subject_name | varchar |
-- +--------------+---------+
-- There is no primary key for this table.
-- Each row indicates that a student attended an exam for a subject.

-- Example Output:
-- +------------+--------------+--------------+----------------+
-- | student_id | student_name | subject_name | attended_exams |
-- +------------+--------------+--------------+----------------+
-- | 1          | Alice        | Math         | 3              |
-- | 1          | Alice        | Physics      | 2              |
-- | 2          | Bob          | Math         | 1              |
-- | 2          | Bob          | Physics      | 0              |
-- +------------+--------------+--------------+----------------+

-- SQL Solution:

SELECT
s.student_id,
s.student_name,
sub.subject_name,
COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND sub.subject_name = e.subject_name
GROUP BY
s.student_id,
s.student_name,
sub.subject_name
ORDER BY
s.student_id,
sub.subject_name;

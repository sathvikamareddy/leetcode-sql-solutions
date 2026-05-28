-- LeetCode 1661
-- Average Time of Process per Machine
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/

-- Question:
-- There is a factory website that has several machines each running the same number of processes.
-- Write a solution to find the average time each machine takes to complete a process.

-- The time to complete a process is:
-- end timestamp - start timestamp

-- The average time is calculated by:
-- total processing time of all processes on the machine / number of processes

-- Return the result table with:
-- machine_id
-- processing_time (rounded to 3 decimal places)

-- Schema:
-- Activity Table
-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | machine_id     | int     |
-- | process_id     | int     |
-- | activity_type  | enum    |
-- | timestamp      | float   |
-- +----------------+---------+

-- activity_type is ENUM('start', 'end')

-- Example Output:
-- +------------+-----------------+
-- | machine_id | processing_time |
-- +------------+-----------------+
-- | 0          | 0.894           |
-- | 1          | 0.995           |
-- | 2          | 1.456           |
-- +------------+-----------------+

SELECT 
    a1.machine_id,

    ROUND(
        AVG(a2.timestamp - a1.timestamp),
        3
    ) AS processing_time

FROM Activity a1

JOIN Activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id

WHERE a1.activity_type = 'start'
AND a2.activity_type = 'end'

GROUP BY a1.machine_id;


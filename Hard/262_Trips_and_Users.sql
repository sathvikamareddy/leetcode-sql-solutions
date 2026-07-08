
LeetCode 262. Trips and Users
Difficulty: Hard

Problem:
The cancellation rate is computed by dividing the number of canceled 
(by client or driver) requests with unbanned users by the total number 
of requests with unbanned users on that day.

Find the cancellation rate of requests with unbanned users 
(both client and driver must not be banned) each day between 
"2013-10-01" and "2013-10-03" with at least one trip.

Round Cancellation Rate to two decimal points.


Tables:

Trips
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| client_id   | int     |
| driver_id   | int     |
| city_id     | int     |
| status      | enum    |
| request_at  | date    |
+-------------+---------+

Users
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| users_id    | int     |
| banned      | enum    |
| role        | enum    |
+-------------+---------+


Approach:
1. Join Trips table with Users table twice:
   - Once for clients
   - Once for drivers

2. Filter only trips where:
   - Client is not banned
   - Driver is not banned
   - Date is between 2013-10-01 and 2013-10-03

3. Calculate cancellation rate:
   Cancelled Trips / Total Trips

4. Group result by each request date.


SQL Solution:
*/

SELECT 
    request_at AS Day,
    ROUND(
        SUM(
            CASE
                WHEN status != 'completed' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS 'Cancellation Rate'
FROM Trips t
JOIN Users c
    ON t.client_id = c.users_id
JOIN Users d
    ON t.driver_id = d.users_id
WHERE c.banned = 'No'
AND d.banned = 'No'
AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;


/*
Example Output:

+------------+-------------------+
| Day        | Cancellation Rate |
+------------+-------------------+
|2013-10-01  | 0.50              |
|2013-10-02  | 0.00              |
|2013-10-03  | 0.33              |
+------------+-------------------+


Concepts Used:
✔ INNER JOIN
✔ Self Join on Users table
✔ CASE Statement
✔ Aggregate Functions
✔ ROUND()
✔ GROUP BY
✔ Date Filtering

-- LeetCode 1527. Patients With a Condition
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/patients-with-a-condition/

-- Table: Patients

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |
+--------------+---------+
patient_id is the primary key for this table.
'conditions' contains a space-separated list of medical condition codes.
A patient has Type I Diabetes if any of the condition codes starts with 'DIAB1'.

-- Question:
-- Write an SQL query to find the patient_id, patient_name, and conditions
-- of the patients who have Type I Diabetes.
-- Return the result table in any order.

SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';

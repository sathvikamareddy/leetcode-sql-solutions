<div align="center">
  
# LeetCode SQL Solutions

</div>

<p align="center">
  <img src="https://img.shields.io/badge/LeetCode-SQL%20Solutions-orange?style=for-the-badge&logo=leetcode"/>
  <img src="https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=mysql"/>
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge"/>
</p>

## Overview

This repository contains my daily SQL problem-solving practice from LeetCode.

The goal of this repository is to strengthen:

* SQL Query Writing
* Database Concepts
* Problem-Solving Skills
* Interview Preparation
* Consistency in Coding Practice

---

## Topics Covered

* Basic Queries
* WHERE, ORDER BY, GROUP BY
* Aggregate Functions
* Joins
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* CASE Statements
* String Functions
* Date Functions
* Ranking Functions

---

## Repository Structure

```text
leetcode-sql-solutions/
│
├── Easy/
├── Medium/
├── Hard/
└── README.md
```

---

## Problem Format

Each solution file contains:

* Problem Name
* Clean SQL Query
* Readable Formatting

Example:

```sql
-- LeetCode 181
-- Employees Earning More Than Their Managers

SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;
```

---

## Progress Tracker

| Difficulty | Problems Solved |
| ---------- | --------------- |
| Easy       | 6               |
| Medium     | 0               |
| Hard       | 0               |
| TOTAL      | 6               |
---

## Solved Problems

| Day | Q no | Problem | Difficulty | Solution |
|-----|----|----------|------------|----------|
| Day 1 | 1757 | Recyclable and Low Fat Products | Easy | [View](Easy/1757_Recyclable_and_Low_Fat_Products.sql) |
| Day 2 | 584 | Find Customer Referee | Easy | [View](Easy/584_Find_Customer_Referee.sql) |
| Day 3 | 595 | Big Countries | Easy | [View](Easy/595_Big_Countries.sql) |
| Day 4 | 1148 | Article Views I | Easy | [View](Easy/1148_Article_Views.sql) |
| Day 5 | 1683 | Invalid Tweets | Easy | [View](Easy/1683_Invalid_Tweets.sql) |
| Day 6 | 1378 | Replace Employee ID With The Unique Identifier| Easy | [View](Easy/1378_Replace_Employee_Id_With_The_Unique_Identifier.sql) |
---

## Goals

* Solve SQL problems consistently
* Improve query optimization skills
* Prepare for coding interviews
* Build a strong GitHub profile

---

## Platform

* LeetCode SQL Problems

---

## Connect With Me

<p align="left">
  <a href="https://github.com/sathvikamareddy">
    <img src="https://img.shields.io/badge/GitHub-Profile-black?style=for-the-badge&logo=github"/>
  </a>

  <a href="https://www.linkedin.com/in/mareddy-sathvika-483b76359/">
    <img src="https://img.shields.io/badge/LinkedIn-Profile-blue?style=for-the-badge&logo=linkedin"/>
  </a>
</p>

---

⭐ Consistency beats intensity. Daily progress matters.

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
| Easy       | 16              |
| Medium     | 0               |
| Hard       | 0               |
| TOTAL      | 16              |

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
| Day 7 | 1068 | Product Sales Analysis | Easy |[View](Easy/1068_Product_Sales_Analysis1.sql) |
| Day 8 | 1581 |  Customer Who Visited but Did Not Make Any Transactions | Easy | [View](Easy/1581_Customer_Who_Visited_but_Did_Not_Make_Any_Transactions.sql)
| Day 9 | 197 | Rising Temperature | Easy |[View](Easy/197_Rising_Temperature) |
| Day-10| 1251| Average Selling Price | Easy | [View](Easy/1251_Average_Selling_Price) |
| Day-11|620| Not Boring Movies | Easy|[View](Easy/620_Not_Boring_Movies.sql)|
| Day-12|1661|Average Time of Process per Machine| Easy | [View](Easy/1661_Average_Time_of_Process_per_Machine.sql)|
|Day-13| 577|Employee Bonus|Easy|[View](Easy/577_Employee_Bonous.sql)|
|Day-14|1280|Students and Examinination|Easy|[View](Easy/1280_Students_and_Examinations.sql)|
|Day-15|1934|Confirmation Rate|Easy|[View](Easy/1934_Confirmation_Rate.sql)|
|Day-16|511|Game Play Analysis-1|Easy|[View](Easy/511_Game_Play_Analysis_1.sql)|
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

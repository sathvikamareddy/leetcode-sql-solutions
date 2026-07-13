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
| Easy       | 28             |
| Medium     | 17              |
| Hard       | 6              |
| TOTAL      | 51           |

---

## 📊 Problem Difficulty Guide

| Symbol | Difficulty |
|---------|------------|
| 🟢 | Easy |
| 🟡 | Medium |
| 🔴 | Hard |

----

## Solved Problems

| Day | Problem ID | Problem Name | Difficulty | Solution |
|:---:|:---:|---|:---:|:---:|
| Day 1 | 1757 | Recyclable and Low Fat Products | 🟢 Easy | 🔗 [View](Easy/1757_Recyclable_and_Low_Fat_Products.sql) |
| Day 2 | 584 | Find Customer Referee | 🟢 Easy | 🔗 [View](Easy/584_Find_Customer_Referee.sql) |
| Day 3 | 595 | Big Countries | 🟢 Easy | 🔗 [View](Easy/595_Big_Countries.sql) |
| Day 4 | 1148 | Article Views I | 🟢 Easy | 🔗 [View](Easy/1148_Article_Views.sql) |
| Day 5 | 1683 | Invalid Tweets | 🟢 Easy | 🔗 [View](Easy/1683_Invalid_Tweets.sql) |
| Day 6 | 1378 | Replace Employee ID With The Unique Identifier | 🟢 Easy | 🔗 [View](Easy/1378_Replace_Employee_Id_With_The_Unique_Identifier.sql) |
| Day 7 | 1068 | Product Sales Analysis I | 🟢 Easy | 🔗 [View](Easy/1068_Product_Sales_Analysis1.sql) |
| Day 8 | 1581 | Customer Who Visited but Did Not Make Any Transactions | 🟢 Easy | 🔗 [View](Easy/1581_Customer_Who_Visited_but_Did_Not_Make_Any_Transactions.sql) |
| Day 9 | 197 | Rising Temperature | 🟢 Easy | 🔗 [View](Easy/197_Rising_Temperature.sql) |
| Day 10 | 1251 | Average Selling Price | 🟢 Easy | 🔗 [View](Easy/1251_Average_Selling_Price.sql) |
| Day 11 | 620 | Not Boring Movies | 🟢 Easy | 🔗 [View](Easy/620_Not_Boring_Movies.sql) |
| Day 12 | 1661 | Average Time of Process per Machine | 🟢 Easy | 🔗 [View](Easy/1661_Average_Time_of_Process_per_Machine.sql) |
| Day 13 | 577 | Employee Bonus | 🟢 Easy | 🔗 [View](Easy/577_Employee_Bonous.sql) |
| Day 14 | 1280 | Students and Examinations | 🟢 Easy | 🔗 [View](Easy/1280_Students_and_Examinations.sql) |
| Day 15 | 1934 | Confirmation Rate | 🟢 Easy | 🔗 [View](Easy/1934_Confirmation_Rate.sql) |
| Day 16 | 511 | Game Play Analysis I | 🟢 Easy | 🔗 [View](Easy/511_Game_Play_Analysis_1.sql) |
| Day 17 | 1075 | Project Employees I | 🟢 Easy | 🔗 [View](Easy/1075_Project_Employees_I.sql) |
| Day 18 | 1211 | Queries Quality and Percentage | 🟢 Easy | 🔗 [View](Easy/1211_Queries_Quality_and_percentage.sql) |
| Day 19 | 1193 | Monthly Transactions I | 🟢 Easy | 🔗 [View](Easy/1193_Monthly_Transactions_I.sql) |
| Day 20 | 1174 | Immediate Food Delivery II | 🟢 Easy | 🔗 [View](Easy/1174_Immediate_Food_Delivery_II.sql) |
| Day 21 | 1633 | Percentage of Users Attended a Contest | 🟢 Easy | 🔗 [View](Easy/1633_Percentage_of_Users_Attended_a_Contest.sql) |
| Day 22 | 1141 | User Activity for the Past 30 Days I | 🟢 Easy | 🔗 [View](Easy/1141_User_Activity_for_the_Past_30_Days_I.sql) |
| Day 23 | 619 | Biggest Single Number | 🟢 Easy | 🔗 [View](Easy/619_Biggest_Single_Number.sql) |
| Day 24 | 178 | Rank Scores | 🟡 Medium | 🔗 [View](Medium/178_Rank_Scores.sql) |
| Day 25 | 180 | Consecutive Numbers | 🟡 Medium | 🔗 [View](Medium/180_Consecutive_Numbers.sql) |
| Day 26 | 184 | Department Highest Salary | 🟡 Medium | 🔗 [View](Medium/184_Department_Highest_Salary.sql) |
| Day 27 | 626 | Exchange Seats | 🟡 Medium | 🔗 [View](Medium/626_Exchange_Seats.sql) |
| Day 28 | 550 | Game Play Analysis IV | 🟡 Medium | 🔗 [View](Medium/550_Game_Play_Analysis_IV.sql) |
|Day-29|177|Nth Highest Salary|🟡 Medium|🔗[View](Medium/177_Nth_Highest_Salary.sql)|
|Day-30|601|Human Traffic by Stadium|🔴 Hard|🔗[View](Hard/601_Human_Traffic_of_Stadium.sql)|
|Day-31|185|Department Top Three Salaries|🔴 Hard|🔗[View](Hard/185_Department_Top_Three_Salaries.sql)|
|Day-32|1321|Restaurant Growth|🟡 Medium |🔗[View](Medium/1321_Restaurant_Growth.sql)|
|Day-33|602|Friend Requests II: Who Has the Most Friends|🟡 Medium|🔗[View](Medium/602_Friend_Requests_II:Who_Has_the_Most_Friends.sql)|
|Day-34|585|Investments in 2016|🟡 Medium|🔗[View](Medium/585_Investments_in_2016.sql)|
|Day-35|608|Tree Node|🟡 Medium|🔗[View](Medium/608_Tree_Node.sql)|
|Day-36|610|Triangle Judgement|🟡 Medium|🔗[View](Medium/610_Triangle_Judgement.sql)|
|Day-37|1045|Customers Who Bought All Products|🟡 Medium|🔗[View](Medium/1045_Customers_Who_Bought_All_Products.sql)|
|Day-38|1204|Last Person to Fit in the Bus|🟡 Medium|🔗[View](Medium/1204_Last_Person_to_Fit_in_the_Bus.sql)|
|Day-39|1667|Fix Names in a Table |🟡 Medium|🔗[View](Medium/1667_Fix_Names_in_a_Table.sql)|
|Day-40|1527|Patients with a Condition|🟢 Easy |🔗[View](Easy/1527_Patients_with_a_Conditions.sql)|
|Day-41|196|Delete Duplicate Emails|🟢 Easy|🔗[View](Easy/196_Delete_Duplicate_Emails.sql)|
|Day-42|1795|Rearrange Products Table|🟢 Easy|🔗[View](1795_Rearrange_Products_Table.sql)|
|Day-43|1341|Movie Rating|🟡 Medium|🔗[View](Medium/1341_Movie_Rating.sql)|
|Day-44|1174|Immediate Food Delivery II|🟡 Medium|🔗[View](Medium/1174_Immediate_Food_Delivery_II.sql)|
|Day-45|1164| Product Price at a Given Date|🟡 Medium|🔗[View](Medium/1164_Product_Price_at_a_Given_Date.sql)|
|Day-46|1731| The Number of Employees Which Report to Each Employee|🟢 Easy|🔗[View](Easy/1731_Employees_Report_To_Each_Employee.sql)|
|Day-47|1789|Primary Department for Each Employee|🟢 Easy|🔗[View](Easy/1789_Primary_Department_for_Each_Employee.sql)|
|Day-48|262|Trips and Users|🔴 Hard|🔗[View](Hard/262_Trips_and_Users.sql)|
|Day-49|571|Median Given Frequency of Nuumbers|🔴 Hard|🔗[View](Hard/571_Find_Median_Given_Frequency_of_Numbers.sql)|
|Day-50|569|Median Employee Salary|🔴 Hard|🔗[View](Hard/569_Median_Employee_Salary.sql)|

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
<div>
⭐ If you find these SQL solutions helpful in your learning journey, please consider giving this repository a star. Your support is greatly appreciated!
</div>

------


<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=22&pause=1200&color=88C0D0&center=true&vCenter=true&width=850&lines=SELECT+*+FROM+LeetCode_SQL;CREATE+TABLE+Daily_SQL_Practice;INSERT+INTO+Skills+VALUES('SQL');SELECT+COUNT(*)+FROM+Solved_Problems;UPDATE+Knowledge+SET+Level='Advanced';ALTER+TABLE+Skills+ADD+Window_Functions;COMMIT+SQL_Journey;" />
</p>

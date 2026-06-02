# LeetCode 1075 - Project Employees I

**Difficulty:** Easy  
**Link:** https://leetcode.com/problems/project-employees-i/

## Table: Project

| project_id | employee_id |
|------------|------------|
| 1 | 1 |
| 1 | 2 |
| 1 | 3 |
| 2 | 1 |
| 2 | 4 |

## Table: Employee

| employee_id | name   | experience_years |
|------------|--------|------------------|
| 1 | Khaled | 3 |
| 2 | Ali    | 2 |
| 3 | John   | 1 |
| 4 | Doe    | 2 |

## Expected Output

| project_id | average_years |
|------------|---------------|
| 1 | 2.00 |
| 2 | 2.50 |

---

## SQL Solution

```sql
SELECT
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;
```

---

## Explanation

### Step 1: Join Both Tables

```sql
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
```

| project_id | employee_id | name | experience_years |
|------------|------------|------|------------------|
| 1 | 1 | Khaled | 3 |
| 1 | 2 | Ali | 2 |
| 1 | 3 | John | 1 |
| 2 | 1 | Khaled | 3 |
| 2 | 4 | Doe | 2 |

---

### Step 2: Group by Project

```sql
GROUP BY p.project_id
```

#### Project 1

| experience_years |
|------------------|
| 3 |
| 2 |
| 1 |

Average = (3 + 2 + 1) / 3 = **2.00**

#### Project 2

| experience_years |
|------------------|
| 3 |
| 2 |

Average = (3 + 2) / 2 = **2.50**

---

### Step 3: Calculate Average

```sql
AVG(e.experience_years)
```

| project_id | avg_experience |
|------------|---------------|
| 1 | 2.00 |
| 2 | 2.50 |

---

### Step 4: Round to 2 Decimal Places

```sql
ROUND(AVG(e.experience_years), 2)
```

| project_id | average_years |
|------------|---------------|
| 1 | 2.00 |
| 2 | 2.50 |

---

## Concepts Used

- INNER JOIN
- AVG()
- ROUND()
- GROUP BY
- Table Aliases

---

## Complexity Analysis

**Time Complexity:** O(n)

**Space Complexity:** O(1)

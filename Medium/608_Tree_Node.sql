# 608. Tree Node

**Difficulty:** Medium  
**Platform:** LeetCode

## Problem Statement

Table: `Tree`

| Column Name | Type |
|------------|------|
| id | int |
| p_id | int |

`id` is the node id and `p_id` is its parent node id.

Each node in the tree can be one of the following types:

- **Root**: If the node has no parent.
- **Leaf**: If the node has no children.
- **Inner**: If the node has a parent and at least one child.

Write an SQL query to report the type of each node in the tree.

Return the result table in any order.

---

## SQL Solution

```sql
SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id NOT IN (
            SELECT DISTINCT p_id
            FROM Tree
            WHERE p_id IS NOT NULL
        ) THEN 'Leaf'
        ELSE 'Inner'
    END AS type
FROM Tree;
```

---

## Explanation

- A node with `p_id IS NULL` is the **Root** node.
- A node whose `id` does not appear in the `p_id` column has no children, making it a **Leaf** node.
- All remaining nodes have both a parent and at least one child, so they are classified as **Inner** nodes.

---

## Concepts Used

- `CASE WHEN`
- `IS NULL`
- Subqueries
- `DISTINCT`
- Tree Traversal Logic

---

## Complexity Analysis

- **Time Complexity:** O(n)
- **Space Complexity:** O(n)

---

## LeetCode Link

https://leetcode.com/problems/tree-node/

---

### File Name

`608_Tree_Node.sql`

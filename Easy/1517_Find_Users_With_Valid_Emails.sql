1517-Find Users With Valid E-Mails


## Problem
Write a solution to find the users who have valid emails.

A valid e-mail has a prefix name and a domain where:
- The prefix name may contain letters (uppercase or lowercase), digits, underscore (`_`), period (`.`), and dash (`-`).
- The prefix name **must start with a letter**.
- The domain must be exactly **`@leetcode.com`** in lowercase.

Return the result table in **any order**.

---

## SQL Solution

```sql
SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$';
```

---

## Explanation
- `^` → Matches the beginning of the email.
- `[A-Za-z]` → Ensures the email prefix starts with a letter.
- `[A-Za-z0-9._-]*` → Allows letters, digits, `.`, `_`, and `-` in the remaining prefix.
- `@leetcode\\.com` → Matches the required domain exactly.
- `$` → Ensures there are no extra characters after the domain.

---

## Key Concept
Use the **REGEXP** operator to validate email patterns according to the given rules.

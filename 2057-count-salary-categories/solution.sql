# Write your MySQL query statement below
WITH t AS 
(
    SELECT account_id, income,
    CASE 
        WHEN income < 20000 THEN "Low Salary"
        WHEN income BETWEEN 20000 AND 50000 THEN "Average Salary"
        ELSE "High Salary" 
    END AS category
    FROM Accounts
)
, 
counts AS 
(
    SELECT category, COUNT(*) AS accounts_count
    FROM t
    GROUP BY category
)
SELECT c.category, COALESCE(accounts_count,0) AS accounts_count
FROM (
    SELECT "Low Salary" AS category
    UNION
    SELECT "High Salary"
    UNION
    SELECT "Average Salary"
) AS c
LEFT JOIN counts 
ON c.category = counts.category


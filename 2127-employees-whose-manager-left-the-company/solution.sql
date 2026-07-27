# Write your MySQL query statement below
WITH managers_left AS (
    SELECT employee_id
    FROM Employees
    WHERE manager_id NOT IN (SELECT DISTINCT employee_id FROM Employees) AND salary < 30000
    ORDER BY employee_id
)
SELECT * FROM managers_left;

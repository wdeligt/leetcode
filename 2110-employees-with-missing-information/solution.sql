# Write your MySQL query statement below

WITH joined AS
(
SELECT e.employee_id, e.name, s.salary
FROM Employees e
LEFT JOIN Salaries s
ON e.employee_id = s.employee_id

UNION

SELECT s.employee_id, e.name, s.salary
FROM Salaries s
LEFT JOIN Employees e
ON s.employee_id = e.employee_id
)

SELECT employee_id FROM joined
WHERE name IS NULL OR salary IS NULL
ORDER BY employee_id;


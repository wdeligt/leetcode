# Write your MySQL query statement below
WITH managers AS (
    SELECT employee_id, name
    FROM Employees 
    WHERE employee_id IN (SELECT reports_to FROM Employees)
)

SELECT managers.employee_id, managers.name, COUNT(reports_to) AS reports_count, ROUND(AVG(Employees.age), 0) AS average_age
FROM managers
JOIN Employees 
ON managers.employee_id = Employees.reports_to
GROUP BY managers.employee_id
ORDER BY managers.employee_id;

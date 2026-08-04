# Write your MySQL query statement below
WITH rnk_sal AS 
(
    SELECT id, name, salary, departmentId,
    DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)

SELECT d.name AS Department, r.name AS Employee, r.salary AS Salary
FROM rnk_sal r
JOIN Department d
ON r.departmentId = d.id
WHERE rnk < 4;

# Write your MySQL query statement below
WITH p AS (
    SELECT employee_id, department_id
    FROM Employee
    WHERE primary_flag = 'Y'
    GROUP BY employee_id
),
one_dep AS 
(
    SELECT employee_id, department_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(employee_id) = 1
)

SELECT *
FROM p
UNION
SELECT *
FROM one_dep



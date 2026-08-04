# Write your MySQL query statement below
WITH rnk AS 
(
    SELECT id, salary, 
        DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk_s
    FROM Employee
)

SELECT MAX(salary) AS SecondHighestSalary
FROM rnk
WHERE rnk_s = 2;

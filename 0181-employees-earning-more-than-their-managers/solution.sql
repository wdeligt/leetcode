# Write your MySQL query statement below
SELECT t1.name as Employee
FROM Employee AS t1
JOIN Employee AS t2
ON t1.managerId = t2.id
WHERE t2.salary < t1.salary;

# Write your MySQL query statement below
SELECT name AS NAME, SUM(amount) AS BALANCE
FROM Transactions t
JOIN Users u
ON t.account = u.account
GROUP BY t.account
HAVING SUM(amount) > 10000;

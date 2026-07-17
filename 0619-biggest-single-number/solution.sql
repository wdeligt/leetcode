# Write your MySQL query statement below
WITH UniqueNumbers AS 
(
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(NUM)= 1
)

SELECT MAX(num) AS num
FROM UniqueNumbers;

# Write your MySQL query statement below
WITH cum AS (
    SELECT person_name, 
    SUM(weight) OVER (ORDER BY turn) AS bus_weight
    FROM Queue
)

SELECT person_name
FROM cum
WHERE bus_weight <=1000 
ORDER BY bus_weight DESC LIMIT 1;

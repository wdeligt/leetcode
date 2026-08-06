# Write your MySQL query statement below
WITH cte AS 
(
    SELECT r.id, u.id AS user_id, name, SUM(distance) AS travelled_distance
    FROM Rides r
    JOIN Users u
    ON r.user_id = u.id
    GROUP BY name
)
SELECT DISTINCT Users.name, COALESCE(travelled_distance, 0) AS travelled_distance from Users
LEFT JOIN cte ON Users.id = cte.user_id
GROUP BY Users.id
ORDER BY travelled_distance DESC, name 

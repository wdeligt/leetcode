# Write your MySQL query statement below
WITH first_login AS 
(
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(COUNT(*) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity
JOIN first_login
ON Activity.player_id = first_login.player_id AND Activity.event_date = DATE_ADD(first_login.first_login_date, INTERVAL 1 DAY)

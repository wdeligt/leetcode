# Write your MySQL query statement below
with cte as 
(
    SELECT m.employee_id, YEARWEEK(meeting_date, 1) AS "week", SUM(m.duration_hours) AS total_hours
    FROM meetings m 
    GROUP BY m.employee_id, week
    HAVING total_hours > 20
)
SELECT cte.employee_id, employee_name, department, COUNT(*) AS meeting_heavy_weeks
FROM cte
JOIN employees e
ON cte.employee_id = e.employee_id
GROUP BY cte.employee_id
HAVING COUNT(*) > 1
ORDER BY meeting_heavy_weeks DESC, employee_name;



# Write your MySQL query statement below
WITH confirms AS (
    SELECT s.user_id, COUNT(*) AS confirms
    FROM Signups s
    LEFT JOIN Confirmations c 
    ON s.user_id = c.user_id
    WHERE c.action = 'confirmed'
    GROUP BY s.user_id
)

SELECT s.user_id, ROUND(COALESCE(confirms, 0) / COUNT(*), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN confirms con
ON s.user_id = con.user_id
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;

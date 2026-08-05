# Write your MySQL query statement below
WITH paid AS 
(
    SELECT user_id, ROUND(AVG(activity_duration), 2) AS paid_avg_duration FROM UserActivity WHERE activity_type = 'paid' GROUP BY user_id
),
free AS 
(
    SELECT user_id, ROUND(AVG(activity_duration), 2) AS trial_avg_duration FROM UserActivity WHERE activity_type = 'free_trial' GROUP BY user_id
)
SELECT free.user_id, free.trial_avg_duration, paid.paid_avg_duration
FROM free
JOIN paid
ON free.user_id = paid.user_id;

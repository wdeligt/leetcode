# Write your MySQL query statement below
WITH active_users AS 
(
    SELECT student_id, subject
    FROM Scores
    GROUP BY student_id, subject
    HAVING COUNT(*) >= 2
),
rnks AS 
(

    SELECT student_id, subject, exam_date, score,
        DENSE_RANK() OVER(PARTITION BY student_id, subject ORDER BY exam_date ASC) AS first,
        DENSE_RANK() OVER(PARTITION BY student_id, subject ORDER BY exam_date DESC) AS last
    FROM Scores
),
cte AS 
(
    SELECT student_id, subject, 
    MAX(CASE WHEN first = 1 THEN score END) AS first_score, 
    MAX(CASE WHEN last = 1 THEN score END) AS latest_score
    FROM rnks r
    WHERE (student_id, subject) IN (SELECT student_id, subject FROM active_users)
    GROUP BY student_id, subject
)
SELECT * FROM cte
WHERE first_score < latest_score
ORDER BY student_id, subject;

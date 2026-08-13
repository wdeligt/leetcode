# Write your MySQL query statement below
WITH three_reviews_ids AS
(
    SELECT employee_id FROM performance_reviews
    GROUP BY employee_id
    HAVING COUNT(*) >= 3
), 
reviews AS 
(
    SELECT review_id, employee_id, review_date, rating,
        RANK() OVER(PARTITION BY employee_id ORDER BY review_date DESC) as rnk 
    FROM performance_reviews 
    WHERE employee_id IN (SELECT employee_id FROM three_reviews_ids)
),
ratings AS 
(
    SELECT review_id, employee_id, review_date, rating, rnk, 
        rating - LAG(rating) OVER(PARTITION BY employee_id ORDER BY rnk DESC) as lg_rating
        FROM reviews
    WHERE rnk <= 3
    ORDER BY employee_id
)

SELECT ratings.employee_id, name, 
    MAX(CASE WHEN rnk = 1 THEN rating END)
      - MAX(CASE WHEN rnk = 3 THEN rating END) AS improvement_score
FROM ratings
JOIN employees
ON ratings.employee_id = employees.employee_id
GROUP BY employee_id
HAVING min(lg_rating) > 0
ORDER BY improvement_score desc, name;


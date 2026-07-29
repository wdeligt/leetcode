# Write your MySQL query statement below
WITH most_active_user AS
(
    SELECT name AS results
    FROM MovieRating m 
    JOIN Users u 
    ON m.user_id = u.user_id
    GROUP BY name
    ORDER BY COUNT(name) DESC, name 
    LIMIT 1
)
,
highest_average AS 
(
    SELECT title AS results
    FROM MovieRating
    JOIN Movies
    ON MovieRating.movie_id = Movies.movie_id
    WHERE created_at >= "2020-02-01" AND created_at < "2020-03-01"
    GROUP BY title
    ORDER BY AVG(rating) DESC, title 
    LIMIT 1
)

SELECT * FROM most_active_user
UNION ALL
SELECT * from highest_average


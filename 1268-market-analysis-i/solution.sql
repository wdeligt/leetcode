# Write your MySQL query statement below
WITH u AS
(
    SELECT user_id, join_date FROM Users
),
cte AS
(
    SELECT buyer_id, COUNT(buyer_id) as orders_in_2019
    FROM Orders o
    JOIN Users u
    ON o.buyer_id = u.user_id
    WHERE YEAR(order_date) = '2019'
    GROUP BY buyer_id
)

SELECT u.user_id AS buyer_id, join_date, COALESCE(orders_in_2019, 0) as orders_in_2019
FROM u
LEFT JOIN cte
ON u.user_id = cte.buyer_id;


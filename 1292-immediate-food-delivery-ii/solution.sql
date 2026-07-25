# Write your MySQL query statement below
WITH first_orders as (
    SELECT customer_id, MIN(order_date) as first_order
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(100* COUNT(*) / (SELECT COUNT(DISTINCT customer_id) FROM first_orders), 2) AS immediate_percentage
FROM Delivery d
JOIN first_orders f
ON d.customer_id = f.customer_id AND d.order_date = f.first_order
WHERE f.first_order = d.customer_pref_delivery_date


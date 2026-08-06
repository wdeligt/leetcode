# Write your MySQL query statement below
WITH season AS 
(
    SELECT sale_id, sales.product_id, product_name, category, quantity, price, sale_date, 
    CASE 
        WHEN MONTH(sale_date) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(sale_date) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(sale_date) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(sale_date) IN (9, 10, 11) THEN 'Fall'
    END AS season
    FROM sales
    JOIN products
    ON sales.product_id = products.product_id
),
cte AS 
(
SELECT season, category, SUM(quantity) AS total_quantity, SUM(quantity*price) AS total_revenue
FROM season
GROUP BY season, category
),
cte2 AS 
(
    SELECT season, category, total_quantity, total_revenue, 
    RANK() OVER(PARTITION BY season ORDER BY total_quantity DESC, total_revenue DESC) AS rnk
    FROM cte
)

SELECT season, category, total_quantity, total_revenue FROM cte2
WHERE rnk = 1
ORDER BY season;


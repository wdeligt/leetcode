# Write your MySQL query statement below
WITH rnk AS (
    SELECT product_id, change_date, new_price, RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) as rank_date
    FROM Products
    WHERE change_date < "2019-08-17"
)

SELECT DISTINCT p.product_id, CASE WHEN latest.new_price IS NULL THEN  10 ELSE latest.new_price END AS price
FROM Products p
LEFT JOIN (SELECT * FROM rnk WHERE rank_date = 1) AS latest
ON p.product_id = latest.product_id

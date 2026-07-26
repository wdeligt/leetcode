# Write your MySQL query statement below
WITH EarliestSales AS 
(
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)

SELECT s.product_id, e.first_year, s.quantity, s.price
FROM Sales s
JOIN EarliestSales e
ON s.product_id = e.product_id AND s.year = e.first_year;

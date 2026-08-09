# Write your MySQL query statement below
WITH cte AS 
(
    SELECT p1.user_id, p1.product_id AS product1_id, p1.quantity AS product1_quantity, p2.product_id AS product2_id, p2.quantity AS product2_quantity
    FROM ProductPurchases p1 
    JOIN ProductPurchases p2
    ON p1.user_id = p2.user_id AND p1.product_id < p2.product_id
)
SELECT cte.product1_id, cte.product2_id, pi1.category AS product1_category, pi2.category AS product2_category, COUNT(*) AS customer_count FROM cte
JOIN ProductInfo pi1
ON cte.product1_id = pi1.product_id
JOIN ProductInfo pi2
ON cte.product2_id = pi2.product_id
GROUP BY cte.product1_id, cte.product2_id
HAVING COUNT(*) > 2
ORDER BY customer_count DESC, product1_id ASC, product2_id ASC;


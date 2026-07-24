# Write your MySQL query statement below
WITH normal AS (
    SELECT DATE_FORMAT(trans_date, '%Y-%m') as month, country, 
        COUNT(*) AS trans_count, 
        SUM(amount) AS trans_total_amount
FROM Transactions
GROUP BY month, country
),

approved AS (
    SELECT DATE_FORMAT(trans_date, '%Y-%m') as month, country, 
    COUNT(*) AS approved_count, 
        SUM(amount) AS approved_total_amount
FROM Transactions
WHERE state = 'approved'
GROUP BY month, country 
)

SELECT N.month, n.country, n.trans_count, COALESCE(a.approved_count, 0) AS approved_count, n.trans_total_amount, COALESCE(a.approved_total_amount,0) AS approved_total_amount
FROM normal n 
LEFT JOIN approved a
ON n.month = a.month AND n.country <=> a.country;

# Write your MySQL query statement below
WITH requested AS 
(
    SELECT requester_id AS id, COUNT(requester_id) as num
    FROM RequestAccepted
    GROUP BY requester_id
)
, 
accepted AS
(
    SELECT accepter_id AS id, COUNT(accepter_id) as num
    FROM RequestAccepted
    GROUP BY accepter_id

)
,
u AS
( 
    SELECT * FROM requested
    UNION ALL
    SELECT * FROM accepted
)

SELECT id, SUM(num) AS num FROM u
GROUP BY id
ORDER BY num DESC
LIMIT 1;

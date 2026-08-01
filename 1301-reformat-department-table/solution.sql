# Write your MySQL query statement below
SELECT id, 
    MAX(CASE WHEN month = "Jan" then revenue END) AS Jan_Revenue,
    MAX(CASE WHEN month = "Feb" then revenue END) AS Feb_Revenue,
    MAX(CASE WHEN month = "Mar" then revenue END) AS Mar_Revenue,
    MAX(CASE WHEN month = "Apr" then revenue END) AS Apr_Revenue,
    MAX(CASE WHEN month = "May" then revenue END) AS May_Revenue,
    MAX(CASE WHEN month = "Jun" then revenue END) AS Jun_Revenue,
    MAX(CASE WHEN month = "Jul" then revenue END) AS Jul_Revenue,
    MAX(CASE WHEN month = "Aug" then revenue END) AS Aug_Revenue,
    MAX(CASE WHEN month = "Sep" then revenue END) AS Sep_Revenue,
    MAX(CASE WHEN month = "Oct" then revenue END) AS Oct_Revenue,
    MAX(CASE WHEN month = "Nov" then revenue END) AS Nov_Revenue,
    MAX(CASE WHEN month = "Dec" then revenue END) AS Dec_Revenue
FROM Department
GROUP BY id;

# Write your MySQL query statement below
SELECT x, y, z, 
    CASE
        WHEN z >= y AND z >= x AND z < x + y THEN 'Yes'
        WHEN z >= y AND z >= x AND z >= x + y THEN 'No'
        WHEN y >= z AND y >= x AND y < x + z THEN 'Yes'
        WHEN y >= z AND y >= x AND y >= x + z THEN 'No'
        WHEN x >= y AND x >= z AND x < y +z THEN 'Yes' 
        WHEN x >= y AND x >= z AND x >= y +z THEN 'No' 
    END AS triangle
    FROM Triangle;


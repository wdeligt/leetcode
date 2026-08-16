# Write your MySQL query statement below
WITH fuel_efficiency AS
(
    SELECT trip_id, distance_km / fuel_consumed AS fuel_efficiency
    FROM trips
), 
first_half AS
(
    SELECT t.trip_id, t.driver_id, t.trip_date, f.fuel_efficiency
    FROM trips t
    JOIN fuel_efficiency f
    ON t.trip_id = f.trip_id
    WHERE MONTH(t.trip_date) BETWEEN 1 AND 6 
), 
second_half AS
(
    SELECT t.trip_id, t.driver_id, t.trip_date, f.fuel_efficiency
    FROM trips t
    JOIN fuel_efficiency f
    ON t.trip_id = f.trip_id
    WHERE MONTH(t.trip_date) BETWEEN 7 AND 12 
)
, 
included_drivers AS
(
    SELECT driver_id, driver_name
    FROM drivers 
    WHERE driver_id IN (SELECT DISTINCT driver_id FROM first_half) AND driver_id IN (SELECT DISTINCT driver_id FROM second_half)
),
output AS 
(
    SELECT i.driver_id, i.driver_name, ROUND(AVG(f.fuel_efficiency), 2) AS first_half_avg, ROUND(AVG(s.fuel_efficiency), 2) AS second_half_avg, 
    ROUND(AVG(s.fuel_efficiency) - AVG(f.fuel_efficiency), 2) AS efficiency_improvement
    FROM included_drivers i
    JOIN first_half f
    ON i.driver_id = f.driver_id
    JOIN second_half s
    ON i.driver_id = s.driver_id
    GROUP BY i.driver_id
    ORDER BY efficiency_improvement DESC, driver_name
)
SELECT *
FROM output
WHERE efficiency_improvement>0;

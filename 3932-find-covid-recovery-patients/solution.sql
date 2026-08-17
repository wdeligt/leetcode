# Write your MySQL query statement below
WITH p AS 
(
    SELECT ct.patient_id, patient_name, age, MIN(test_date) AS first_positive
    FROM covid_tests ct
    JOIN patients p
    ON ct.patient_id = p.patient_id
    WHERE result = 'Positive'
    GROUP BY patient_id
), 
n AS
(
    SELECT ct.patient_id, p.patient_name, p.age, p.first_positive, MIN(test_date) AS first_negative_after_positive
    FROM covid_tests ct
    JOIN p 
    ON ct.patient_id = p.patient_id
    WHERE ct.result = 'Negative' AND ct.test_date > p.first_positive
    GROUP BY patient_id
)
SELECT patient_id, patient_name, age, DATEDIFF(first_negative_after_positive, first_positive) AS recovery_time
FROM n
ORDER BY recovery_time, patient_name


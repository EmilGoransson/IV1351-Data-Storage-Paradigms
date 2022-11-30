CREATE VIEW lesson_count_per_month_2023 AS
SELECT 
EXTRACT (MONTH FROM CAST (lesson.date AS timestamp)) AS month,
COUNT(*)
FROM lesson
WHERE EXTRACT(YEAR FROM CAST(lesson.date AS timestamp)) = 2023
GROUP BY month;
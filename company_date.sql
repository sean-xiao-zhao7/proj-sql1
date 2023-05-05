use company;
SELECT CASE
        WHEN weekday = 1 THEN 'MONDAY'
        WHEN weekday = 2 THEN 'TUESDAY'
        WHEN weekday = 3 THEN 'WED'
        WHEN weekday = 4 THEN 'THURS'
        WHEN weekday = 5 THEN 'FRI'
        WHEN weekday = 6 THEN 'SAT'
        WHEN weekday = 7 THEN 'SUN'
    END
FROM (
        SELECT WEEKDAY(birthdate) as weekday
        FROM employees
    ) as result1
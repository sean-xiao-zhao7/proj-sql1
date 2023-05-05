use company;
select CONVERT(birthdate, DATE),
    CONVERT(birthdate, TIME)
FROM employees;
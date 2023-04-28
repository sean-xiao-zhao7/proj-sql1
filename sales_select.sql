use sales;
-- select id + 'Hello'
-- from sales;
SELECT *
from sales
WHERE date_fulfilled - date_created < 5;
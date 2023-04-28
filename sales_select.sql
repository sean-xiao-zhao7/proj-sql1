use sales;
-- select id + 'Hello'
-- from sales;
SELECT *
from sales
WHERE is_disputed is TRUE
    and volume > 500;
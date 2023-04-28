use sales;
-- select id + 'Hello'
-- from sales;
SELECT customer_name,
    product_name
from (
        SELECT *
        from sales
        WHERE volume > 1000
    ) as result1;
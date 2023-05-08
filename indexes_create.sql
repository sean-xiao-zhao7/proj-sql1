use indexes;
EXPLAIN ANALYZE
SELECT *
from addresses
where street like 'Test*'
    and city = 'Munich';
-- CREATE INDEX salary_idx ON users (salary) WHERE salary > 12000; -- NOT SUPPORTED IN MYSQL
-- CREATE INDEX addresses_idx_multi ON addresses (street, city);
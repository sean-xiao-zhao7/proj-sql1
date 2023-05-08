use indexes;
EXPLAIN ANALYZE
SELECT *
from addresses
where street like 'Test*'
    and city = 'Munich';
-- CREATE UNIQUE INDEX salary_idx ON users (salary);
-- CREATE INDEX addresses_idx_multi ON addresses (street, city);
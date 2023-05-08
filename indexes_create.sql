use indexes;
EXPLAIN ANALYZE
SELECT *
from users
where salary > 12000;
-- CREATE INDEX salary_idx ON users (salary);
use indexes;
EXPLAIN ANALYZE
SELECT *
from users
where salary > 12000;
-- CREATE UNIQUE INDEX salary_idx ON users (salary);
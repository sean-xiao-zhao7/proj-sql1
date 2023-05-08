use indexes;

EXPLAIN ANALYZE
SELECT *
from users
where salary > 12000;
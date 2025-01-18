-- Write your PostgreSQL query statement below
-- Write your MySQL query statement below
select 
    query_name,
    round(sum(q.rating::numeric / q.position) / count(*), 2) as quality,
    round(sum(case when q.rating < 3 then 1 else 0 end)::numeric / count(*) * 100, 2) as     poor_query_percentage
from Queries as q
group by query_name
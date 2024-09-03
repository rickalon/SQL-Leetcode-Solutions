-- Write your PostgreSQL query statement below
select Q.query_name, 
round((sum(rating/position::numeric)/count(*)),2) as quality,
round((   (select count(*) from Queries x where x.rating < 3 AND x.query_name = Q.query_name) /count(*)::numeric) * 100,2) as poor_query_percentage
from Queries Q
where query_name is not null
group by Q.query_name

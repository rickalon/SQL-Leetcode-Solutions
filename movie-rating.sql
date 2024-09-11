-- Write your PostgreSQL query statement below
(
select name as results
from MovieRating a
join Users b on a.user_id = b.user_id
order by count(a.rating) over (partition by name) DESC, name
limit 1
)
union all
(
select title as results
from MovieRating a
join Movies b on a.movie_id = b.movie_id
where DATE_TRUNC('MONTH',created_at) = DATE_TRUNC('MONTH','2020-2-1'::date)
order by AVG(a.rating) over (partition by b.title) DESC, b.title
limit 1
)

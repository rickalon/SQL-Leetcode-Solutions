-- Write your PostgreSQL query statement below

with cft as (
    select tiv_2015, tiv_2016, pid
    from Insurance a
    where (lat,lon) not in(select lat,lon from Insurance where pid != a.pid) 
)
select round(sum(tiv_2016)::numeric,2) as tiv_2016
from cft c
where exists (select 1 from Insurance where pid != c.pid and tiv_2015 = c.tiv_2015) 

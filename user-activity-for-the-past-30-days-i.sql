-- Write your PostgreSQL query statement below
select activity_date as day,count(distinct user_id)  as active_users 
from Activity
where activity_date between '2019-07-28'::date - interval '1 month' and '2019-07-27'
group by activity_date
order by activity_date

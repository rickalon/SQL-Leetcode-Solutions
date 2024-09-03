-- Write your PostgreSQL query statement below
select R.contest_id, round((count(U.user_id)/(select count(user_id) from Users)::numeric * 100),2) as percentage
from Users U
inner join Register R on U.user_id = R.user_id
group by R.contest_id
order by count(U.user_id) DESC, R.contest_id

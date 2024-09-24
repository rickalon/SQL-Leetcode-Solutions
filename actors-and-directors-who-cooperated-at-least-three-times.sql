-- Write your PostgreSQL query statement below
select distinct actor_id,director_id
from ActorDirector a
where (select count(*) from ActorDirector where actor_id=a.actor_id and director_id=a.director_id) >= 3

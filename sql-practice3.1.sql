-- more than one table join 

select m.title ,a.name 
from movies m
JOIN movie_actor ma on ma.movie_id=m.movie_id
JOIN actors a on a.actor_id=ma.actor_id;

-- use group by to grouped the movies 
select m.title , group_concat(a.name separator ' | ') 
from movies m
JOIN movie_actor ma on ma.movie_id=m.movie_id
JOIN actors a on a.actor_id=ma.actor_id
group by m.movie_id;



select 
	a.name,
    group_concat(title separator ' | ') as movies,
    count(title) as movies_count
from actors a
JOIN movie_actor ma on ma.actor_id=a.actor_id
JOIN movies m on m.movie_id=ma.movie_id
group by a.actor_id
order by movies_count desc;







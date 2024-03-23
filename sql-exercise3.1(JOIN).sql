-- 1) Show all the movies with their language names
select m.title, l.name 
from movies m
JOIN languages l
using (language_id);


-- 2) Show all Telugu movie names (assuming you don't know language id for Telugu)
select m.title, l.name 
from movies m
 left join languages l
using (language_id)
where l.name = "Telugu";




-- 3) Show language and number of movies released in that language
select l.name, count(*) as movies_per_lang 
from movies m
left join languages l
using (language_id)
group by l.name
order by movies_per_lang;


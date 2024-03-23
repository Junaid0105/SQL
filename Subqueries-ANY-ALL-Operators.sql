### Module: ANY, ALL Operators

-- select actors who acted in any of these movies (101,110, 121)
select actor_id,name from actors where actor_id =
ANY (select actor_id from movie_actor
where movie_id in (101,110,121));


-- select all movies whose rating is greater than *any* of the marvel movies rating
select * from movies where imdb_rating >
ANY(select imdb_rating from movies
where studio = "marvel studios");

 
-- select all movies whose rating is greater than *ALL* of the marvel movies rating
select * from movies where imdb_rating >
	ALL(select imdb_rating from movies where studio="marvel studios");

### Module: Subqueries

-- Select a movie with highest imdb_rating
-- without subquery
select * from movies
order by imdb_rating desc
limit 1;

-- "or"------ we use subquery as a condition
select * from movies 
where imdb_rating = (select max(imdb_rating) from movies);


-- Select a movie with highest and lowest imdb_rating
-- without subquery :- first we have to find the higest and lowest imdb_rating (in this table 9.3 and 1.9)
select * from movies
where imdb_rating in (1.9,9.3);

-- with subquery
select * from movies
where imdb_rating in ((select min(imdb_rating) from movies),
	                 (select max(imdb_rating) from movies)
	);


-- Select all the actors whose age is greater than 70 and less than 85
select actor_name,age from
	(select name as actor_name,year(curdate())-birth_year as age from actors) as age_table
where age>70 and age<85;



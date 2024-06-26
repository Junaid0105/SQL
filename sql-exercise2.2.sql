-- 1) print all movies by the order of their release year (latest first)
select * from movies order by release_year desc;

-- 2) all movies released this year in 2022
select * from movies where release_year=2022;

-- 3) ok now all the movies released after 2020
select * from movies where release_year>2020;

-- 4) all movies after year 2020 that has more than 8 rating
select * from movies where release_year>2020 and imdb_rating>8;

-- 5) select all movies that are by marvel studios and hombale films
select * from movies where studio in ("hombale films", 'marvel studios');

-- 6) select all thor movies by their release year
select title, release_year from movies where title like "%thor%" order by release_year;

-- select all movies that are not from marvel studios
select * from movies where studio!="marvel studios";


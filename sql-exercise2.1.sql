-- 1) Print all movie titles and release year for all Marvel Studios movies
select title, release_year from movies where studio = "Marvel Studios";

-- 2) Print all movies that have Avenger in their name
select * from movies where title like "%avenger%";

-- 3) Print the year in which "The Godfather" move was released
select release_year from movies where title = "The Godfather";

-- 4) Print all distinct movie studios on Bollywood industry
select distinct studio from movies where industry = 'Bollywood';
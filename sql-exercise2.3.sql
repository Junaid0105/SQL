-- 1) how many movies were released between 2015 and 2022
select count(*) from movies where release_year between 2015 and 2022;

-- 2) print the max and min movie release year
select max(release_year) as max_year, min(release_year) as min_year
from movies;

-- 3) print a year and how many movies were released in that year starting with latest year
select release_year, count(*) as movie_count from movies
group by release_year
order by release_year desc;
-- Find profit for all movies 
select m.movie_id, title, budget, revenue, unit, currency,
(revenue-budget) as profit
from movies m 
join financials f
on m.movie_id=f.movie_id;


-- Find profit for all movies in bollywood
select m.movie_id, title, budget, revenue, unit, currency,
(revenue-budget) as profit
from movies m 
join financials f
on m.movie_id=f.movie_id
where industry = "Bollywood";



-- Find profit of all bollywood movies and sort them by profit amount (Make sure the profit be in millions for better comparisons)
select m.movie_id, title, budget, revenue, unit, currency,
CASE
	WHEN unit = "Thousands" THEN ROUND((revenue-budget)/1000,2)
	WHEN unit = "Billions" THEN ROUND((revenue-budget)*1000,2)
    ELSE revenue-budget
END as profit_in_Mln
FROM movies m
JOIN financials f
using (movie_id)
where industry = "bollywood"
order by profit_in_Mln desc;
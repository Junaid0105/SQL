-- 1. Generate a report of all Hindi movies sorted by their revenue amount in millions. Print movie name, revenue, currency, and unit

select 
	m.title,
    CASE
		WHEN unit="thousands" THEN round(revenue/1000,1)
        WHEN unit="Billions" THEN round(revenue*1000,1)
        ELSE round(revenue,1)
    END as revenue_in_mln,
    currency,
    unit 
from movies m
JOIN financials f on f.movie_id=m.movie_id
JOIN languages l on l.language_id=m.language_id
where l.name="hindi"
order by revenue_in_mln desc;

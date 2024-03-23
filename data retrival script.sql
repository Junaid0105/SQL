-- find bollywood movies
select * from movies where industry = "bollywood";
-- wild card search "%--%"
select * from movies where title like "%america%";

-- find the tuple that have missing values
select * from movies where studio = "";
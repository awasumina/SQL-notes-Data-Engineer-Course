-- Find the release_year and film_count of each year
select release_year, count(*) as film_count
from films
group by release_year
 

-- Find the release_year and average duration of films for each year
select release_year, avg(duration) as avg_duration
from films
group by release_year


-- Find the release_year, country, and max_budget, then group and order by release_year and country
select release_year,country,max(budget) as max_budget
from films
group by release_year, country
order by release_year,country
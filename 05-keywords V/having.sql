-- Select the country and distinct count of certification as certification_count
select country, count(distinct certification ) as certification_count
from films
-- Group by country
group by country
-- Filter results to countries with more than 10 different certifications
having count(distinct certification)>10





-- Select the country and average_budget from films
select country, round(avg(budget),2) as average_budget from films
-- Group by country
group by country
-- Filter to countries with an average_budget of more than one billion
having avg(budget)>1000000000



-- Select the release_year for films released after 1990 grouped by year
select release_year from films
group by release_year
having release_year>1990



-- Modify the query to also list the average budget and average gross
SELECT release_year, avg(budget) as avg_budget,avg(gross) as avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;




SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
GROUP BY release_year

having avg(budget) > 60000000



SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;
-- Order by descending order of the aggregated budget
order by average_budget desc
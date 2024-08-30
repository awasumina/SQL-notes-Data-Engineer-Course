-- Begin with a query that groups by each country code from languages, and counts the languages spoken in each country as lang_num.
-- In your SELECT statement, return code and lang_num (in that order).
-- Select code, and language count as lang_num
SELECT code, COUNT(*) AS lang_num
FROM languages
GROUP BY code;



-- Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub).
-- Use WHERE to match the code field from countries and sub.
-- Select local_name and lang_num from appropriate tables
SELECT local_name, sub.lang_num
FROM countries,
    (SELECT code, COUNT(*) AS lang_num
     FROM languages
     GROUP BY code) AS sub
-- Where codes match    
WHERE countries.code = sub.code
ORDER BY lang_num DESC;



-- Select country code, inflation_rate, and unemployment_rate from economies.
-- Filter code for the set of countries which do not contain the words "Republic" or "Monarchy" in their gov_form.
-- Select relevant fields
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
-- Subquery returning country codes filtered on gov_form
    (SELECT code
     FROM countries
     WHERE (gov_form LIKE '%Monarchy%' OR gov_form LIKE '%Republic%'))
ORDER BY inflation_rate;




-- From cities, select the city name, country code, proper population, and metro area population, as well as the field city_perc, which calculates the proper population as a percentage of metro area population for each city (using the formula provided).
-- Filter city name with a subquery that selects capital cities from countries in 'Europe' or continents with 'America' at the end of their name.
-- Exclude NULL values in metroarea_pop.
-- Order by city_perc (descending) and return only the first 10 rows.
-- Select fields from cities
SELECT 
	name, 
    country_code, 
    city_proper_pop, 
    metroarea_pop,
    city_proper_pop / metroarea_pop * 100 AS city_perc
FROM cities
-- Use subquery to filter city name
WHERE name IN
  (SELECT capital
   FROM countries
   WHERE (continent = 'Europe'
   OR continent LIKE '%America'))
-- Add filter condition such that metroarea_pop does not have null values
	  AND metroarea_pop IS NOT NULL
-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;   
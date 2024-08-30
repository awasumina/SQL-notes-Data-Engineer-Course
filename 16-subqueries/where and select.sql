

-- Begin by writing a query to return the code and name (in order, not aliased) for all countries in the continent of Oceania from the countries table.
-- Observe the number of records returned and compare this with the provided INNER JOIN, which returns 15 records.
-- Select code and name of countries from Oceania
SELECT code, name
FROM countries
WHERE continent = 'Oceania';



-- Now, build on your query to complete your anti join, by adding an additional filter to return every country code that is not included in the currencies table.
SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  AND code NOT IN
    (SELECT code
    FROM currencies);


-- Begin by calculating the average life expectancy from the populations table.
-- Filter your answer to use records from 2015 only.
-- Select average life_expectancy from the populations table
select avg(life_expectancy) from populations
-- Filter for the year 2015
where year=2015


-- The answer from your query has now been nested into another query; use this calculation to filter populations for all records where life_expectancy is 1.15 times higher than average.
SELECT *
FROM populations
-- Filter for only those populations where life expectancy is 1.15 times higher than average
WHERE life_expectancy > 1.15*
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015) 
    AND year = 2015;


-- Return the name, country_code and urbanarea_pop for all capital cities (not aliased).
-- Select relevant fields from cities table
SELECT name, country_code, urbanarea_pop
FROM cities
-- Filter using a subquery on the countries table
WHERE name IN
  (SELECT capital
   FROM countries)
ORDER BY urbanarea_pop DESC;





-- Write a LEFT JOIN with countries on the left and the cities on the right, joining on country code.
-- In the SELECT statement of your join, include country names as country, and count the cities in each country, aliased as cities_num.
-- Sort by cities_num (descending), and country (ascending), limiting to the first nine records.
-- Find top nine countries with the most cities
SELECT countries.name AS country, COUNT(*) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country
LIMIT 9;




-- Complete the subquery to return a result equivalent to your LEFT JOIN, counting all cities in the cities table as cities_num.
-- Use the WHERE clause to enable the correct country codes to be matched in the cities and countries columns.
SELECT countries.name AS country,
-- Subquery that provides the count of cities   
  (SELECT COUNT(*)
   FROM cities
   WHERE cities.country_code = countries.code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;
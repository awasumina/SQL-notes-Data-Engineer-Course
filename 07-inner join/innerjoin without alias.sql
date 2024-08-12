-- Select all columns from cities
select * 
from cities

--Perform an inner join with the cities table on the left and the countries table on the right; do not alias tables here or in the next step.Identify the relevant column names to join ON by inspecting the cities and countries tabs in the console.
SELECT * 
FROM cities
-- Inner join to countries
inner join countries
-- Match on country codes
on cities.country_code = countries.code




-- Complete the SELECT statement to keep only the name of the city, the name of the country, and the region the country is located in (in the order specified).
-- Alias the name of the city AS city and the name of the country AS country.
-- Select name fields (with alias) and region 
SELECT cities.name as city,countries.name as country,countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;
-- Start with your inner join in line 5; join the tables countries AS c (left) with economies (right), aliasing economies AS e.
-- Next, use code as your joining field in line 7; do not use the USING command here.
-- Lastly, select the following columns in order in line 2: code from the countries table (aliased as country_code), name, year, and inflation_rate.


-- Select fields with aliases
select c.code as country_code,c.name,e.year,e.inflation_rate
FROM countries AS c
-- Join to economies (alias e)
inner join economies AS e
-- Match on code field using table aliases
on c.code = e.code




-- Use the country code field to complete the INNER JOIN with USING; do not change any alias names.

SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
using (code)

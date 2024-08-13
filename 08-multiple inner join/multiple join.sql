-- Perform an inner join of countries AS c (left) with populations AS p (right), on code.
-- Select name, year and fertility_rate.
-- Select relevant fields
SELECT name, year, fertility_rate
-- Inner join countries and populations, aliased, on code
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code;






-- Chain another inner join to your query with the economies table AS e, using code.
-- Select name, and using table aliases, select year and unemployment_rate from the economies table.

-- Select fields
SELECT name, p.year, fertility_rate, name, e.year as year, e.unemployment_rate as unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)

inner join economies as e
-- Match on country code
using (code)





-- Modify your query so that you are joining to economies on year as well as code
SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
and p.year=e.year



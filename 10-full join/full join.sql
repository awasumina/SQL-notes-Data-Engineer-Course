-- Perform a full join with countries (left) and currencies (right).
-- Filter for the North America region or NULL country names.
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
full join currencies 
USING (code)
-- Where region is North America or name is null
WHERE region='North America' or name is Null
ORDER BY region;




-- Repeat the same query as before, turning your full join into a left join with the currencies table.
-- Have a look at what has changed in the output by comparing it to the full join result.
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
left join currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;






-- Repeat the same query again, this time performing an inner join of countries with currencies.
-- Have a look at what has changed in the output by comparing it to the full join and left join results!
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
inner join currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;






-- Complete the FULL JOIN with countries as c1 on the left and languages as l on the right, using code to perform this join.
-- Next, chain this join with another FULL JOIN, placing currencies on the right, joining on code again
SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
full join languages as l 
using (code)
-- Full join with currencies (alias as c2)
full join currencies as c2
using(code) 
WHERE region LIKE 'M%esia';

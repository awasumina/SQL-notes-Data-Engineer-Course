-- Begin your query by selecting all fields from economies2015.
-- Create a second query that selects all fields from economies2019.
-- Perform a set operation to combine the two queries you just created, ensuring you do not return duplicates.
-- Select all fields from economies2015
select * from economies2015    
-- Set operation
union
-- Select all fields from economies2019
select * from economies2019
ORDER BY code, year;


 


-- Perform an appropriate set operation that determines all pairs of country code and year (in that order) from economies and populations, excluding duplicates.
-- Order by country code and year.
-- Query that determines all pairs of code and year from economies and populations, without duplicates
select code,year from economies
union
select country_code,year from populations




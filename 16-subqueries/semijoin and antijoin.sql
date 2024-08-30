-- Select country code for countries in the Middle East
select code from countries
where region = 'Middle East'


-- Write a second query to SELECT the name of each unique language appearing in the languages table; do not use column aliases here.
-- Order the result set by name in ascending order.
-- Select unique language names
select distinct name from languages

-- Order by the name of the language
order by name;




-- Create a semi join out of the two queries you've written, which filters unique languages returned in the first query for only those languages spoken in the 'Middle East'.
SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
where code in
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;



-- Start with the join statement in line 6; perform an inner join with the countries table as c on the left with the languages table as l on the right.
-- Make use of the USING keyword to join on code in line 8.
-- Lastly, in line 2, select the country name, aliased as country, and the language name, aliased as language.

-- Select country and language names, aliased
select c.name as country,l.name as language
-- From countries (aliased)
from countries as c
-- Join to languages (aliased)
inner join languages as l
-- Use code as the joining field with the USING keyword
using (code);



-- Rearrange the SELECT statement so that the language column appears on the left and the country column on the right.
-- Sort the results by language.
-- Select language and country names, aliased
SELECT l.name AS language, c.name AS country
FROM countries AS c
INNER JOIN languages AS l
USING(code)
-- Order the results by language
ORDER BY language;




SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
ORDER BY country;

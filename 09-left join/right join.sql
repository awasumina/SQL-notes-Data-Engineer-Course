-- Write a new query using RIGHT JOIN that produces an identical result to the LEFT JOIN provided.

-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
SELECT countries.name AS country, languages.name AS language, percent
FROM  languages
right JOIN countries
USING(code)
ORDER BY language;
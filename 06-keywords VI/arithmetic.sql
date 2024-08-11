-- Calculate the title and duration_hours from films
SELECT title, (duration/60.0) as duration_hours
FROM films;demo



-- Calculate the percentage of people who are no longer alive
SELECT count(deathdate) * 100.0 / count(*) AS percentage_dead
FROM people;


-- Find the number of decades in the films table
SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
FROM films;


-- Round duration_hours to two decimal places
SELECT title, round(duration / 60.0,2) AS duration_hours
FROM films;
-- Amend the query to return all combinations (including duplicates) of country code and year in the economies or the populations tables.
SELECT code, year
FROM economies
-- Set theory clause
UNION All
SELECT country_code, year
FROM populations
ORDER BY code, year;
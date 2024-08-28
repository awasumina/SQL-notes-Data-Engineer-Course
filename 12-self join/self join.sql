-- Perform an inner join of populations with itself ON country_code, aliased p1 and p2 respectively.
-- Select aliased fields from populations as p1
-- Select the country_code from p1 and the size field from both p1 and p2, aliasing p1.size as size2010 and p2.size as size2015 (in that order)
select p1.country_code, p1.size as size2010, p2.size as size2015
-- Join populations as p1 to itself, alias as p2, on country code
from populations as p1
inner join populations as p2
on p1.country_code=p2.country_code






-- Since you want to compare records from 2010 and 2015, eliminate unwanted records by extending the WHERE statement to include only records where the p1.year matches p2.year - 5.
SELECT 
	p1.country_code, 
    p1.size AS size2010, 
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010 and
-- Filter such that p1.year is always five years before p2.year
     p1.year=(p2.year-5)
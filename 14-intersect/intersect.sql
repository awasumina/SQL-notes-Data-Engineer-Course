-- Return all cities with the same name as a country
select name from cities
intersect
select name from countries
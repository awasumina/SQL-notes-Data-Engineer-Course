-- Return all cities that do not have the same name as a country
select name from cities
except
select name from countries
ORDER BY name;
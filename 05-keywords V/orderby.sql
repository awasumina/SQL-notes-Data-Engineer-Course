-- Select name from people and sort alphabetically
select name
from people
order by name


-- Select the title and duration from longest to shortest film
select title , duration
from films
order by duration desc



-- Select the release year, duration, and title sorted by release year and duration
select release_year , duration,title
from films
order by release_year,duration 


-- Select the certification, release year, and title sorted by certification and release year
select certification,release_year , title
from films
order by certification, release_year desc  
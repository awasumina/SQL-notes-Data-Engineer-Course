-- First, find out the number of rows in universities.
-- Count the number of rows in universities
SELECT count(university) 
FROM universities;


-- Then, find out how many unique values there are in the university_city column.
-- Count the number of distinct values in the university_city column
SELECT count(distinct(university_city)) 
FROM universities;
   

-- Using the above steps, identify the candidate key by trying out different combination of columns.
-- Try out different combinations
SELECT COUNT(DISTINCT(firstname, lastname)) 
FROM professors;



-- Rename the organization column to id in organizations.
-- Make id a primary key and name it organization_pk.
-- Rename the organization column to id
alter table organizations
rename column organization TO id;

-- Make id a primary key
ALTER TABLE organizations
add constraint organization_pk Primary KEY (id);



-- Rename the university_shortname column to id in universities.
-- Make id a primary key and name it university_pk.
-- Rename the university_shortname column to id
alter table universities
rename column university_shortname to id;


-- Make id a primary key
alter table universities
add constraint university_pk primary key(id)


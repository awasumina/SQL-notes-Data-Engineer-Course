-- Since there's no single column candidate key in professors (only a composite key candidate consisting of firstname, lastname), you'll add a new column id to that table.
-- Add the new column to the table
ALTER TABLE professors 
ADD COLUMN id serial;

-- Make id a primary key
ALTER TABLE professors 
ADD CONSTRAINT professors_pkey PRIMARY KEY (id);

-- Have a look at the first 10 rows of professors
select * from professors
limit 10;





-- Another strategy to add a surrogate key to an existing table is to concatenate existing columns with the CONCAT() function.
-- Count the number of distinct rows with columns make, model
SELECT COUNT(DISTINCT(make, model)) 
FROM cars;

-- Add the id column
ALTER TABLE cars
ADD COLUMN id varchar(128);

-- Update id with make + model
UPDATE cars
SET id = CONCAT(make, model);

-- Make id a primary key
alter table cars
add constraint id_pk primary key(id);

-- Have a look at the table
SELECT * FROM cars;





-- Given the above description of a student entity, create a table students with the correct column types.
-- Add a PRIMARY KEY for the social security number ssn.
-- Note that there is no formal length requirement for the integer column. The application would have to make sure it's a correct SSN!
create table students (
  last_name varchar(128) not null,
  ssn integer primary key,
  phone_no char(12)
);
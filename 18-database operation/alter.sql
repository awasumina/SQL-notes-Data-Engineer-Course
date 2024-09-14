-- Alter professors to add the text column university_shortname.
-- Add the university_shortname column
alter table professors
add column university_shortname text;


-- Print the contents of this table
SELECT * 
FROM professors


-- Rename the organisation column to organization in affiliations.
-- Rename the organisation column
ALTER TABLE affiliations
RENAME column organisation TO organization;


-- Delete the university_shortname column in affiliations.
-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
alter table affiliations
drop column university_shortname;



-- Insert all DISTINCT professors from university_professors into professors.
-- Print all the rows in professors.
-- Insert unique professors into the new table
insert into professors 
SELECT DISTINCT firstname, lastname, university_shortname 
FROM university_professors;

-- Doublecheck the contents of professors
SELECT * 
FROM professors;


-- Insert all DISTINCT affiliations into affiliations from university_professors.
-- Insert unique affiliations into the new table
Insert into affiliations 
select distinct firstname, lastname, function, organization 
FROM university_professors;

-- Doublecheck the contents of affiliations
SELECT * 
FROM affiliations;



-- Delete the university_professors table
drop table university_professors;
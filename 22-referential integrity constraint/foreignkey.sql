-- Add a foreign key on university_id column in professors that references the id column in universities.
-- Name this foreign key professors_fkey.
-- Rename the university_shortname column
ALTER TABLE professors
RENAME COLUMN university_shortname TO university_id;

-- Add a foreign key on professors referencing universities
alter table professors
add constraint professors_fkey FOREIGN KEY (university_id) REFERENCES universities (id);



-- Run the sample code and have a look at the error message.
-- What's wrong? Correct the university_id so that it actually reflects where Albert Einstein wrote his dissertation and became a professor – at the University of Zurich (UZH)!
INSERT INTO professors (firstname, lastname, university_id)
VALUES ('Albert', 'Einstein', 'UZH');


-- JOIN professors with universities on professors.university_id = universities.id, i.e., retain all records where the foreign key of professors is equal to the primary key of universities.
-- Filter for university_city = 'Zurich'.
-- Select all professors working for universities in the city of Zurich
SELECT professors.lastname, universities.id, universities.university_city
from professors
join universities
ON professors.university_id = universities.id
where universities.university_city = 'Zurich';




-- Add a professor_id column
ALTER TABLE affiliations
ADD COLUMN professor_id integer REFERENCES professors (id);

-- Rename the organization column to organization_id
ALTER TABLE affiliations
RENAME organization TO organization_id;

-- Add a foreign key on organization_id
ALTER TABLE affiliations
ADD CONSTRAINT affiliations_organization_fkey foreign key (organization_id) REFERENCES organizations (id);




-- First, have a look at the current state of affiliations by fetching 10 rows and all columns.
-- Have a look at the 10 first rows of affiliations
select * from affiliations
limit 10;

-- Set professor_id to professors.id where firstname, lastname correspond to rows in professors
UPDATE affiliations
SET professor_id = professors.id
FROM professors
WHERE affiliations.firstname = professors.firstname AND affiliations.lastname = professors.lastname

-- Have a look at the 10 first rows of affiliations again
select * from affiliations
limit 10;





-- Drop the firstname and lastname columns from the affiliations table.
-- Drop the firstname column
alter table affiliations
DROP column firstname;

-- Drop the lastname column
alter table affiliations
DROP column lastname;





-- Identify the correct constraint name
SELECT constraint_name, table_name, constraint_type
FROM information_schema.table_constraints
WHERE constraint_type = 'FOREIGN KEY';

-- Drop the right foreign key constraint
ALTER TABLE affiliations
DROP CONSTRAINT affiliations_organization_id_fkey;

-- Add a new foreign key constraint from affiliations to organizations which cascades deletion
ALTER TABLE affiliations
ADD CONSTRAINT affiliations_organization_id_fkey FOREIGN KEY (organization_id) REFERENCES organizations (id) ON DELETE CASCADE;

-- Delete an organization 
DELETE FROM organizations 
WHERE id = 'CUREM';

-- Check that no more affiliations with this organization exist
SELECT * FROM affiliations
WHERE organization_id = 'CUREM';





-- Count the number of total affiliations by university.
-- Sort the result by that count, in descending order.
-- Count the total number of affiliations per university
SELECT COUNT(*), professors.university_id 
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
-- Group by the university ids of professors
GROUP BY professors.university_id 
ORDER BY count DESC;






-- Join all tables
SELECT *
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id;



-- Group the table by organization sector, professor ID and university city
SELECT COUNT(*), organizations.organization_sector, 
professors.id, universities.university_city
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id
GROUP BY organizations.organization_sector, 
professors.id, universities.university_city;



-- Filter the table and sort it
SELECT COUNT(*), organizations.organization_sector, 
professors.id, universities.university_city
FROM affiliations
JOIN professors
ON affiliations.professor_id = professors.id
JOIN organizations
ON affiliations.organization_id = organizations.id
JOIN universities
ON professors.university_id = universities.id
WHERE organizations.organization_sector = 'Media & communication'
GROUP BY organizations.organization_sector, 
professors.id, universities.university_city
ORDER BY count DESC;
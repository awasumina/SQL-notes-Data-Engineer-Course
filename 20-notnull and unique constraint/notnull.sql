-- Disallow NULL values in firstname
-- Disallow NULL values in firstname
alter table professors 
ALTER COLUMN firstname SET NOT NULL;


-- Disallow NULL values in lastname
-- Disallow NULL values in lastname
alter table professors
alter column lastname set not null
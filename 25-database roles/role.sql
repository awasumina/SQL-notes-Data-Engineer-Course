-- Create a role called data_scientist.
create role data_scientist;

-- Create a role for Marta
create role marta with PASSWORD 'LOGIN';

-- Create an admin role
create role admin WITH CREATEDB CREATEROLE;



-- Grant the data_scientist role update and insert privileges on the long_reviews view.
-- Alter Marta's role to give her the provided password.
-- Grant data_scientist update and insert privileges
grant update, insert ON  long_reviews TO data_scientist;

-- Give Marta's role a password
alter role marta with password 's3cur3p@ssw0rd';


 


-- Add Marta to the data scientist group
GRANT data_scientist TO Marta;
-- Celebrate! You hired data scientists.
-- Remove Marta from the data scientist group
REVOKE data_scientist FROM Marta;

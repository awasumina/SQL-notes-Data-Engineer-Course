-- Create a new table for the non-key columns that were conflicting with 2NF criteria.
-- Drop those non-key columns from customer_rentals.
-- Create a new table to satisfy 2NF
create table cars (
  car_id VARCHAR(256) NULL,  
  model VARCHAR(128),
  manufacturer VARCHAR(128),
  type_car VARCHAR(128),
  condition VARCHAR(128),
  color VARCHAR(128)
);

-- Drop columns in customer_rentals to satisfy 2NF
alter table customer_rentals
drop column model,
drop column manufacturer,
drop column type_car,
drop column condition,
drop column color 






-- Create a new table for the non-key columns that were conflicting with 3NF criteria.
-- Drop those non-key columns from rental_cars
-- Create a new table to satisfy 3NF
CREATE TABLE car_model(
  model VARCHAR(128),
  manufacturer VARCHAR(128),
  type_car VARCHAR(128)
);

-- Drop columns in rental_cars to satisfy 3NF
ALTER TABLE rental_cars
DROP COLUMN manufacturer, 
DROP COLUMN type_car;
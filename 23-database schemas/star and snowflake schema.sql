-- The star schema is the simplest form of the dimensional model. Some use the terms "star schema" and "dimensional model" interchangeably. Remember that the star schema is made up of two tables: fact and dimension tables. Fact tables hold records of metrics that are described further by dimension tables.
-- The snowflake schema is an extension of the star schema. Off the bat, we see that it has more tables


-- In the constraint called sales_book, set book_id as a foreign key.
-- In the constraint called sales_time, set time_id as a foreign key.
-- In the constraint called sales_store, set store_id as a foreign key.
-- Add the book_id foreign key
ALTER TABLE fact_booksales ADD CONSTRAINT sales_book
    FOREIGN KEY (book_id) REFERENCES dim_book_star (book_id);
    
-- Add the time_id foreign key
ALTER TABLE fact_booksales ADD CONSTRAINT sales_time
   FOREIGN KEY(time_id) REFERENCES dim_time_star (time_id);
    
-- Add the store_id foreign key
alter table fact_booksales add CONSTRAINT sales_store
foreign key (store_id) REFERENCES dim_store_star(store_id)




-- Create dim_author with a column for author.
-- Insert all the distinct authors from dim_book_star into dim_author.
-- Create dim_author with an author column
CREATE TABLE dim_author (
    author varchar(256)   NOT NULL
);

-- Insert distinct authors 
INSERT INTO dim_author
SELECT distinct author FROM dim_book_star;




-- Alter dim_author to have a primary key called author_id.
-- Output all the columns of dim_author.
-- Create a new table for dim_author with an author column
-- Add a primary key 
ALTER TABLE dim_author ADD COLUMN author_id SERIAL PRIMARY KEY;

-- Output the new table
SELECT * FROM dim_author;





-- Select state from the appropriate table and the total sales_amount.
-- Complete the JOIN on book_id.
-- Complete the JOIN to connect the dim_store_star table
-- Conditionally select for books with the genre novel.
-- Group the results by state.
-- Output each state and their total sales_amount
SELECT dim_store_star.state, SUM(fact_booksales.sales_amount)
FROM fact_booksales
    -- Join to get book information
    JOIN dim_book_star ON fact_booksales.book_id = dim_book_star.book_id
    -- Join to get store information
    JOIN dim_store_star ON fact_booksales.store_id = dim_store_star.store_id
-- Get all books within the novel genre
WHERE dim_book_star.genre = 'novel'
-- Group results by state
GROUP BY dim_store_star.state;




-- Select state from the appropriate table and the total sales_amount.
-- Complete the two JOINS to get the genre_id's.
-- Complete the three JOINS to get the state_id's.
-- Conditionally select for books with the genre novel.
-- Group the results by state.
-- Output each state and their total sales_amount
SELECT dim_state_sf.state, sum(sales_amount)
FROM fact_booksales
    -- Joins for the genre
    JOIN dim_book_sf on fact_booksales.book_id = dim_book_sf.book_id
    JOIN dim_genre_sf on dim_book_sf.genre_id = dim_genre_sf.genre_id
    -- Joins for the state 
    JOIN dim_store_sf on fact_booksales.store_id = dim_store_sf.store_id 
    JOIN dim_city_sf on dim_store_sf.city_id = dim_city_sf.city_id
	JOIN dim_state_sf on  dim_city_sf.state_id = dim_state_sf.state_id
-- Get all books with in the novel genre and group the results by state
WHERE  
    dim_genre_sf.genre = 'novel'
GROUP BY
   dim_state_sf.state;



--    Output all the records that need to be updated in the star schema so that countries are represented by their abbreviations.

-- Output records that need to be updated in the star schema
SELECT * FROM dim_store_star
WHERE country != 'USA' AND country !='CA';





-- Add a continent_id column to dim_country_sf with a default value of 1. Note thatNOT NULL DEFAULT(1) constrains a value from being null and defaults its value to 1.
-- Make that new column a foreign key reference to dim_continent_sf's continent_id.


-- Add a continent_id column with default value of 1
ALTER TABLE dim_country_sf
ADD continent_id int NOT NULL DEFAULT(1);

-- Add the foreign key constraint
ALTER TABLE dim_country_sf ADD CONSTRAINT country_continent
   FOREIGN KEY (continent_id) REFERENCES dim_continent_sf(continent_id);
   
-- Output updated table
SELECT * FROM dim_country_sf;


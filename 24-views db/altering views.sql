-- Create a view called top_artists_2017 with artist from artist_title.
-- To only return the highest scoring artists of 2017, join the views top_15_2017 and artist_title on reviewid.
-- Output top_artists_2017.
-- Create a view with the top artists in 2017
CREATE VIEW top_artists_2017 AS
-- with only one column holding the artist field
SELECT artists.artist FROM artists
INNER JOIN top_15_2017
ON top_15_2017.reviewid = artists.reviewid;

-- Output the new view
SELECT * FROM top_artists_2017;



-- Revoke all database users' update and insert privileges on the long_reviews view.
-- Grant the editor user update and insert privileges on the long_reviews view.
-- Revoke everyone's update and insert privileges
REVOKE update, insert ON long_reviews FROM public; 

-- Grant the editor update and insert privileges
GRANT update, insert ON long_reviews TO editor; 




-- Use CREATE OR REPLACE to redefine the artist_title view.
-- Respecting artist_title's original columns of reviewid, title, and artist, add a label column from the labels table.
-- Join the labels table using the reviewid field.
-- Redefine the artist_title view to have a label column
CREATE OR REPLACE VIEW artist_title AS
SELECT reviews.reviewid, reviews.title, artists.artist, labels.label
FROM reviews
INNER JOIN artists
ON artists.reviewid = reviews.reviewid
INNER JOIN labels
ON labels.reviewid = reviews.reviewid;

SELECT * FROM artist_title;





-- Create a materialized view called genre_count that holds the number of reviews for each genre.
-- Refresh genre_count so that the view is up-to-date.
-- Create a materialized view called genre_count 
CREATE MATERIALIZED VIEW genre_count AS
SELECT genre, COUNT(*) 
FROM genres
GROUP BY genre;

INSERT INTO genres
VALUES (50000, 'classical');

-- Refresh genre_count
REFRESH MATERIALIZED VIEW genre_count;

SELECT * FROM genre_count;
-- Query the information schema to get views.
-- Exclude system views in the results.
-- Get all non-systems views
SELECT * FROM information_schema.views
WHERE table_schema not in ('pg_catalog', 'information_schema');


-- Create a view called high_scores that holds reviews with scores above a 9.
-- Count the number of records in high_scores that are self-released in the label field of the labels table.
-- Create a view for reviews with a score above 9
CREATE VIEW high_scores AS
SELECT * FROM REVIEWS
WHERE score > 9;

-- Count the number of self-released works in high_scores
SELECT COUNT(*) FROM high_scores
INNER JOIN labels ON high_scores.reviewid = labels.reviewid
WHERE  label= 'self-released';





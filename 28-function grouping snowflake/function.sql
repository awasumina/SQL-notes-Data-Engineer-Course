-- Standardize the status entries in the uber_request_data table. Convert all entries in the status column to lowercase.
-- Convert status to lowercase

SELECT lower(status) FROM uber_request_data



-- Convert all entries in the pickup_point column to uppercase.
-- Convert pickup_point to uppercase

SELECT upper(pickup_point) FROM uber_request_data


-- Complete the CONCAT function to combine the pickup_point and status with the given comments.
-- Complete the CONCAT function for columns pickup_point and status

SELECT CONCAT('Trip from ', pickup_point, ' was completed with status: ', status) AS trip_comment
FROM uber_request_data






-- Select the current date, current time
select current_date,current_time



-- Select the current date, current time
-- Concatenate and convert it to TIMESTAMP
SELECT concat(CURRENT_DATE, ' ', CURRENT_TIME):: TIMESTAMP



-- Extract month from the concatenated timestamp and alias as concat_month
-- Filter records from uber_request_data where request_timestamp's month is greater or equal than concat_month.
-- Select the current date, current time
-- Concatenate and convert it to TIMESTAMP
SELECT *,
-- Extract month and alias to concat_month
	extract(month FROM CONCAT(CURRENT_DATE, ' ', CURRENT_TIME)::TIMESTAMP) AS concat_month
-- Use table uber_request_data where request_timestamp's month is greater than or equal to concat_month
FROM uber_request_data
WHERE EXTRACT(month FROM request_timestamp) >= concat_month
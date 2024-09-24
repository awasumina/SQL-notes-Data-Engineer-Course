-- What Is the CAST Function In Snowflake?
-- The `CAST` function in Snowflake is used to convert data from one type to another. The syntax for the `CAST` function is as follows:
-- CAST(expression AS target_data_type)

-- In this syntax, `expression` is the data or column name you want to convert, and `target_data_type` specifies the desired data type to which you want to convert the expression.








-- Select and convert the request_id column from uber_request_data table to VARCHAR using the CAST method aliasing it to request_id_string.
--Convert request_timestamp to DATE using the TO_DATE function aliasing it as request_date.
-- Convert the drop_timestamp column to TIME using the :: operator, and alias it to drop_time.
-- Filter the records where request_date is greater than '2016-06-01' and drop_time is less than '6 AM'.


-- Convert request_id to VARCHAR using CAST method and alias to request_id_string
SELECT CAST(request_id AS VARCHAR) AS request_id_string, 
-- Convert request_timestamp to DATE using TO_DATE and alias as request_date
	   TO_DATE(request_timestamp) AS request_date,
-- Convert drop_timestamp column to TIME using :: operator and alias to drop_time
       drop_timestamp::TIME as drop_time
FROM uber_request_data
-- Filter the records where request_date is greater than '2016-06-01' and drop_time is less than 6 AM.
WHERE request_date>'2016-06-01' and drop_time< '06:00:00'

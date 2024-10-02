-- Create a CTE named dogs_allowed.
-- Filter businesses where the DogsAllowed attribute in the attributes column, when cast to STRING, is True.

-- Create CTE dogs_allowed.
WITH dogs_allowed AS (
  SELECT * 
  FROM yelp_business_data
  WHERE attributes:DogsAllowed::STRING  NOT ILIKE '%None%'
  -- Filter data where DogsAllowed is True.
  AND attributes:DogsAllowed::STRING = 'True' 
)

SELECT
	business_id, name
FROM dogs_allowed



-- From second CTE tourist_places, convert the Ambience attribute in the attributes columns into valid JSON using PARSE_JSON.
-- From the valid parsed JSON, fetch the touristy attribute and check if it is true when cast to BOOLEAN.
WITH dogs_allowed AS (
  SELECT * 
  FROM yelp_business_data
  WHERE attributes:DogsAllowed::STRING  NOT ILIKE '%None%'
  AND attributes:DogsAllowed::STRING = 'True' 
)

, touristy_places AS (
  SELECT *
  FROM yelp_business_data
  WHERE attributes:Ambience NOT ILIKE '%None%'
    AND attributes:Ambience IS NOT NULL
    AND attributes:Ambience NOT ILIKE '%u\'%'
    -- Convert Ambience attribute in the attributes columns into valid JSON using PARSE_JSON.
    -- From Valid JSON, fetch the touristy attribute and check if it is true when casted to BOOLEAN.
    AND PARSE_JSON(attributes:Ambience):touristy::BOOLEAN = true
)

SELECT
	d.business_id,
    d.name
FROM dogs_allowed d
JOIN touristy_places t
	ON d.business_id = t.business_id


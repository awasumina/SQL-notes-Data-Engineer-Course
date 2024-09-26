-- Complete the query to find the max_quantity from the LATERAL query.
-- Join the appropriate tables.
-- Use LATERAL join to calculate max_quantity and complete the subquery to find max of quantity.
-- Filter the subquery on pizza_type_id referencing outer pizza_type table.

SELECT pt.name, 
	   pt.category, 
       o.order_date,
       -- Get max quantity from lateral query
       x.max_quantity
FROM pizzas AS pz
JOIN pizza_type AS pt ON pz.pizza_type_id = pt.pizza_type_id
JOIN order_details AS od ON pz.pizza_id = od.pizza_id
-- Join with orders table
JOIN orders AS o ON od.order_id = o.order_id,    
LATERAL (
    -- Select max of order_details quantity
    SELECT MAX(od2.quantity) AS max_quantity
    FROM order_details AS od2
    -- Join with pizzas table
    JOIN pizzas AS pz2 
        ON od2.pizza_id = pz2.pizza_id
    -- Filtering condition for the subquery
    WHERE pz2.pizza_type_id = pz.pizza_type_id
) AS x
WHERE od.quantity = x.max_quantity
GROUP BY pt.name, pt.category, o.order_date, x.max_quantity
ORDER BY pt.name;
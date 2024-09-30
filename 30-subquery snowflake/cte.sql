-- Create a CTE named most_ordered and limit the results to one.
-- Create another CTE, called cheapest_pizza and filter for the cheapest pizza using a subquery to find the minimum price.
-- Complete the query to select pizza_id and total_qty aliased as metric from most_ordered CTE.
-- Include pizza_id and price aliased as metric from cheapest_pizza CTE. Note, maintain order of the columns.


-- Create a CTE named most_ordered and limit the results 
with most_ordered as  (
    SELECT pizza_id, SUM(quantity) AS total_qty 
    FROM order_details GROUP BY pizza_id ORDER BY total_qty DESC
    limit 1
)
-- Create CTE cheapest_pizza where price is equals to min price from pizzas table
,  cheapest_pizza as  (
    SELECT pizza_id, price
    FROM pizzas 
    WHERE price = (SELECT min(price) FROM pizzas)
    LIMIT 1
)
-- Select pizza_id and total_qty aliased as metric from first cte most_ordered
SELECT pizza_id, 'Most Ordered' AS Description, total_qty as metric
FROM most_ordered
UNION ALL
-- Select pizza_id and price aliased as metric from second cte cheapest_pizza
SELECT pizza_id, 'Cheapest' AS Description, price as metric
FROM cheapest_pizza
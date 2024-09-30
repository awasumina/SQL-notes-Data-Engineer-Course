-- Complete the JOIN clauses to join the pizzas, and order_details tables appropriately.
-- Use the GROUP BY clause to group the results by name and category from the pizza_type table.
-- Fill in the subquery to find the AVG of total_quantity.
-- Order the results by total_quantity in ascending order.

SELECT 
    pt.name, 
    pt.category, 
    SUM(od.quantity) AS total_quantity
FROM pizza_type AS pt
-- Join pizzas and order_details table
join pizzas AS pz
    ON pt.pizza_type_id = pz.pizza_type_id
join order_details AS od
    ON pz.pizza_id = od.pizza_id
-- Group by name and category
Group BY pt.name,pt.category
HAVING SUM(od.quantity) < (
    -- Calculate AVG of total_quantity 
    SELECT avg(total_quantity)
    FROM (
        SELECT SUM(od2.quantity) AS total_quantity
        FROM pizzas AS pz2
        JOIN order_details AS od2
            ON pz2.pizza_id = od2.pizza_id
        GROUP BY pz2.pizza_type_id
    ) AS sub
)
-- Order  by total_quantity in ascending order
order by total_quantity desc
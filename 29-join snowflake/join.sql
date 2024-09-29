-- Calculate total_revenue based on SUM of price * quantity; taking price from p (pizzas) and quantity from od (order_details) table.
-- NATURAL JOIN the pizzas and pizza_type tables.
-- GROUP the records by category from pt (pizza_type) table.
-- ORDER the details by total_revenue in descending order and LIMIT to 1 to fetch only the top revenue pizza.
      
SELECT 
    pt.category,
    SUM(p.price * od.quantity) AS total_revenue
FROM 
    order_details AS od  
    NATURAL JOIN pizzas AS p   
    NATURAL JOIN pizza_type AS pt
GROUP BY 
    pt.category
ORDER BY 
    total_revenue DESC
LIMIT 1;







-- Ensure that all orders from the orders table are included in the result, regardless of whether they have corresponding entries in the order_details table.
SELECT COUNT(o.order_id) AS total_orders
FROM orders AS o
-- Use appropriate JOIN
left JOIN order_details AS od
ON o.order_id = od.order_id



-- Calculate the total revenue using price column from pizzas table and quantity column of order_details table respectively.
-- Use appropriate JOIN to include all records from the pizzas table.
SELECT COUNT(o.order_id) AS total_orders,
        AVG(p.price) AS average_price,
        -- Calculate total revenue
        SUM(p.price * od.quantity) AS total_revenue	
FROM orders AS o
-- Use appropriate JOIN
LEFT JOIN order_details AS od
ON o.order_id = od.order_id
-- Use appropriate JOIN with pizzas table
right join pizzas As p
ON od.pizza_id = p.pizza_id




-- Select pizza name from pizza_type by performing a NATURAL JOIN with the pizza_type table.
SELECT COUNT(o.order_id) AS total_orders,
        AVG(p.price) AS average_price,
        -- Calculate total revenue
        SUM(p.price * od.quantity) AS total_revenue,
        -- Get the name from pizza_type table
		pt.name AS pizza_name
FROM orders AS o
-- Use appropriate JOIN
LEFT JOIN order_details AS od
ON o.order_id = od.order_id
-- Use appropriate JOIN with pizzas table
RIGHT JOIN pizzas p
ON od.pizza_id = p.pizza_id
-- NATURAL JOIN pizza_type table
NATURAL JOIN pizza_type pt
GROUP BY pt.name, pt.category
ORDER BY total_revenue desc, total_orders desc



-- Retrieve the order_id and pizza_id for orders where the total quantity of pizzas exceeds 3 using HAVING clause.
-- Group the orders using GROUP BY ALL
-- Arrange your results by order_id and then by total_quantity in a
-- Retrieve order_id, pizza_id and sum of quantity
SELECT order_id, pizza_id, sum(quantity) AS total_quantity
FROM order_details
-- GROUP the orders using group by all having total_quantity greater than 3
GROUP BY ALL      
having total_quantity>3
-- ORDER BY order id and total quantity in descending order
order by order_id , total_quantity desc

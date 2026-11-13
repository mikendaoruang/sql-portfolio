-- Project: dvdrental analysis (PostgreSQL)
-- Part 12: Marketing challenge 2 - which store sold the most?

-- Challenge brief:
--   - Which store sold the most (Store 1 or Store 2)?
--   - Show the total sales of each store (store_id).

-- Q1: What are the total sales of each store?
-- The store is the one where the rented film is stocked: inventory -> rental -> payment.

SELECT store_id AS store, SUM(p.amount) AS revenue
FROM inventory AS i 
INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
INNER JOIN payment AS p ON p.rental_id = r.rental_id
GROUP BY store_id
ORDER BY revenue DESC; 

-- Result: store 2 sold the most with 30,683.13, just ahead of store 1 with 30,628.91.

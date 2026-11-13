-- Project: dvdrental analysis (PostgreSQL)
-- Part 13: Marketing challenge 3 - rentals for action, comedy and animation films

-- Challenge brief:
--   - How many rentals are there for action films, comedies and animation films?
--   - Categories: Action, Comedy, Animation.
--   - Show the total number of rentals next to each of these 3 categories.
-- Path: category -> film_category -> film -> inventory -> rental.

-- Q1: How many rentals does each of the 3 categories have?
SELECT c.name AS category, COUNT(r.rental_id) AS number_of_rentals_per_category 
FROM category AS c 
INNER JOIN film_category AS fc ON fc.category_id = c.category_id
INNER JOIN film AS f ON f.film_id = fc.film_id
INNER JOIN inventory AS i ON i.film_id = f.film_id 
INNER JOIN rental AS r ON r.inventory_id = i.inventory_id 
WHERE c.name IN ('Action', 'Comedy', 'Animation')
GROUP BY c.name
ORDER BY number_of_rentals_per_category DESC;

-- Result: Animation is the most rented category with 1,166 rentals, then Action (1,112) and Comedy (941). Animation has 54 more rentals than Action and 225 more than Comedy.

-- Project: dvdrental analysis (PostgreSQL)
-- Part 11: Marketing challenge 1 - which films earn the most?

-- Q1: Which film earned the most, and how much did it earn?
-- film -> inventory -> rental: inventory links each film to its rentals.

SELECT title, COUNT(rental_id) AS number_of_rentals, COUNT(rental_id) * rental_rate AS revenue 
FROM film AS f 
INNER JOIN inventory AS i ON f.film_id = i.film_id
INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY title, rental_rate 
ORDER BY revenue DESC;

-- Result: 958 films. "Bucket Brotherhood" earned the most: 34 rentals for an estimated 169.66. Next: "Scalawag Duck" (32 rentals, 159.68), then four films tied at 154.69 
-- (31 rentals each): "Goodfellas Salute", "Wife Turn", "Apache Divine" and "Zorro Ark".

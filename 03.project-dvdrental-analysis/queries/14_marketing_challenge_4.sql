-- Project: dvdrental analysis (PostgreSQL)
-- Part 14: Marketing challenge 4 - promo offer for loyal customers

-- Challenge brief:
--   - Send a promotional offer to all customers who rented at least 40 films.
--   - Show the emails of the customers who rented more than 40 films, to contact them.

-- Q1: Which customers rented at least 40 films? (emails to contact)
SELECT email AS customer_email, COUNT(rental_id) AS number_of_rentals
FROM customer AS c 
INNER JOIN rental as r ON r.customer_id = c.customer_id
GROUP BY email
HAVING COUNT(rental_id) >= 40;

-- Result: 7 customers. The most active are eleanor.hunt@sakilacustomer.org (46 rentals) and karl.seal@sakilacustomer.org (45 rentals).
-- Two customers have exactly 40 rentals (wesley.bull and sue.peters): with > 40 instead of >= 40, only 5 customers would be selected.

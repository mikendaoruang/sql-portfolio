-- Project: dvdrental analysis (PostgreSQL)
-- Part 8: INNER JOIN (keeps only rows that match in both tables)

-- Q1: What are the payments of customer 7, with the customer's name and email?
SELECT customer.customer_id, first_name, last_name, email, amount, payment_date
FROM customer 
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE customer.customer_id = 7;
-- Result: 28 payments for Maria Miller (maria.miller@sakilacustomer.org), for example 0.99 on 2007-02-16 and 2.99 on 2007-02-18.

-- Q2: How many copies of each film does each store have?
SELECT store_id, title, COUNT(title) AS number_at_store
FROM inventory 
INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY store_id, title 
ORDER BY title;
-- Result: 1,521 rows (one per film and store).
-- Example: "Academy Dinosaur" has 4 copies in store 1 and 4 in store 2. "Ace Goldfinger" only appears for store 2 (3 copies): store 1 has none.


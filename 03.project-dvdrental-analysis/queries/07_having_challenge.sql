-- Project: dvdrental analysis (PostgreSQL)
-- Part 7: HAVING challenge
-- WHERE filters rows before grouping, HAVING filters groups after the calculation.

-- Q1: Which customers made more than 30 payments?
SELECT * FROM payment;

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) > 30;
-- Result: 67 customers. The most active are customer 148 (45 payments), customer 526 (42) and customer 144 (40).

-- Q2: Which ratings have an average rental duration above 5 days?
SELECT * FROM film;

SELECT rating, ROUND(AVG(rental_duration),2)
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;
-- Result: NC-17 (5.14), PG (5.08) and PG-13 (5.05).

-- Q3: Among payments handled by staff 2, which customers spent more than 110 in total?
SELECT * FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;
-- Result: customer 187 (110.81) and customer 148 (110.78).

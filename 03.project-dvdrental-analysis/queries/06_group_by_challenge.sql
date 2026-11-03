-- Project: dvdrental analysis (PostgreSQL)
-- Part 6: GROUP BY challenge

-- Q1: For each staff member, how many payments did they process and what is the total amount?
SELECT * FROM payment;

SELECT staff_id, COUNT(amount), SUM(amount)
FROM payment
GROUP BY staff_id;
-- Result: staff 1 = 7,292 payments for 30,252.12; staff 2 = 7,304 payments for 31,059.92. Both staff members are very close in activity; staff 2 is slightly ahead.

-- Q2: What is the average replacement cost for each rating?
SELECT * FROM film;

SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating; 
-- Result: PG 18.96, R 20.23, PG-13 20.40, NC-17 20.14, G 20.12. PG is the cheapest to replace, PG-13 the most expensive.

-- Q3: Who are the 5 customers who spent the most?
SELECT * FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
-- Result: 
-- 1. customer 148: 211.55
-- 2. customer 526: 208.58
-- 3. customer 178: 194.61
-- 4. customer 137: 191.62
-- 5. customer 144: 189.60

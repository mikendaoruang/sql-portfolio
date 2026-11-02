-- Project: dvdrental analysis (PostgreSQL)
-- Part 4: filtering with IN

-- Q1: What does the rental table look like?
SELECT * FROM rental;

-- Q2: What are the rentals of customers 5, 9 and 10, from the latest return to the oldest?
SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id IN (5,9,10)
ORDER BY return_date DESC;
-- Result: 86 rentals. The first two rows have no return date (NULL): these films have not been returned yet. PostgreSQL puts NULL first with DESC.
-- Other Option : WHERE customer_id = 5 OR customer_id = 9 OR customer_id = 10

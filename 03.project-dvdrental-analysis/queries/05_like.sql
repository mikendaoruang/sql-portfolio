-- Project: dvdrental analysis (PostgreSQL)
-- Part 5: pattern search with LIKE
-- % = any number of characters, _ = exactly one character

-- Q1: Which customers have a first name starting with 'Jen'?
SELECT first_name
FROM customer
WHERE first_name LIKE 'Jen%';
-- Result: 3 customers: Jennifer, Jennie, Jenny.

-- Q2: Which customers contains 'er' in his first name 
SELECT first_name
FROM customer
WHERE first_name LIKE '%er_';
-- Result: 6 customers: Vera, Robert, Albert, Jeffery, Herbert, Gilbert.

-- Q3: How many actors have a last name starting with 'P'?
SELECT COUNT(last_name)
FROM actor 
WHERE last_name LIKE 'P%';
-- Result: 14 actors.

-- Q4: How many films have 'Truman' in their title?
SELECT COUNT(title)
FROM film 
WHERE title LIKE '%Truman%';
-- Result: 5 films.

-- Q5: Among customers whose first name starts with 'E' and whose address_id is below 500, which one has the highest customer_id?
SELECT first_name, last_name
FROM customer 
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
-- Result: Eddie Tomlin.

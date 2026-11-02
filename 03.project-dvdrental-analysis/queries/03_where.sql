-- Project: dvdrental analysis (PostgreSQL)
-- Part 3: filtering with WHERE

-- Explore the tables used below
SELECT * FROM customer;
SELECT * FROM address;

-- Q1: A new film may interest customer Gloria Cook. What is her email?
SELECT email
FROM customer
WHERE first_name = 'Gloria' AND last_name = 'Cook';
-- Result: gloria.cook@sakilacustomer.org

-- Q2: What is the description of the film 'Texas Watch'?
SELECT description 
FROM film
WHERE title='Texas Watch';
-- Result: A Awe-Inspiring Yarn of a Student And a Teacher who must Fight a Teacher in An Abandoned Amusement Park

-- Q3: A customer is late returning a film. Their address is '270 Toulon Boulevard'. What is their phone number?
SELECT phone
FROM address 
WHERE address='270 Toulon Boulevard';
-- Result: 407752414682

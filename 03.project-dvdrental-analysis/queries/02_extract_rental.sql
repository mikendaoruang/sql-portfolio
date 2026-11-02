-- Project: dvdrental analysis (PostgreSQL)
-- Part 2: dates with EXTRACT, on the rental table

-- Q1: What does the rental table look like?
SELECT * FROM rental;

-- Q2: How many rentals per day?
SELECT rental_date, COUNT(rental_id) AS Total_rentals
FROM rental
GROUP BY rental_date
ORDER BY Total_rentals DESC;

-- Q3: For each month, how many rentals, how many different customers, and how many rentals per customer on average?
SELECT EXTRACT(YEAR FROM rental_date), EXTRACT(MONTH FROM rental_date), 
COUNT(rental_id) AS Total_rentals, COUNT(DISTINCT customer_id) AS unique_rental,
1.0 * COUNT(rental_id)/COUNT(DISTINCT customer_id) AS average
FROM rental
GROUP BY 1,2;

-- Result: July 2005 is the busiest month (6,709 rentals, 11.2 per customer).
-- February 2006 has only 182 rentals, so the data is probably incomplete for that month.
